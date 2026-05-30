---
type: reference
tags: [np-retail, inventory, item-reference, tables, pages]
relates: [inventory/item-reference/overview.md]
updated: 2026-05-09
---

# Item Reference — API Reference

## Table Extensions

### TableExtension 6014440 "NPR Item Reference" extends "Item Reference"

**Added Fields:**

| Field ID | Name | Type | Description |
|----------|------|------|-------------|
| 6014402 | `NPR Label Barcode` | Boolean | Used for label printing |
| 6151479 | `NPR Replication Counter` | BigInteger | **Obsolete** (2023-06-28) — replaced by SystemRowVersion |
| 6151500 | `NPR Discontinued Barcode` | Boolean | Marked for discontinuation |
| 6151501 | `NPR Discontinued Reason` | Option | ` ` / `Sale` / `Manual` / `Inactive` / `Upgrade` / `Return` |

**Added Keys:**
| Key | Fields | Status |
|-----|--------|--------|
| `NPR LabelBarcode` | `NPR Label Barcode` | Active |
| `NPR Key1` | `NPR Replication Counter` | Obsolete Pending |
| `NPR Key2` | `SystemRowVersion` | BC21+ only |

## Page Extensions

### PageExtension 6014410 "NPR Item Reference Entries" extends "Item Reference Entries"

**Added Fields:** `NPR Label Barcode`, `NPR Discontinued Barcode` (read-only), `NPR Discontinued Reason` (read-only).

**Added Action:** `NPR Toggle Discontinuation` (promoted, Process category) — toggles `NPR Discontinued Barcode` flag on selected records and sets reason to `Manual`.

### PageExtension 6014411 "NPR Item Reference List" extends "Item Reference List"

Same fields and `NPR Toggle Discontinuation` action as the entries page extension.
