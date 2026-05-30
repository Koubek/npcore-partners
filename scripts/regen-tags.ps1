# Regenerate knowledge/_tags.md from actual KB file frontmatter.
# Called by Claude Code Stop hook. Safe to run manually: pwsh -File scripts/regen-tags.ps1
# OpenCode: run manually or skip — the hook is Claude Code only.

param()
$ErrorActionPreference = "Stop"

$knowledgeDir = "knowledge"
$outputFile   = "knowledge/_tags.md"

# Skip rebuild if no content file is newer than _tags.md
if (Test-Path $outputFile) {
    $tagsTime = (Get-Item $outputFile).LastWriteTime
    $anyNewer = Get-ChildItem -Path $knowledgeDir -Recurse -Filter "*.md" |
        Where-Object { $_.Name -notin @("00-INDEX.md", "_tags.md") -and $_.LastWriteTime -gt $tagsTime }
    if (-not $anyNewer) {
        Write-Host "knowledge/_tags.md is up to date — skipping"
        exit 0
    }
}

$knowledgeAbs = (Resolve-Path $knowledgeDir).Path
$tagMap = [System.Collections.Generic.SortedDictionary[string, System.Collections.Generic.List[string]]]::new()

$files = Get-ChildItem -Path $knowledgeDir -Recurse -Filter "*.md" |
    Where-Object { $_.Name -notin @("00-INDEX.md", "_tags.md") }

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $tags = $null

    # Inline array: tags: [tag1, tag2, tag3]
    if ($content -match "(?m)^tags:\s*\[([^\]]+)\]") {
        $tags = $matches[1] -split ",\s*" |
                ForEach-Object { $_.Trim().Trim('"').Trim("'") } |
                Where-Object { $_ }
    }
    # YAML block list:
    # tags:
    #   - tag1
    elseif ($content -match "(?ms)^tags:\s*\n((?:[ \t]+-[ \t]+\S+[ \t]*\n)+)") {
        $tags = [regex]::Matches($matches[1], "^\s+-\s+(\S+)", "Multiline") |
                ForEach-Object { $_.Groups[1].Value }
    }

    if (-not $tags) { continue }

    $relPath = $file.FullName.Substring($knowledgeAbs.Length + 1).Replace("\", "/")

    foreach ($tag in $tags) {
        if (-not $tagMap.ContainsKey($tag)) {
            $tagMap[$tag] = [System.Collections.Generic.List[string]]::new()
        }
        [void]$tagMap[$tag].Add($relPath)
    }
}

$today = Get-Date -Format "yyyy-MM-dd"
$sb    = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("---")
[void]$sb.AppendLine("type: reference")
[void]$sb.AppendLine("tags: [_system, index, tags]")
[void]$sb.AppendLine("relates: [_system/conventions.md]")
[void]$sb.AppendLine("updated: $today")
[void]$sb.AppendLine("---")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("# Tag Index — Cross-Cutting File Discovery")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("Maps every tag to every file that uses it.")
[void]$sb.AppendLine("**Auto-generated** by ``scripts/regen-tags.ps1`` via Claude Code Stop hook — do not edit manually.")
[void]$sb.AppendLine("")

foreach ($kvp in $tagMap.GetEnumerator()) {
    [void]$sb.AppendLine("## $($kvp.Key)")
    foreach ($path in ($kvp.Value | Sort-Object -Unique)) {
        [void]$sb.AppendLine("- $path")
    }
    [void]$sb.AppendLine("")
}

# Write without BOM, Unix line endings for git cleanliness
$utf8NoBom = [System.Text.UTF8Encoding]::new($false)
[System.IO.File]::WriteAllText(
    (Join-Path (Get-Location) $outputFile),
    $sb.ToString().Replace("`r`n", "`n"),
    $utf8NoBom
)

Write-Host "knowledge/_tags.md regenerated — $($tagMap.Count) tags across $($files.Count) content files"
