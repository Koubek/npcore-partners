---
type: concept
tags: [np-retail, accounts, rapid-start]
relates: []
updated: 2026-05-09
---

# Rapid Start Base Data — Overview

RapidStart base data import and management for NP Retail. Automates the import of NP Retail base configuration data using Microsoft Dynamics RapidStart Services, with support for background job queue processing, table name modification, and Playwright test data import.

## Purpose

- Import NP Retail base setup data via RapidStart packages
- Background (job queue) package import for non-interactive setup
- Table name modification for multi-company deployment
- Import logging and error tracking
- Playwright test automation data seeding

## Key Tables

| Table | Purpose |
|-------|---------|
| `AutoRapidstartImportLog` | Import process logging |
| `BackgroundPackageImport` | Background import queue entries |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `RapidStartBaseDataMgt` | Core RapidStart base data import management |
| `ImportBaseNPRData` | Base NP Retail data import logic |
| `BackgroundPackageImp` | Job queue handler for background import |
| `ImportPlaywrightNPRData` | Playwright test data seeding |
| `PckgeTableNameModifier` | Package table name modification utility |

## Pages

| Page | Purpose |
|------|---------|
| `RapidStartBaseDataImp` | Base data import UI |
