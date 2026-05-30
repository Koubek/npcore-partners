---
type: concept
tags: [np-retail, inventory, accessories]
relates: []
updated: 2026-05-09
---

# Accessories — Overview

Manages **item accessories and spare parts** with an **unfold worksheet** process — when an item with registered accessories is sold, the system can automatically generate item journal lines to track the consumption of accessory inventory.

## Purpose

- Define accessories/spare parts for items with quantity, pricing, and auto-insert behavior
- **Unfold worksheet**: Generate lines from posted item ledger entries, splitting accessory costs proportionally
- **Proportional cost allocation**: Accessory unit price calculated as `(Sale Amount × Accessory % of Total Accessory Amount) / Qty Sold`
- **VAT validation**: Ensures VAT posting groups match between main item and accessory
- **Worksheet posting**: Creates item journal lines with full dimension, source, and document tracing

## Key Tables (3)

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Accessory/Spare Part` | 6014506 | Master data — links items to their accessories/spare parts |
| `NPR Accessory Unfold Worksheet` | 6014507 | Working table for unfold lines before posting |
| `NPR Accessory Unfold Entry` | 6014508 | Posted unfold entries (permanent record) |

## Key Codeunits (1)

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Accessory Unfold Mgt.` | 6014506 | Worksheet generation and posting engine |

## Integration Points

- **Item Ledger Entry**: Worksheet generation reads posted sales entries
- **Item Journal**: Posting creates item journal lines (via `Item Jnl.-Post Line`)
- **NPR POS Entry Sales Line**: Links unfold entries back to POS sales for traceability
- **VAT Prod. Posting Group**: Validates consistency between main item and accessory
