---
type: concept
tags: [np-retail, commerce, dimensions]
relates: [pos/pos-core/overview.md]
updated: 2026-05-09
---

# Dimensions (Commerce) — Overview

POS-specific dimension management for NP Retail. Extends standard Business Central dimension functionality to POS sale transactions by storing line-level dimensions with automatic propagation from sale headers to sale lines and global dimension code synchronization.

## Purpose

- Per-line dimension assignment for POS sales and sale lines
- Automatic cascade of dimension changes from sale header to sale lines
- Global Dimension 1/2 code synchronization on sale records
- Popup dimension filter for POS unit-level dimension selection
- Payment view event logging with dimension context
- Multi-select dimension value filter UI

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Line Dimension` | 6014430 | Per-line dimension value storage (Table ID, Register No., Ticket No., Line No., Dimension Code, Value) |
| `PopupDimFilter` | — | Temporary dimension filter buffer |
| `PopUpDimPOSUnitFilter` | — | POS-unit-specific dimension filter |
| `POSPaymViewEventSetup` | — | Payment view event configuration |
| `POSPaymViewLogEntry` | — | Payment view audit log entries |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `POSEndSaleDimSaleStat` | End-of-sale dimension processing |
| `POSPaymViewEventMgt` | Payment view event management |

## Enums

| Enum | Purpose |
|------|---------|
| `DimPopupFilterType` | Dimension popup filter type options |

## Pages

| Page | Purpose |
|------|---------|
| `DimensionValueList` | Dimension value selection |
| `LineDimensions` | Line dimension entry |
| `PopupDimFilter` | Popup filter UI |
| `PopUpDimPOSUnitFilter` | POS-unit filter UI |
| `DimSelectMulwFilter` | Multi-select dimension value filter |
| `POSPaymViewEventSetup` | Payment view event configuration |
| `POSPaymViewLogEntries` | Payment view audit log |
