---
type: concept
tags: [np-retail, inventory, item-catalog]
relates: [inventory/inventory/overview.md]
updated: 2026-05-09
---

# Item Catalog — Overview

Manages **vendor catalog items** — non-stock items that can be imported from vendor CSV files and later converted to stock items upon purchase. Bridges external catalog data (e.g., Nordic Item Database) with the BC item master.

## Purpose

- Import vendor catalog files (CSV/ZIP/GZip) with product data
- Match imported items against existing BC items (via Vendor Item No. or Bar Code)
- Create **Nonstock Items** for new products as placeholders
- On purchase, convert nonstock items to real **Item** records via `Catalog Item Management`
- Track catalog suppliers with trade numbers and sales statistics flags
- Store item material properties (material, density) for nonstock items

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Catalog Supplier` | 6060061 | Vendor→catalog supplier mapping |
| `NPR Nonstock Item Material` | 6060063 | Material and density for nonstock items |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Imp. Vendor Catalog File` | 6060061 | CSV file import logic |
| `NPR Process Catalog File` | 6060062 | Zip/GZip handling + CSV dispatch |
| `NPR Catalog Nonstock Mgt.` | 6060063 | Attribute copying from nonstock to item |
| `NPR Nonstock Purchase Mgt.` | 6060064 | Purchase-line nonstock resolution |

## Integration Points

- Uses `NPR Nc Import Entry` standard import infrastructure for file processing
- Integrates with `NPR Attribute` system for custom metadata
- Event subscriber on `Nonstock Item - OnAfterModifyEvent` to copy attributes to created items
