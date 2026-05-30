---
type: reference
tags: [np-retail, data, data-package, tables, codeunits, pages]
relates: [np-retail/data/data-package/overview.md]
updated: 2026-05-09
---

# Data Package — API Reference

## Tables

| ID | Name | Caption | Key Fields | Notes |
|----|------|---------|------------|-------|
| 6014598 | NPR Managed Package Lookup | Managed Package Lookup | Index (PK) | Temporary table for package manifest lookup results |

### NPR Managed Package Lookup (6014598)
Fields: Index (Integer), Name (Text[250]), Version (Text[30]), Description (Text[100]), Status (Text[50]), Tags (Text[250]).

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6014628 | NPR Managed Package Mgt. | Package import: file, blob, URL; print template deployment |
| 6014629 | NPR Managed Package Builder | Package build: add records, export to file/blob |

### NPR Managed Package Mgt. (6014628)
Key procedures:
- `AddExpectedTableID(ID: Integer)` — whitelist table IDs for package import
- `SetLoadMethod(LoadMethod: Option OnlyInsert,InsertOrModify,DeleteFirst)` — bypass interactive dialog
- `ImportFromFile()` / `ImportFromFile(Encoding)` — upload and import from .json file
- `ImportFromBlob(var TempBlob)` — import from TempBlob
- `DeployPackageFromURL(URL: Text)` — fetch and deploy from URL
- `DeployPrintTemplatePackage(URL: Text)` — specialized import for NPR RP Template Header packages; archives existing, creates/replaces templates
- `FieldRefByID(var RecRef; ID: Text; var FieldRef): Boolean` — resolve field reference by field ID string

Events:
- `OnLoadPackage(var Handled; PrimaryPackageTable; JObject; LoadType)` — integration event for custom package processing

### NPR Managed Package Builder (6014629)
Key procedures:
- `AddRecord(Record: Variant)` / `AddRecord(Record; Encoding)` — accumulate records from Record or RecordRef into JSON array; excludes flow fields
- `ExportToFile(Name, Version, Description, PrimaryPackageTable)` — build manifest JSON and download as file
- `ExportToFile(Name, Version, Description, PrimaryPackageTable, Encoding)` — with explicit encoding
- `ExportToBlob(Name, FileVersion, Description, PrimaryPackageTable, var TempBlobOut)` — export to blob for programmatic use

## Pages

| Name | Source Table | Notes |
|------|-------------|-------|
| NPR Managed Package Lookup | NPR Managed Package Lookup (temp) | Package lookup list page |
