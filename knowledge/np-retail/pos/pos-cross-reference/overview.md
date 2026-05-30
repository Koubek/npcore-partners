---
type: concept
tags: [np-retail, pos, pos-cross-reference]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Cross Reference Module

Provides a cross-reference lookup system for POS records. Enables storing and retrieving external reference numbers mapped to internal record system IDs, supporting integration scenarios where external systems reference POS entities by their own identifiers.

## Architecture

### Core Table
`NPR POS Cross Reference` (6014660) stores:
- `Entry No.` (BigInteger, auto-increment) — Primary key
- `Reference No.` (Code[50]) — External reference identifier
- `Table Name` (Text[250]) — Source table identification
- `Record Value` (Text[100]) — Descriptive value for the referenced record

Keyed by `Reference No. + Table Name` for efficient lookup.

### Management Codeunit
`NPR POS Cross Reference Mgt.` (6014620) provides CRUD operations:
- `InitReference(SysID, ReferenceNo, TableName, RecordValue)` — Create new reference entry
- `UpdateReference(SysID, TableName, RecordValue)` — Update existing reference metadata
- `RemoveReference(SysID, TableName)` — Delete a reference
- `GetSysID(TableName, ReferenceNo)` — Lookup system ID by table name + reference number
- Also includes regex-based reference pattern testing for generating formatted reference numbers from patterns like `[PS]`, `[PU]`, `[S]`, `[N*4]`, `[AN*4]`

### Key Flows

1. An external system creates a POS transaction and provides a reference number
2. POS Core calls `POSCrossReferenceMgt.InitReference()` to store the mapping
3. Future lookups use `GetSysID()` to resolve the external reference to the internal record
4. The reference pattern system generates formatted references using `NPR RegEx` pattern replacement

### Pages
- `NPR POS Cross References` — List page for viewing/editing cross references
- `NPR POS CrossRef Setup` — Configuration page for cross reference settings

## Dependencies

- **POS Core** — Sale and transaction types that use cross references
- **Infrastructure** — RegEx codeunit for pattern-based reference generation
