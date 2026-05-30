<#
.SYNOPSIS
    Deterministic NP Retail Knowledge Base updater.
    Parses AL source files from the npcore-partners repository and generates/updates
    api.md reference files, _object-registry.md entries, and 00-INDEX.md tag matrices.

.DESCRIPTION
    This script handles all structural/data parts of the NP Retail KB without an LLM.
    It cannot generate overview.md concept files (those need business context).

    Two modes:
      -init   : Process ALL configured modules (initial full build)
      -update : Process only modules changed since last tracked commit

.PARAMETER ConfigPath
    Path to the KB config JSON (default: knowledge/np-retail/.kb-config.json)

.PARAMETER NpRepoPath
    Path to a local clone of navipartner/npcore-partners

.PARAMETER Mode
    "init" for full build or "update" for incremental (default: update)

.PARAMETER ModuleFilter
    Optional: process only specific modules by kbDir (comma-separated)

.PARAMETER BuildReferenceIndex
    Switch: build cross-module reference index for _object-registry.md (slower)

.PARAMETER SkipTagRegen
    Switch: skip the regen-tags.ps1 call at the end

.EXAMPLE
    .\scripts\np-retail-kb-update.ps1 -NpRepoPath ..\npcore-partners -Mode update

.EXAMPLE
    .\scripts\np-retail-kb-update.ps1 -NpRepoPath ..\npcore-partners -Mode init
#>

param(
    [string]$ConfigPath = "",
    [string]$NpRepoPath = "",
    [ValidateSet("init", "update")]
    [string]$Mode = "update",
    [string]$ModuleFilter = "",
    [switch]$BuildReferenceIndex,
    [switch]$SkipTagRegen
)

# ---------- Path resolution ----------

$scriptDir = Split-Path -Parent $PSCommandPath
$repoRoot = Split-Path -Parent $scriptDir

if (-not $ConfigPath) {
    $ConfigPath = Join-Path $repoRoot "knowledge/np-retail/.kb-config.json"
    $ConfigPath = (Resolve-Path $ConfigPath).Path
}

# ---------- Config loading ----------

$config = Get-Content -LiteralPath $ConfigPath -Raw -Encoding UTF8 | ConvertFrom-Json

$kbRoot = $config.kbRoot
if (-not [System.IO.Path]::IsPathRooted($kbRoot)) {
    $kbRoot = Join-Path $repoRoot $kbRoot
}

$today = Get-Date -Format "yyyy-MM-dd"

$moduleFilterList = if ($ModuleFilter) { $ModuleFilter -split ',' | ForEach-Object { $_.Trim() } } else { @() }

# ---------- Change tracking ----------

function Read-LastCommit {
    param([string]$changeFile)
    if (-not (Test-Path $changeFile)) { return $null }
    $content = Get-Content -LiteralPath $changeFile -Raw -Encoding UTF8
    if ($content -match 'Last Processed Commit:\s*\**\s*(.+)') {
        $commit = $matches[1]
        if ($commit -eq '(none — initial scaffold)' -or $commit -eq '(initial build — set on first update)') { return $null }
        return $commit
    }
    return $null
}


# ---------- Git helpers ----------

function Get-RepoHead {
    param([string]$repoPath)
    $result = git -C $repoPath rev-parse HEAD 2>$null
    if ($LASTEXITCODE -ne 0) { throw "Failed to get HEAD from repo at $repoPath" }
    return $result.Trim()
}

function Get-ChangedModuleDirs {
    param([string]$repoPath, [string]$lastCommit, [string]$sourcePrefix)
    if (-not $lastCommit) { return $null }  # null means all modules

    $output = git -C $repoPath diff --name-only "$lastCommit..HEAD" -- "$sourcePrefix/" 2>$null
    if ($LASTEXITCODE -ne 0) { throw "git diff failed" }
    if (-not $output) { return @() }  # no changes

    $dirs = @{}
    $output -split "`n" | ForEach-Object {
        $line = $_.Trim()
        if ($line -match "^$([regex]::Escape($sourcePrefix))/([^/]+)") {
            $dirs[$matches[2]] = $true
        }
    }
    return $dirs.Keys | ForEach-Object { $_ }
}


# ---------- AL comment stripper ----------

function Strip-ALComments {
    param([string]$text)
    # Remove block comments
    $text = [regex]::Replace($text, '/\*.*?\*/', '', 'Singleline')
    $text = $text -replace "`r", ""
    # Remove line comments - careful handling of strings
    $lines = $text -split "`n"
    $result = @()
    foreach ($line in $lines) {
        $inString = $false
        $commentPos = -1
        for ($i = 0; $i -lt $line.Length; $i++) {
            if ($line[$i] -eq "'") { $inString = -not $inString }
            if (-not $inString -and $i -lt $line.Length - 1 -and $line[$i] -eq '/' -and $line[$i+1] -eq '/') {
                $commentPos = $i
                break
            }
        }
        if ($commentPos -ge 0) {
            $result += $line.Substring(0, $commentPos)
        } else {
            $result += $line
        }
    }
    return ($result -join "`n")
}


# ---------- Brace-block extraction ----------

function Get-BraceBlock {
    param([string]$text, [int]$startIndex)
    $braceStart = $text.IndexOf('{', $startIndex)
    if ($braceStart -eq -1) { return $null, -1 }

    $depth = 0
    for ($i = $braceStart; $i -lt $text.Length; $i++) {
        $c = $text[$i]
        if ($c -eq '{') { $depth++ }
        elseif ($c -eq '}') {
            $depth--
            if ($depth -eq 0) {
                return $text.Substring($braceStart, $i - $braceStart + 1), $i + 1
            }
        }
    }
    return $null, -1
}


# ---------- AL Object Parser ----------

