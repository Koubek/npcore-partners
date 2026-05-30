---
type: reference
tags: [np-retail, pos, pos-cross-reference, tables, codeunits, pages]
relates:
  - np-retail/pos/pos-cross-reference/overview.md
updated: 2026-05-09
---

# POS Cross Reference — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6014660 | NPR POS Cross Reference | POS Cross Reference | Entry No. (PK, BigInteger, AutoIncrement); Reference No.+Table Name | External reference → system ID mapping |
| — | NPR POS CrossRef Setup | POS CrossRef Setup | Code | Configuration for cross reference behavior |

### NPR POS Cross Reference Field Details

| Field No. | Name | Type | Description |
|-----------|------|------|-------------|
| 1 | Entry No. | BigInteger (AutoIncrement) | Primary key |
| 20 | Reference No. | Code[50] | External reference identifier |
| 21 | Table Name | Text[250] | Source table name |
| 22 | Record Value | Text[100] | Descriptive value |

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6014620 | NPR POS Cross Reference Mgt. | Cross reference CRUD and pattern-based reference generation |

### NPR POS Cross Reference Mgt. Key Procedures

| Procedure | Description |
|-----------|-------------|
| `OnRun()` | Tests reference regex patterns with sample data |
| `TestReferenceRegEx()` | Runs regex pattern replacement test: `[PS]`→StoreCode, `[PU]`→PosUnit, `[S]`→SalesTicket, `[N*4]`→numeric, `[AN*4]`→alphanumeric |
| `InitReference(SysID, ReferenceNo, TableName, RecordValue)` | Create new reference mapping. Skips if reference already exists |
| `UpdateReference(SysID, TableName, RecordValue)` | Update existing reference metadata |
| `RemoveReference(SysID, TableName)` | Remove a reference mapping |
| `GetSysID(TableName, ReferenceNo): Guid` | Lookup system ID by table name + reference number |

## Pages

| ID | Name | Source Table | Type | Purpose |
|----|------|-------------|------|---------|
| — | NPR POS Cross References | NPR POS Cross Reference | List | View/search cross reference entries |
| — | NPR POS CrossRef Setup | NPR POS CrossRef Setup | Card | Configuration card for cross reference settings |
