---
type: concept
tags: [np-retail, inventory, coupon]
relates: [pos/pos-store/overview.md]
updated: 2026-05-09
---

# Coupon — Overview

Manages **retail coupons** — define coupon types, issue coupons (manually, on sale, via GS1 barcode), and apply them to purchases (by item, category, discount group, activity, GS1, extra item).

## Purpose

- **Coupon master data**: Define coupons with type (Item, Item Category, Item Disc. Group, Magento Brand), list items, validity periods, and configuration
- **Issue on sale**: Auto-issue coupons when specific items/products are purchased (ModuleIssueOnSale sub-module)
- **Multiple application modules**: Default (item lookup), Activity-based, Item List, GS1 barcode, Extra Item Quantity
- **External coupon import/export**: XML ports for external coupon data exchange
- **Coupon archiving**: Posted coupons and entries tracked separately for audit trail

## Key Tables (10+)

| Table | ID | Purpose |
|-------|----|---------|
| `NPR NpDc Coupon Setup` | 6151599 | Global coupon configuration |
| `NPR NpDc Coupon` | - | Coupon master (header) |
| `NPR NpDc Coupon Entry` | - | Coupon application entries |
| `NPR NpDc Coupon List Item` | - | Items assigned to a coupon |
| `NPR NpDc Arch Coupon` | - | Archived/posted coupon |
| `NPR NpDc Arch Coupon Entry` | - | Archived posted entries |
| `NPR NpDc Iss On Sale Setup` / Line | - | Issue-on-sale configuration |
| `NPR NpDc Extra Coupon Item` | - | Extra item coupon links |
| `NPR NpDc Ext Coupon Buffer` | - | External coupon import buffer |
| `NPR NpDc Item Buffer 2` | - | Item buffer for processing |
| `NPR NpDc Coupon Line Appl Buffer` | - | Line application buffer |

## Key Codeunits (10+)

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR NpDc Module Apply Default` | - | Default coupon application (item lookup) |
| `NPR NpDc Module Apply Activity` | - | Activity-based application |
| `NPR NpDc Module Apply Item List` | - | Item list-based application |
| `NPR NpDc Module Apply GS1` | - | GS1 barcode-based application |
| `NPR NpDc Module Apply Xtr Item` | - | Extra item application |
| `NPR NpDc Module Issue Default` | - | Default coupon issue logic |
| `NPR NpDc Module Issue GS1` | - | GS1-based issue logic |
| `NPR NpDc Module Valid Defa` | - | Default validation |
| `NPR NpDc Module Valid Item L` | - | Item list validation |
| `NPR NpDc Apply Extra Item Qty` | - | Extra item quantity calculation |
| `NPR NpDc Coupon Manual Post` | - | Manual coupon posting |
| `NPR NpDc ModuleValidItemL_Magento` | - | Magento-specific item list validation |

## Integration Points

- **POS Integration**: Coupons consumed/issued at point of sale
- **Magento**: Brand-based coupon targeting, item list validation
- **GS1 Barcode**: GS1 data structure for coupon issue and application
- **External Systems**: XML port import/export for coupon data exchange
- **POS Store**: Coupon type/configuration linked to store groups
