---
type: concept
tags: [np-retail, data, data-package]
relates:
updated: 2026-05-09
---

# Data Package Module

Provides a generic framework for building, exporting, and importing structured JSON data packages to BC tables. Used for demo data seeding, configuration migration, and ground control deployments.

## Core Concept

A data package is a JSON manifest containing records from one or more tables. The framework supports:
- **Building** — select records via Record/RecordRef filters, export to file or blob
- **Importing** — load from file, blob, or URL; choose load method (Insert, InsertOrModify, DeleteFirst)
- **Deploying** — direct URL-based deployment from ground control or CI/CD pipelines

## Key Business Flows

### Package Building (ManagedPackageBuilder)
1. Call `AddRecord(Record)` multiple times to accumulate records
2. Call `ExportToFile(Name, Version, Description, PrimaryPackageTable)` to save as JSON package
3. Or `ExportToBlob()` for programmatic consumption

### Package Importing (ManagedPackageMgt)
1. Call `AddExpectedTableID(ID)` to whitelist allowed tables
2. Choose import source:
   - `ImportFromFile()` — user picks .json file
   - `ImportFromBlob()` — from TempBlob
   - `DeployPackageFromURL(URL)` — fetch from URL
3. Optional: `SetLoadMethod()` to bypass the interactive dialog
4. Optional: Subscribe to `OnLoadPackage` event for custom processing (e.g., print template packages)

### Print Template Deployment
`DeployPrintTemplatePackage(URL)` handles NPR RP Template Header packages specially:
- Parses package into temporary records
- Compares versions against existing templates
- Creates Import Worksheet with Replace/Create actions
- Archives old versions before replacement

### Dependencies
- **Temp Blob** — stream handling
- **Convert Helper** (NPR Convert Helper) — JSON value to field conversion
- **Print Templates** (NPR RP) — special template package handling
