---
type: reference
tags: [np-retail, commerce, group-codes, tables, codeunits, pages]
relates: [commerce/group-codes/overview.md]
updated: 2026-05-09
---

# Group Codes — API Reference

## Tables

### Table 6059803 "NPR Group Code"

Simple code table. Fields: `Code` (Code[10], clustered PK), `Description` (Text[50]). LookupPageId and DrillDownPageID: "NPR Group Codes".

## Codeunits

### "GroupCodeUtils"

Utility codeunit providing helper functions for group code lookup, validation, and cross-module integration.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `NPR Group Codes` | NPR Group Code | Group code list page (also used as Lookup/DrillDown page) |