function Get-ALObjects {
    param([string]$modulePath)

    $result = @{
        Tables         = [System.Collections.ArrayList]::new()
        Codeunits      = [System.Collections.ArrayList]::new()
        Pages          = [System.Collections.ArrayList]::new()
        Enums          = [System.Collections.ArrayList]::new()
        Interfaces     = [System.Collections.ArrayList]::new()
        Queries        = [System.Collections.ArrayList]::new()
        Reports        = [System.Collections.ArrayList]::new()
        XmlPorts       = [System.Collections.ArrayList]::new()
        TableExtensions = [System.Collections.ArrayList]::new()
        PageExtensions  = [System.Collections.ArrayList]::new()
        EnumExtensions  = [System.Collections.ArrayList]::new()
        PermissionSets  = [System.Collections.ArrayList]::new()
        SourceFiles     = [System.Collections.ArrayList]::new()
    }

    if (-not (Test-Path -LiteralPath $modulePath)) { return $result }

    $alFiles = Get-ChildItem -LiteralPath $modulePath -Recurse -Filter "*.al" | Sort-Object Name
    if (-not $alFiles) { return $result }

    foreach ($file in $alFiles) {
        [void]$result.SourceFiles.Add($file.FullName)
        $raw = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
        if (-not $raw) { continue }
        $cleaned = Strip-ALComments $raw

        $lines = $cleaned -split "`n"
        $depth = 0
        $currentType = $null
        $currentId = $null
        $currentName = $null
        $currentExtends = $null
        $currentBlock = ""
        $inObject = $false
        $awaitingBrace = $false

        foreach ($line in $lines) {
            $trimmed = $line.Trim()

            if ($inObject) {
                foreach ($c in $line.ToCharArray()) {
                    if ($c -eq '{') { $depth++ }
                    elseif ($c -eq '}') { $depth-- }
                }
                $currentBlock += $line + "`n"

                if ($depth -eq 0) {
                    $inObject = $false
                    Add-ALObject $result $currentType $currentId $currentName $currentExtends $currentBlock
                    $currentType = $null; $currentId = $null; $currentName = $null; $currentExtends = $null; $currentBlock = ""
                }
                continue
            }

            if ($awaitingBrace) {
                $bracePos = $line.IndexOf('{')
                if ($bracePos -ge 0) {
                    $awaitingBrace = $false
                    $inObject = $true
                    $depth = 1
                    $currentBlock = $line.Substring($bracePos + 1) + "`n"
                    foreach ($c in $line.Substring($bracePos + 1).ToCharArray()) {
                        if ($c -eq '{') { $depth++ }
                        elseif ($c -eq '}') { $depth-- }
                    }
                    if ($depth -eq 0) {
                        $inObject = $false
                        Add-ALObject $result $currentType $currentId $currentName $currentExtends $currentBlock
                        $currentType = $null; $currentId = $null; $currentName = $null; $currentExtends = $null; $currentBlock = ""
                    }
                }
                continue
            }

            # Check for object declaration
            $declMatch = [regex]::Match($line, '^\s*(table|codeunit|page|enum|interface|query|report|xmlport|tableextension|pageextension|enumextension|permissionset)\s+')
            if ($declMatch.Success) {
                $currentType = $declMatch.Groups[1].Value.Trim()
                $rest = $line.Substring($declMatch.Index + $declMatch.Length).Trim()

                # Extract ID or quoted name
                $idMatch = [regex]::Match($rest, '^(\d+|"[^"]+"|\S+?)(?:\s|$)')
                if ($idMatch.Success) {
                    $idVal = $idMatch.Groups[1].Value
                    if ($idVal -match '^(\d+)$') {
                        $currentId = $matches[1]
                        $afterId = $rest.Substring($idMatch.Length).Trim()
                        $nameMatch = [regex]::Match($afterId, '^("[^"]+"|\S+?)(?:\s|$)')
                        if ($nameMatch.Success) {
                            $currentName = $nameMatch.Groups[1].Value.Trim('"')
                        } else {
                            $currentName = ""
                        }
                        $afterName = if ($nameMatch.Success) { $afterId.Substring($nameMatch.Length).Trim() } else { $afterId }
                        $extMatch = [regex]::Match($afterName, 'extends\s+("[^"]+"|\S+?)(?:\s|$)')
                        if ($extMatch.Success) { $currentExtends = $extMatch.Groups[1].Value.Trim('"') }
                        else { $currentExtends = $null }
                    } else {
                        $currentId = $null
                        $currentName = $idVal.Trim('"')
                        $afterName = $rest.Substring($idMatch.Length).Trim()
                        $extMatch = [regex]::Match($afterName, 'extends\s+("[^"]+"|\S+?)(?:\s|$)')
                        if ($extMatch.Success) { $currentExtends = $extMatch.Groups[1].Value.Trim('"') }
                        else { $currentExtends = $null }
                    }
                }

                # Check for opening brace on this line
                $bracePos = $line.IndexOf('{')
                if ($bracePos -ge 0) {
                    $inObject = $true
                    $depth = 1
                    $currentBlock = $line.Substring($bracePos + 1) + "`n"
                    foreach ($c in $line.Substring($bracePos + 1).ToCharArray()) {
                        if ($c -eq '{') { $depth++ }
                        elseif ($c -eq '}') { $depth-- }
                    }
                    if ($depth -eq 0) {
                        $inObject = $false
                        Add-ALObject $result $currentType $currentId $currentName $currentExtends $currentBlock
                        $currentType = $null; $currentId = $null; $currentName = $null; $currentExtends = $null; $currentBlock = ""
                    }
                } else {
                    $awaitingBrace = $true
                }
                continue
            }
        }
    }

    return $result
}

