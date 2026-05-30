---
type: concept
tags: [np-retail, inventory, item-reference]
relates: []
updated: 2026-05-09
---

# Item Reference — Overview

Extends the standard BC **Item Reference** table with NP Retail-specific barcode management features: label barcode flagging, barcode discontinuation tracking, and replication counters.

## Purpose

- Mark item references (barcodes) as **label barcodes** for printing
- Track **discontinued barcodes** with reason codes (Sale, Manual, Inactive, Upgrade, Return)
- Provide **toggle action** on reference pages to mark/unmark discontinuation
- Maintain replication counters (obsolete, replaced by SystemRowVersion)

## Key Table Extensions

| Table Extension | ID | Extends |
|-----------------|----|---------|
| `NPR Item Reference` | 6014440 | `Item Reference` |

## Key Page Extensions

| Page Extension | ID | Extends |
|----------------|----|---------|
| `NPR Item Reference Entries` | 6014410 | `Item Reference Entries` |
| `NPR Item Reference List` | 6014411 | `Item Reference List` |
