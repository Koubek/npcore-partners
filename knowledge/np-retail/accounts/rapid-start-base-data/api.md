---
type: reference
tags: [np-retail, accounts, rapid-start, tables, codeunits, pages]
relates: [accounts/rapid-start-base-data/overview.md]
updated: 2026-05-09
---

# Rapid Start Base Data — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `AutoRapidstartImportLog` | Import log — `Entry No.`, `Timestamp`, `Status`, `Package Name`, `Error Message`, `Records Imported` |
| `BackgroundPackageImport` | Background queue — `Entry No.`, `Package Name`, `Status`, `Scheduled Date`, `Completed Date` |

## Codeunits

### "RapidStartBaseDataMgt"

Core RapidStart management. Key operations:
- Import RapidStart packages for NP Retail base setup
- Validate package configuration before import
- Manage import sequence dependencies

### "ImportBaseNPRData"

Base data import execution. Handles:
- Reading RapidStart package configuration
- Executing table imports in dependency order
- Post-import validation

### "BackgroundPackageImp"

Job queue handler. Runs as scheduled task to process pending `BackgroundPackageImport` entries. Supports retry logic and error reporting.

### "ImportPlaywrightNPRData"

Test data seeding for Playwright end-to-end tests. Creates base data records needed for automated UI test execution.

### "PckgeTableNameModifier"

Utility for modifying table names within RapidStart packages. Used for multi-company or multi-environment deployments where table names may differ.

## Pages

| Page | Purpose |
|------|---------|
| `RapidStartBaseDataImp` | Import management interface — trigger imports, view logs, monitor status |