function Add-ALObject {
    param($result, $type, $id, $name, $extends, $block)

    $caption = ""
    if ($block -match "Caption\s*=\s*'([^']*)'") { $caption = $matches[1] }

    $obj = @{
        Id = if ($id) { $id } else { "—" }
        Name = if ($name) { $name } else { "—" }
        Caption = $caption
        Extends = if ($extends) { $extends } else { $null }
    }

    # Type-specific extraction
    switch ($type) {
        "table" {
            # Extract key fields
            $keyFields = ""
            if ($block -match 'key\([^;]*;\s*([^)]+)\)') { $keyFields = $matches[1] }
            $obj.KeyFields = $keyFields

            # Extract fields
            $fields = [System.Collections.ArrayList]::new()
            $fieldMatches = [regex]::Matches($block, 'field\((\d+);\s*("[^"]+"|\S+)\s*;')
            foreach ($fm in $fieldMatches) {
                $fn = $fm.Groups[2].Value.Trim('"')
                $fc = ""
                $fieldDeclEnd = $block.IndexOf(')', $fm.Index + $fm.Length)
                if ($fieldDeclEnd -gt 0) {
                    $fieldBlockStart = $block.IndexOf('{', $fieldDeclEnd)
                    $fieldBlockEnd = $block.IndexOf('}', $fieldBlockStart)
                    if ($fieldBlockStart -gt 0 -and $fieldBlockEnd -gt $fieldBlockStart) {
                        $fieldSection = $block.Substring($fieldBlockStart, $fieldBlockEnd - $fieldBlockStart + 1)
                        if ($fieldSection -match "Caption\s*=\s*'([^']*)'") { $fc = $matches[1] }
                    }
                }
                [void]$fields.Add(@{ Name = $fn; Caption = $fc })
            }
            $obj.Fields = $fields

            [void]$result.Tables.Add($obj)
        }
        "codeunit" {
            # Extract procedures
            $procs = [System.Collections.ArrayList]::new()
            $procMatches = [regex]::Matches($block, 'procedure\s+(\w+)\s*\(')
            foreach ($pm in $procMatches) { [void]$procs.Add($pm.Groups[1].Value) }
            $obj.Procedures = $procs

            # Extract events
            $events = [System.Collections.ArrayList]::new()
            $eventMatches = [regex]::Matches($block, '\[(?:IntegrationEvent|BusinessEvent)\([^)]*\)\]\s*\n\s*(?:internal\s+)?procedure\s+(\w+)')
            foreach ($em in $eventMatches) { [void]$events.Add($em.Groups[1].Value) }
            $obj.Events = $events

            [void]$result.Codeunits.Add($obj)
        }
        "page" {
            # Extract source table
            $srcTable = ""
            if ($block -match 'SourceTable\s*=\s*("[^"]+"|[^;\s]+)') { $srcTable = $matches[1].Trim('"') }
            $obj.SourceTable = $srcTable

            # Determine page type
            $pageType = "—"
            if ($block -match '^\s*(CardPart|ListPart|Card|List|RoleCenter|Worksheet|WorksheetLine|ConfirmationDialog|StandardDialog|HeadlinePart|ChartPart|ControlAddIn|API)') { $pageType = $matches[1] }

            [void]$result.Pages.Add($obj)
        }
        "enum" {
            # Extract values
            $values = [System.Collections.ArrayList]::new()
            $valMatches = [regex]::Matches($block, 'value\((\d+);\s*("[^"]+"|\S+)\)\s*\{')
            foreach ($vm in $valMatches) {
                $vName = $vm.Groups[2].Value.Trim('"')
                $vId = $vm.Groups[1].Value
                # Find caption for this value
                $vEnd = $block.IndexOf('}', $vm.Index + $vm.Length)
                $vSection = if ($vEnd -gt 0) { $block.Substring($vm.Index + $vm.Length, $vEnd - $vm.Index - $vm.Length) } else { "" }
                $vCap = ""
                if ($vSection -match "Caption\s*=\s*'([^']*)'") { $vCap = $matches[1] }
                [void]$values.Add(@{ Id = $vId; Name = $vName; Caption = $vCap })
            }
            $obj.Values = $values
            [void]$result.Enums.Add($obj)
        }
        "interface" {
            $procs = [System.Collections.ArrayList]::new()
            $procMatches = [regex]::Matches($block, 'procedure\s+(\w+)\s*\(')
            foreach ($pm in $procMatches) { [void]$procs.Add($pm.Groups[1].Value) }
            $obj.Procedures = $procs
            [void]$result.Interfaces.Add($obj)
        }
        "query" {
            [void]$result.Queries.Add($obj)
        }
        "report" {
            [void]$result.Reports.Add($obj)
        }
        "xmlport" {
            [void]$result.XmlPorts.Add($obj)
        }
        "tableextension" {
            [void]$result.TableExtensions.Add($obj)
        }
        "pageextension" {
            $obj.SourceTable = "" # page extensions don't have source table
            [void]$result.PageExtensions.Add($obj)
        }
        "enumextension" {
            $values = [System.Collections.ArrayList]::new()
            $valMatches = [regex]::Matches($block, 'value\((\d+);\s*("[^"]+"|\S+)\)\s*\{')
            foreach ($vm in $valMatches) {
                $vCap = ""
                $vSection = $block.Substring($vm.Index + $vm.Length)
                if ($vSection -match "Caption\s*=\s*'([^']*)'") { $vCap = $matches[1] }
                [void]$values.Add(@{ Id = $vm.Groups[1].Value; Name = $vm.Groups[2].Value.Trim('"'); Caption = $vCap })
            }
            $obj.Values = $values
            [void]$result.EnumExtensions.Add($obj)
        }
        "permissionset" {
            [void]$result.PermissionSets.Add($obj)
        }
        default {
            Write-Warning "Unknown object type: $type in $($obj.Name)"
        }
    }
}


# ---------- MD generation ----------

