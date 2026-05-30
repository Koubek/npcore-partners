---
type: reference
tags: [np-retail, inventory, item-catalog, tables, codeunits, pages]
relates: [inventory/item-catalog/overview.md]
updated: 2026-05-09
---

# Item Catalog — API Reference

## Tables

### Table 6060061 "NPR Catalog Supplier"

Vendor-to-catalog mapping.

| Field | Type | Purpose |
|-------|------|---------|
| `Code` | Code[4] | PK |
| `Vendor No.` | Code[20] | FK to Vendor |
| `Send Sales Statistics` | Boolean | Flag |
| `Trade Number` | Code[20] | External trade identifier |

### Table 6060063 "NPR Nonstock Item Material"

| Field | Type | Purpose |
|-------|------|---------|
| `Nonstock Item Entry No.` | Code[20] | FK to Nonstock Item |
| `Item Material` | Code[20] | Material code |
| `Item Material Density` | Code[20] | Density value |

## Codeunits

### Codeunit 6060061 "NPR Imp. Vendor Catalog File"

CSV import engine.

**Key Procedures:**
- `ReadFile(VendorNo, var TempBlob, IsOnClient, SkipUnmappedVendors)` — parses CSV buffer and processes each row
- `ProcessLine(VendorNo, var CSVBuffer, SkipUnmappedVendors)` — identifies or creates items
- `IdentifyItem(VendorNo, var CSVBuffer, var Item): Boolean` — match by Vendor Item No. or Bar Code
- `IdentifyNonStockItem(VendorNo, var CSVBuffer, var NonstockItem): Boolean` — match by Vendor Item No.
- `CreateNonStockItem(VendorNo, var CSVBuffer, var NonstockItem)` — creates new nonstock item from CSV data
- `UpdateItem(var CSVBuffer, var Item)` — updates NPR attributes on existing item
- `FindVendor(var CSVBuffer, SkipUnmappedVendors): Code[20]` — resolve catalog supplier code to vendor
- `SelectVendor(): Code[20]` — UI vendor picker

CSV columns processed: Manufacturer (3), Vendor Item No. (4), Bar Code (5), Description (10), Unit of Measure (11), Net Weight (18), Unit Price (25), Published Cost (20), Item Category (38), Item Material (44), Item Material Density (45), plus custom NPR Attribute columns.

### Codeunit 6060062 "NPR Process Catalog File"

File format handler. Dispatches to CSV processing or Zip/GZip extraction based on file extension. Integrates with `NPR Nc Import Entry` infrastructure.

### Codeunit 6060063 "NPR Catalog Nonstock Mgt."

Copies NPR attributes from Nonstock Item to the resulting Item record. Event subscriber on `Nonstock Item - OnAfterModifyEvent` triggers when `Item No.` is set.

### Codeunit 6060064 "NPR Nonstock Purchase Mgt."

Handles nonstock item resolution on purchase lines. Triggered when a barcode/vendor item no. doesn't match an existing Item or Item Reference. Creates items via `Catalog Item Management` if needed.

**Limits:** Only available BC24+ (guarded by `#if not (BC17..BC24)`).

## Pages

| Page | ID | Type | Source Table |
|------|----|------|-------------|
| NPR Catalog Suppliers | 6060061 | List | NPR Catalog Supplier |

## Import Flow

1. User triggers import (CSV/ZIP file via `NPR Imp. Vendor Catalog File`)
2. `ProcessCatalogFile` handles format (Zip extraction or direct CSV)
3. Each CSV row goes through ProcessLine:
   - Check mandatory fields (Bar Code, Manufacturer, Vendor Item No.)
   - Try to match existing Item (by Vendor Item No. → Bar Code)
   - Try to match existing Nonstock Item
   - If not found → create Nonstock Item from template
4. When nonstock item later used in purchase → `NonstockPurchaseMgt` creates real Item via `CatalogItemMgt.CreateNewItem()`
5. Attributes are copied from Nonstock to Item on modify
