---
type: reference
tags: [np-retail, commerce, dimensions, tables, codeunits, pages, enums]
relates: [commerce/dimensions/overview.md]
updated: 2026-05-09
---

# Dimensions (Commerce) — API Reference

## Tables

### Table 6014430 "NPR Line Dimension"

Fields:

| Field | Type | Purpose |
|-------|------|---------|
| `Table ID` | Integer | Source table (NPR POS Sale or NPR POS Sale Line) |
| `Register No.` | Code[10] | POS Unit No. |
| `Sales Ticket No.` | Code[20] | Sale identifier |
| `Sale Type` | Option | Sale, Payment, Debit Sale, etc. |
| `Line No.` | Integer | Sale line number |
| `Date` | Date | Transaction date |
| `No.` | Code[20] | Item or entity number |
| `Dimension Code` | Code[20] | FK to Dimension |
| `Dimension Value Code` | Code[20] | FK to Dimension Value |

**Triggers:**
- `OnInsert/OnModify/OnDelete`: Updates `UpdateLineDim` (cascades to sale lines) and `UpdateGlobalDimCode` (syncs Shortcut Dimension 1/2 Code on sale records)
- `OnRename`: Prevented (error)

**Key procedures:**
- `GetDimensions(TableNo, Kassenr, Bonnr, EkspArt, Dato2, LinjeNr, Nr, var TempNPRLineDim)` — reads dimensions into temp buffer
- `UpdateAllLineDim(TableNo, Kassenr, Bonnr, EkspArt, Dato2, var OldNPRLineDimHeader)` — syncs line dimensions when header dimensions change

### Supporting Tables

| Table | Purpose |
|-------|---------|
| `PopupDimFilter` | Dimension filter criteria buffer |
| `PopUpDimPOSUnitFilter` | POS-unit-scoped dimension filter |
| `POSPaymViewEventSetup` | Payment view event configuration (enabled events, triggers) |
| `POSPaymViewLogEntry` | Logged payment view events with timestamp and user |

## Codeunits

### "POSEndSaleDimSaleStat"

Processes dimension updates at end-of-sale, ensures dimension values are finalized on posting.

### "POSPaymViewEventMgt"

Manages payment view dimension events — logs dimension changes during payment view operations for audit trail.

## Enums

### "DimPopupFilterType"

Options for dimension popup filter behavior.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `DimensionValueList` | Dimension Value | Dimension value selection |
| `LineDimensions` | NPR Line Dimension | Line dimension editor |
| `PopupDimFilter` | PopupDimFilter | Filter criteria dialog |
| `PopUpDimPOSUnitFilter` | PopUpDimPOSUnitFilter | POS-unit filter |
| `DimSelectMulwFilter` | PopupDimFilter | Multi-value dimension filter |
| `DimensionValueList` | Dimension | Dimension value list |
| `POSPaymViewEventSetup` | POSPaymViewEventSetup | Event configuration |
| `POSPaymViewLogEntries` | POSPaymViewLogEntry | Audit log view |