function New-ApiMdFrontmatter {
    param($moduleConfig, $objects)
    $tags = @($moduleConfig.tags)
    $tags += "np-retail"
    if ($objects.Tables.Count -gt 0 -and -not ($tags -contains "tables")) { $tags += "tables" }
    if ($objects.Codeunits.Count -gt 0 -and -not ($tags -contains "codeunits")) { $tags += "codeunits" }
    if ($objects.Pages.Count -gt 0 -and -not ($tags -contains "pages")) { $tags += "pages" }
    if ($objects.Enums.Count -gt 0 -and -not ($tags -contains "enums")) { $tags += "enums" }
    if ($objects.Queries.Count -gt 0 -and -not ($tags -contains "queries")) { $tags += "queries" }
    if ($objects.Interfaces.Count -gt 0 -and -not ($tags -contains "interfaces")) { $tags += "interfaces" }
    if ($objects.Reports.Count -gt 0 -and -not ($tags -contains "reports")) { $tags += "reports" }
    if ($objects.XmlPorts.Count -gt 0 -and -not ($tags -contains "xmlports")) { $tags += "xmlports" }
    if ($objects.TableExtensions.Count -gt 0 -and -not ($tags -contains "tableextensions")) { $tags += "tableextensions" }
    if ($objects.PageExtensions.Count -gt 0 -and -not ($tags -contains "pageextensions")) { $tags += "pageextensions" }
    if ($objects.EnumExtensions.Count -gt 0 -and -not ($tags -contains "enumextensions")) { $tags += "enumextensions" }
    if ($objects.PermissionSets.Count -gt 0 -and -not ($tags -contains "permissionsets")) { $tags += "permissionsets" }

    $rel = "  - $($moduleConfig.kbDir)/overview.md"
    $tagStr = ($tags | ForEach-Object { $_.Replace("'", "''") }) -join ", "
    $sfLines = ""
    if ($objects.SourceFiles.Count -gt 0) {
        $repoPrefix = ($config.repo.url -replace '\.git$', '') + "/blob/" + $config.repo.branch + "/" + $config.repo.sourcePrefix + "/"
        $sourceDirName = $moduleConfig.sourceDir
        $sfLines = ($objects.SourceFiles | ForEach-Object {
            $relPath = $_.Substring(($NpRepoPath.Length)).TrimStart('/').Replace('\', '/')
            "  - $relPath"
        }) -join "`n"
        $sfLines = "source_files:`n$sfLines"
    }

    return @"
---
type: reference
tags: [$tagStr]
relates:
$rel
updated: $today
$sfLines
---

# $(Get-ModuleDisplayName $moduleConfig) — API Reference

"@
}

function New-ObjectTable {
    param($title, $headers, $rows)
    if ($rows.Count -eq 0) { return "" }

    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("## $title")
    [void]$sb.AppendLine("")
    $headerLine = "| " + ($headers -join " | ") + " |"
    [void]$sb.AppendLine($headerLine)
    $sepLine = "| " + (($headers | ForEach-Object { "---" }) -join " | ") + " |"
    [void]$sb.AppendLine($sepLine)
    foreach ($row in $rows) {
        [void]$sb.AppendLine("| $row |")
    }
    [void]$sb.AppendLine("")
    return $sb.ToString()
}

function Format-TableRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = $obj.Caption -replace "'", "&apos;"
    $caption = $caption -replace "\|", "/"
    $keyFields = if ($obj.KeyFields) { $obj.KeyFields -replace "\|", ", " } else { "—" }
    return "$id | ""$($name)"" | $caption | $keyFields | —"
}

function Format-CodeunitRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    $procs = if ($obj.Procedures.Count -gt 0) { ($obj.Procedures | Select-Object -First 5) -join ", " } else { "—" }
    $evts = if ($obj.Events.Count -gt 0) { ($obj.Events | Select-Object -First 3) -join ", " } else { "—" }
    return "$id | ""$($name)"" | $caption | $procs | $evts"
}

function Format-PageRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    $src = if ($obj.SourceTable) { """$($obj.SourceTable)""" } else { "—" }
    return "$id | ""$($name)"" | $caption | $src | —"
}

function Format-EnumRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    $vals = if ($obj.Values.Count -gt 0) { ($obj.Values | ForEach-Object { "$($_.Name)" } | Select-Object -First 8) -join ", " } else { "—" }
    return "$id | ""$($name)"" | $caption | $vals"
}

function Format-InterfaceRow {
    param($obj)
    $name = $obj.Name
    $procs = if ($obj.Procedures.Count -gt 0) { ($obj.Procedures | Select-Object -First 5) -join ", " } else { "—" }
    return """$($name)"" | $procs"
}

function Format-SimpleRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    return "$id | ""$($name)"" | $caption | —"
}

function Format-ExtensionRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    $extends = if ($obj.Extends) { """$($obj.Extends)""" } else { "—" }
    return "$id | ""$($name)"" | $caption | $extends"
}

function Format-EnumExtRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    $extends = if ($obj.Extends) { """$($obj.Extends)""" } else { "—" }
    $vals = if ($obj.Values.Count -gt 0) { ($obj.Values | ForEach-Object { "$($_.Name)" } | Select-Object -First 8) -join ", " } else { "—" }
    return "$id | ""$($name)"" | $caption | $extends | $vals"
}

function Format-PermissionSetRow {
    param($obj)
    $id = $obj.Id
    $name = $obj.Name
    $caption = ($obj.Caption -replace "'", "&apos;") -replace "\|", "/"
    return "$id | ""$($name)"" | $caption"
}


# ---------- Registry helpers ----------

function New-RegistryEntry {
    param($objects, $moduleConfig)
    $name = Get-ModuleDisplayName $moduleConfig
    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine("## $name")

    # Defines
    $defines = @()
    if ($objects.Tables.Count -gt 0)    { $defines += "Tables[$(($objects.Tables | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.Codeunits.Count -gt 0) { $defines += "Codeunits[$(($objects.Codeunits | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.Pages.Count -gt 0)     { $defines += "Pages[$(($objects.Pages | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.Enums.Count -gt 0)     { $defines += "Enums[$(($objects.Enums | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.Interfaces.Count -gt 0) {
        $ifaceNames = $objects.Interfaces | ForEach-Object { "`"$($_.Name)`"" }
        $defines += "Interfaces[$($ifaceNames -join ', ')]"
    }
    if ($objects.Queries.Count -gt 0)   { $defines += "Queries[$(($objects.Queries | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.Reports.Count -gt 0)   { $defines += "Reports[$(($objects.Reports | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.XmlPorts.Count -gt 0)  { $defines += "XmlPorts[$(($objects.XmlPorts | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.TableExtensions.Count -gt 0){ $defines += "TableExtensions[$(($objects.TableExtensions | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.PageExtensions.Count -gt 0) { $defines += "PageExtensions[$(($objects.PageExtensions | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.EnumExtensions.Count -gt 0) { $defines += "EnumExtensions[$(($objects.EnumExtensions | ForEach-Object { $_.Id }) -join ', ')]" }
    if ($objects.PermissionSets.Count -gt 0) { $defines += "PermissionSets[$(($objects.PermissionSets | ForEach-Object { $_.Id }) -join ', ')]" }

    if ($defines.Count -gt 0) { [void]$sb.AppendLine("- Defines: $($defines -join ', ')") }
    else { [void]$sb.AppendLine("- Defines: —") }

    # Extends
    $extends = @()
    foreach ($te in $objects.TableExtensions) { if ($te.Extends) { $extends += "`"$($te.Extends)`"" } }
    foreach ($pe in $objects.PageExtensions)  { if ($pe.Extends) { $extends += "`"$($pe.Extends)`"" } }
    foreach ($ee in $objects.EnumExtensions)  { if ($ee.Extends) { $extends += "`"$($ee.Extends)`"" } }
    if ($extends.Count -gt 0) { [void]$sb.AppendLine("- Extends: $($extends -join ', ')") }
    else { [void]$sb.AppendLine("- Extends: —") }

    # References — hard to fully automate, leave as placeholder
    [void]$sb.AppendLine("- References: —")

    return $sb.ToString()
}

function Get-ModuleDisplayName {
    param($mc)
    $name = ($mc.kbDir -split '/')[-1]
    $parts = $name -split '-'
    $display = ($parts | ForEach-Object {
        if ($_ -eq 'and' -or $_ -eq 'of' -or $_ -eq 'the') { $_ }
        else {
            $f = $_.Substring(0,1).ToUpper()
            $r = $_.Substring(1)
            # Handle special prefix cases
            if ($_ -eq 'pos') { 'POS' }
            elseif ($_ -eq 'api') { 'API' }
            elseif ($_ -eq 'bc') { 'BC' }
            elseif ($_ -eq 'aad') { 'AAD' }
            elseif ($_ -eq 'kv') { 'KV' }
            elseif ($_ -eq 'xml') { 'XML' }
            elseif ($_ -eq 'url') { 'URL' }
            elseif ($_ -eq 'id') { 'ID' }
            elseif ($_ -eq 'ad') { 'AD' }
            else { "$f$r" }
        }
    }) -join ' '
    # Special overrides
    $overrides = @{
        'pos-core' = 'POS Core'
        'pos-payment' = 'POS Payment'
        'pos-action' = 'POS Action'
        'mpos' = 'MPOS'
        'mobile-emergency-pos' = 'Mobile Emergency POS'
        'np-designer' = 'NP Designer'
        'key-vault' = 'Key Vault'
        'base-url' = 'Base Url'
        'data-package' = 'Data Package'
        'member-module' = 'Member Module'
        'attraction-wallet' = 'Attraction Wallet'
        'external-pos-sale' = 'External POS Sale'
        'retail-item-journal' = 'Retail Item Journal'
        'job-queue' = 'Job Queue'
        'feature-flags' = 'Feature Flags'
        'feature-management' = 'Feature Management'
        'file-transfer' = 'File Transfer'
        'bc-health-check' = 'BC Health Check'
        'cloudflare-media' = 'Cloudflare Media'
        'cognitive-services' = 'Cognitive Services'
        'data-structures' = 'Data Structures'
        'azure-function-management' = 'Azure Function Management'
        'azure-ad-application-management' = 'Azure AD Application Management'
        'customer-phone-lookup' = 'Customer Phone Lookup'
        'description-control' = 'Description Control'
        'digital-notification' = 'Digital Notification'
        'digital-receipt' = 'Digital Receipt'
        'group-codes' = 'Group Codes'
        'rapid-start-base-data' = 'Rapid Start Base Data'
        'auxiliary-tables' = 'Auxiliary Tables'
        'application-area' = 'Application Area'
        'inventory-cost-adjmt' = 'Inventory Cost Adjmt'
        'item-addon' = 'Item Add On'
        'item-catalog' = 'Item Catalog'
        'item-category' = 'Item Category'
        'item-hierarchy' = 'Item Hierarchy'
        'item-reference' = 'Item Reference'
        'item-status' = 'Item Status'
        'item-worksheet' = 'Item Worksheet'
        'adyen-reconciliation' = 'Adyen Reconciliation'
        'btwentyfour-service' = 'BTwentyFour Service'
        'entria-integration' = 'Entria Integration'
        'magento-2' = 'Magento 2'
        'api-services' = 'API Services'
        'pos-costumer-input' = 'POS Costumer Input'
        'pos-cross-reference' = 'POS Cross Reference'
        'pos-data-source' = 'POS Data Source'
        'pos-inventory-set' = 'POS Inventory Set'
        'pos-item-availability' = 'POS Item Availability'
        'pos-parked-sale' = 'POS Parked Sale'
        'pos-payment-bin' = 'POS Payment Bin'
        'pos-payment-denomination' = 'POS Payment Denomination'
        'pos-resume-sale' = 'POS Resume Sale'
        'pos-sales-document' = 'POS Sales Document'
        'pos-tax-calculation' = 'POS Tax Calculation'
        'pos-tax-free' = 'POS Tax Free'
        'pos-background-tasks' = 'POS Background Tasks'
        'pos-input-box' = 'POS Input Box'
    }
    if ($overrides.ContainsKey($name)) { return $overrides[$name] }
    return $display
}


# ---------- 00-INDEX.md generation ----------

function Update-SubDomainIndexMd {
    param([string]$kbRoot, [string]$subDomain, $config)

    $subDomainDir = Join-Path $kbRoot $subDomain
    if (-not (Test-Path $subDomainDir)) { return }

    $sdConfig = $config.subDomains.$subDomain
    $tagCols = @($sdConfig.tagColumns)
    $caption = $sdConfig.caption

    # Walk all modules in this sub-domain
    $entries = @()
    $subDirs = Get-ChildItem -LiteralPath $subDomainDir -Directory | Sort-Object Name
    foreach ($dir in $subDirs) {
        $overviewFile = Join-Path $dir.FullName "overview.md"
        $apiFile = Join-Path $dir.FullName "api.md"

        $relPrefix = $dir.Name + "/"

        if (Test-Path $overviewFile) {
            # Determine tags for this file
            $ovTags = @("np-retail") + $tagCols
            $entries += New-IndexRow -relPath "$relPrefix$(Split-Path $overviewFile -Leaf)" -tags $ovTags -objectTypes @()
        }
        if (Test-Path $apiFile) {
            $apTags = @("np-retail") + $tagCols
            # Read api.md frontmatter for object type tags
            $apContent = Get-Content -LiteralPath $apiFile -Raw -Encoding UTF8
            $objTypes = @()
            if ($apContent -match 'tags:\s*\[([^\]]+)\]') {
                $allTags = $matches[1] -split ',\s*' | ForEach-Object { $_.Trim().Trim('"') }
                $possibleObjectTags = @('tables','codeunits','pages','events','enums','queries','interfaces','reports','xmlports','tableextensions','pageextensions','enumextensions','permissionsets')
                foreach ($pt in $possibleObjectTags) {
                    if ($allTags -contains $pt) { $objTypes += $pt }
                }
            }
            $entries += New-IndexRow -relPath "$relPrefix$(Split-Path $apiFile -Leaf)" -tags $apTags -objectTypes $objTypes
        }
    }

    if ($entries.Count -eq 0) { return }

    # Build the tag column set
    $allTagColNames = @("np-retail") + $tagCols
    $allObjectColNames = @('tables','codeunits','pages','events','enums','queries','interfaces','reports','xmlports','tableextensions','pageextensions','enumextensions','permissionsets')
    $usedTags = @()
    $usedObjTypes = @()
    foreach ($e in $entries) {
        foreach ($t in $e.tags) { if ($t -ne '' -and -not ($usedTags -contains $t)) { $usedTags += $t } }
        foreach ($o in $e.objectTypes) { if (-not ($usedObjTypes -contains $o)) { $usedObjTypes += $o } }
    }
    $colOrder = @()
    foreach ($tn in $allTagColNames) { if ($usedTags -contains $tn) { $colOrder += $tn } }
    foreach ($on in $allObjectColNames) { if ($usedObjTypes -contains $on) { $colOrder += $on } }

    # Build the matrix
    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine("# knowledge/np-retail/$subDomain — $caption")
    [void]$sb.AppendLine("")

    $fileColWidth = 50
    $colHeaders = @("File") + $colOrder
    $headerLine = "| " + (($colHeaders | ForEach-Object { "{0,-$([Math]::Max($_.Length, 5))}" -f $_ }) -join " | ") + " |"
    [void]$sb.AppendLine($headerLine)
    $sepLine = "| " + (($colHeaders | ForEach-Object { "-" * [Math]::Max($_.Length, 5) }) -join " | ") + " |"
    [void]$sb.AppendLine($sepLine)

    foreach ($entry in $entries) {
        $cells = @($entry.relPath)
        foreach ($col in $colOrder) {
            if ($entry.tags -contains $col) { $cells += "✓" }
            elseif ($entry.objectTypes -contains $col) { $cells += "✓" }
            else { $cells += "" }
        }
        $paddedCells = @()
        for ($i = 0; $i -lt $colHeaders.Count; $i++) {
            $w = [Math]::Max($colHeaders[$i].Length, 5)
            $paddedCells += ("{0,-$w}" -f $cells[$i])
        }
        [void]$sb.AppendLine("| " + ($paddedCells -join " | ") + " |")
    }

    [void]$sb.AppendLine("")

    $outPath = Join-Path $subDomainDir "00-INDEX.md"
    $utf8NoBom = [System.Text.UTF8Encoding]::new($false)
    [System.IO.File]::WriteAllText($outPath, $sb.ToString().Replace("`r`n", "`n"), $utf8NoBom)
    Write-Host "  Updated $subDomain/00-INDEX.md ($($entries.Count) entries)"
}

function New-IndexRow {
    param([string]$relPath, [string[]]$tags, [string[]]$objectTypes)
    return @{ relPath = $relPath; tags = $tags; objectTypes = $objectTypes }
}


# ---------- Update change-tracking.md ----------

function Update-ChangeTracking {
    param([string]$filePath, [string]$newCommit)
    if (-not (Test-Path $filePath)) {
        Write-Warning "change-tracking.md not found at $filePath"
        return
    }
    $content = Get-Content -LiteralPath $filePath -Raw -Encoding UTF8
    $content = $content -replace '(?<=Last Processed Commit:)(\**\s*)\S.*', "`$1$newCommit"
    $content = $content -replace '(?<=Last Processed Date:)(\**\s*)\S.*', "`$1$today"
    $content = $content -replace '(?<=Modules with pending updates:).*', " (none)"
    $utf8NoBom = [System.Text.UTF8Encoding]::new($false)
    [System.IO.File]::WriteAllText($filePath, $content.Replace("`r`n", "`n"), $utf8NoBom)
    Write-Host "  Updated change-tracking.md → commit $newCommit"
}


# ---------- Update _object-registry.md ----------

function Update-ObjectRegistry {
    param([string]$filePath, $allEntries)
    if (-not (Test-Path $filePath)) {
        Write-Warning "_object-registry.md not found at $filePath"
        return
    }
    $content = Get-Content -LiteralPath $filePath -Raw -Encoding UTF8

    # Parse existing entries into a lookup: ModuleName → { text, references }
    $existingSections = $content -split "`n(?=## )"
    $existingEntries = @{}
    $header = ""

    foreach ($section in $existingSections) {
        if ($section -match '^## (.+)') {
            $moduleName = $matches[1].Trim()
            $refLine = ""
            if ($section -match '(?m)^-\s*References:\s*(.+)') {
                $refVal = $matches[1].Trim()
                if ($refVal -ne '—') { $refLine = "- References: $refVal" }
            }
            $existingEntries[$moduleName] = @{ Text = $section.TrimEnd(); References = $refLine }
        } else {
            $header = $section.TrimEnd()
        }
    }

    # Determine which module names are in the new entry set
    $processedNames = @{}
    foreach ($entry in $allEntries) {
        if ($entry -match '^## (.+)') {
            $processedNames[$matches[1].Trim()] = $true
        }
    }

    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine($header)
    [void]$sb.AppendLine("")

    # Write new/updated entries
    foreach ($entry in $allEntries) {
        $merged = $entry.TrimEnd()
        if ($entry -match '^## (.+)') {
            $moduleName = $matches[1].Trim()
            if ($existingEntries.ContainsKey($moduleName) -and $existingEntries[$moduleName].References) {
                if ($merged -match '(?m)^-\s*References:\s*—') {
                    $merged = $merged -replace '(?m)^-\s*References:\s*—', $existingEntries[$moduleName].References
                }
            }
        }
        [void]$sb.AppendLine($merged)
        [void]$sb.AppendLine("")
    }

    # Preserve entries for modules that were NOT processed this run
    foreach ($section in $existingSections) {
        if ($section -match '^## (.+)') {
            $moduleName = $matches[1].Trim()
            if (-not $processedNames.ContainsKey($moduleName)) {
                [void]$sb.AppendLine($existingEntries[$moduleName].Text)
                [void]$sb.AppendLine("")
            }
        }
    }

    $newContent = $sb.ToString().TrimEnd() + "`n"

    $utf8NoBom = [System.Text.UTF8Encoding]::new($false)
    [System.IO.File]::WriteAllText($filePath, $newContent.Replace("`r`n", "`n"), $utf8NoBom)
    Write-Host "  Updated _object-registry.md ($($allEntries.Count) processed, $(($existingEntries.Count)) existing, merged)"
}


# ---------- Write api.md ----------

function Write-ApiMd {
    param([string]$outputPath, $objects, $moduleConfig)
    $dir = Split-Path $outputPath -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }

    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.Append((New-ApiMdFrontmatter -moduleConfig $moduleConfig -objects $objects))

    # Tables
    if ($objects.Tables.Count -gt 0) {
        $rows = $objects.Tables | ForEach-Object { Format-TableRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Tables" -headers @("ID", "Name", "Caption", "Key Fields", "Description") -rows $rows))
    }

    # Codeunits
    if ($objects.Codeunits.Count -gt 0) {
        $rows = $objects.Codeunits | ForEach-Object { Format-CodeunitRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Codeunits" -headers @("ID", "Name", "Caption", "Key Procedures", "Events Raised") -rows $rows))
    }

    # Pages
    if ($objects.Pages.Count -gt 0) {
        $rows = $objects.Pages | ForEach-Object { Format-PageRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Pages" -headers @("ID", "Name", "Caption", "Source Table", "Description") -rows $rows))
    }

    # Enums
    if ($objects.Enums.Count -gt 0) {
        $rows = $objects.Enums | ForEach-Object { Format-EnumRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Enums" -headers @("ID", "Name", "Caption", "Values") -rows $rows))
    }

    # Interfaces
    if ($objects.Interfaces.Count -gt 0) {
        $rows = $objects.Interfaces | ForEach-Object { Format-InterfaceRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Interfaces" -headers @("Name", "Procedures") -rows $rows))
    }

    # Queries
    if ($objects.Queries.Count -gt 0) {
        $rows = $objects.Queries | ForEach-Object { Format-SimpleRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Queries" -headers @("ID", "Name", "Caption", "Description") -rows $rows))
    }

    # Reports
    if ($objects.Reports.Count -gt 0) {
        $rows = $objects.Reports | ForEach-Object { Format-SimpleRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Reports" -headers @("ID", "Name", "Caption", "Description") -rows $rows))
    }

    # XmlPorts
    if ($objects.XmlPorts.Count -gt 0) {
        $rows = $objects.XmlPorts | ForEach-Object { Format-SimpleRow $_ }
        [void]$sb.Append((New-ObjectTable -title "XmlPorts" -headers @("ID", "Name", "Caption", "Description") -rows $rows))
    }

    # TableExtensions
    if ($objects.TableExtensions.Count -gt 0) {
        $rows = $objects.TableExtensions | ForEach-Object { Format-ExtensionRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Table Extensions" -headers @("ID", "Name", "Caption", "Extends") -rows $rows))
    }

    # PageExtensions
    if ($objects.PageExtensions.Count -gt 0) {
        $rows = $objects.PageExtensions | ForEach-Object { Format-ExtensionRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Page Extensions" -headers @("ID", "Name", "Caption", "Extends") -rows $rows))
    }

    # EnumExtensions
    if ($objects.EnumExtensions.Count -gt 0) {
        $rows = $objects.EnumExtensions | ForEach-Object { Format-EnumExtRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Enum Extensions" -headers @("ID", "Name", "Caption", "Extends", "Values") -rows $rows))
    }

    # PermissionSets
    if ($objects.PermissionSets.Count -gt 0) {
        $rows = $objects.PermissionSets | ForEach-Object { Format-PermissionSetRow $_ }
        [void]$sb.Append((New-ObjectTable -title "Permission Sets" -headers @("ID", "Name", "Caption") -rows $rows))
    }

    [void]$sb.AppendLine("> Auto-generated by np-retail-kb-update.ps1 on $today. Descriptions are placeholders — review manually.")
    $sfList = if ($objects.SourceFiles.Count -gt 0) { ($objects.SourceFiles | ForEach-Object { Split-Path $_ -Leaf }) -join ', ' } else { "(none)" }
    [void]$sb.AppendLine("> Source files: $sfList")

    $utf8NoBom = [System.Text.UTF8Encoding]::new($false)
    [System.IO.File]::WriteAllText($outputPath, $sb.ToString().Replace("`r`n", "`n"), $utf8NoBom)
    Write-Host "  Wrote $outputPath"
}


# ---------- Main flow ----------

function Main {
    Write-Host "=== NP Retail KB Update ==="
    Write-Host "Mode: $Mode"
    Write-Host "Config: $ConfigPath"
    Write-Host "KB Root: $kbRoot"
    Write-Host "Np Repo: $(if ($NpRepoPath) { $NpRepoPath } else { 'NONE — dry run (use -NpRepoPath)' })"
    Write-Host ""

    if (-not $NpRepoPath) {
        Write-Error "NpRepoPath is required. Point to a local clone of navipartner/npcore-partners."
        exit 1
    }

    # ---- Step 0: Get last commit ----
    $changeFile = Join-Path $kbRoot $config.changeTrackingFile
    $lastCommit = Read-LastCommit $changeFile
    $headCommit = Get-RepoHead $NpRepoPath

    Write-Host "Last tracked commit: $(if ($lastCommit) { $lastCommit } else { 'NONE' })"
    Write-Host "Repo HEAD: $headCommit"
    Write-Host ""

    if ($Mode -eq "update" -and $lastCommit -eq $headCommit) {
        Write-Host "Already up to date. No changes."
        return
    }

    # ---- Step 1: Determine which modules to process ----
    $changedSrcDirs = if ($Mode -eq "init") { $null } else { Get-ChangedModuleDirs -repoPath $NpRepoPath -lastCommit $lastCommit -sourcePrefix $config.repo.sourcePrefix }

    # Filter config modules
    $modulesToProcess = @()
    foreach ($mod in $config.modules) {
        # Apply module filter
        if ($moduleFilterList.Count -gt 0 -and -not ($moduleFilterList -contains $mod.kbDir)) { continue }

        if ($changedSrcDirs -eq $null) {
            # init mode — all modules
            $modulesToProcess += $mod
        } elseif ($changedSrcDirs -contains $mod.sourceDir) {
            $modulesToProcess += $mod
        }
    }

    if ($modulesToProcess.Count -eq 0) {
        Write-Host "No modules to process."
        if ($Mode -eq "update" -and $lastCommit) {
            Update-ChangeTracking -filePath $changeFile -newCommit $headCommit
        }
        return
    }

    Write-Host "Modules to process: $($modulesToProcess.Count)"
    foreach ($m in $modulesToProcess) { Write-Host "  - $($m.sourceDir) → $($m.kbDir)" }
    Write-Host ""

    # ---- Step 2: Process each module ----
    $allRegistryEntries = [System.Collections.ArrayList]::new()
    $affectedSubDomains = @{}

    foreach ($mod in $modulesToProcess) {
        $sourceDir = Join-Path $NpRepoPath ($config.repo.sourcePrefix + "/" + $mod.sourceDir)
        $kbDir = Join-Path $kbRoot $mod.kbDir

        Write-Host "Processing: $($mod.sourceDir)"

        # Parse AL files
        $objects = Get-ALObjects -modulePath $sourceDir

        # Write api.md
        $apiPath = Join-Path $kbDir "api.md"
        Write-ApiMd -outputPath $apiPath -objects $objects -moduleConfig $mod

        # Build registry entry
        $regEntry = New-RegistryEntry -objects $objects -moduleConfig $mod
        [void]$allRegistryEntries.Add($regEntry)

        # Track affected sub-domain
        $affectedSubDomains[$mod.subDomain] = $true

        Write-Host "  → $($objects.Tables.Count) tables, $($objects.Codeunits.Count) codeunits, $($objects.Pages.Count) pages, $($objects.Enums.Count) enums"
        Write-Host ""
    }

    # ---- Step 3: Update 00-INDEX.md for affected sub-domains ----
    Write-Host "Updating 00-INDEX.md matrices..."
    foreach ($sd in $affectedSubDomains.Keys) {
        Update-SubDomainIndexMd -kbRoot $kbRoot -subDomain $sd -config $config
    }
    Write-Host ""

    # ---- Step 4: Update _object-registry.md ----
    Write-Host "Updating _object-registry.md..."
    $registryPath = Join-Path $kbRoot $config.objectRegistryFile
    Update-ObjectRegistry -filePath $registryPath -allEntries $allRegistryEntries.ToArray()
    Write-Host ""

    # ---- Step 5: Update change-tracking.md ----
    Write-Host "Updating change-tracking.md..."
    Update-ChangeTracking -filePath $changeFile -newCommit $headCommit
    Write-Host ""

    # ---- Step 6: Regenerate _tags.md ----
    if (-not $SkipTagRegen) {
        $regenScript = $config.regenTagsScript
        $regenPath = if ([System.IO.Path]::IsPathRooted($regenScript)) { $regenScript } else { Join-Path (Split-Path $ConfigPath | Split-Path) $regenScript }
        if (Test-Path $regenPath) {
            Write-Host "Regenerating _tags.md..."
            & $regenPath
            Write-Host ""
        } else {
            Write-Warning "regen-tags.ps1 not found at $regenPath — skipping"
        }
    }

    Write-Host "=== Done ==="
    Write-Host "Processed $($modulesToProcess.Count) modules across $($affectedSubDomains.Keys.Count) sub-domains"
    Write-Host ""
    Write-Host "IMPORTANT: overview.md files were NOT generated. They need business context."
    Write-Host "For each changed module, check if overview.md exists and update it manually or via LLM."
}

# ---- Execute ----
try {
    Main
} catch {
    Write-Error "Fatal error: $_"
    exit 1
}
