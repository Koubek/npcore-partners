---
type: reference
tags: [np-retail, inventory, accessories, tables, codeunits, pages]
relates: [inventory/accessories/overview.md]
updated: 2026-05-09
---

# Accessories — API Reference

## Tables

### Table 6014506 "NPR Accessory/Spare Part"

Master data linking items to their defined accessories.

| Field | Type | Purpose |
|-------|------|---------|
| `Code` | Code[20] | PK — FK to Item (the main item that has accessories) |
| `Item No.` | Code[20] | The accessory/spare part item (FK to Item) |
| `Description` | Text[100] | FlowField from Item |
| `Type` | Option | Accessory / Spare Part / Match |
| `Quantity` | Decimal | Qty of accessory per main item unit |
| `Unit Price` | Decimal | FlowField from Item.Unit Price |
| `Alt. Price` / `Use Alt. Price` | Decimal / Boolean | Override price |
| `Show Discount` | Boolean | Show discount in POS |
| `Per unit` | Boolean | Multiply by main item qty (default true) |
| `Standard` | Boolean | Standard accessory |
| `Add Extra Line Automatically` | Boolean | Auto-insert in worksheet (default true) |
| `Quantity in Dialogue` | Boolean | Prompt for qty in POS |
| `Unfold in Worksheet` | Boolean | Include in unfold worksheet generation |
| `Auto` | Boolean | Auto-apply (default true) |
| `Inventory` | Decimal | FlowField sum from Item Ledger Entry |
| `Last Date Modified` | Date | Tracked on modify |

**Triggers:**
- **OnInsert**: Sets default Quantity=1, Add Extra Line Automatically=true
- **OnModify**: Updates Last Date Modified
- **OnValidate(Unfold in Worksheet)**: Validates VAT posting group via AccessoryUnfoldMgt

### Table 6014507 "NPR Accessory Unfold Worksheet"

Working table for unfold lines before posting.

| Field | Type | Purpose |
|-------|------|---------|
| `Accessory Item No.` | Code[20] | PK — the main item sold |
| `Item Ledger Entry No.` | Integer | PK — FK to Item Ledger Entry (sale) |
| `Item No.` | Code[20] | PK — the accessory item (blank = summary line) |
| `Entry Type` | Enum | FlowField from Item Ledger Entry |
| `Source Type/No.` | - | FlowField source info |
| `Document Type/No./Line No.` | - | FlowField document info |
| `Description` | Text[50] | From accessory master |
| `Location Code` | Code[10] | FlowField from entry |
| `Quantity` | Decimal | Calculated proportional qty |
| `Unit Price` | Decimal | Calculated proportional price |
| `Global Dim 1/2` | Code[20] | FlowField from entry |
| `POS Unit No.` | Code[20] | FlowField from POS entry |
| `Salesperson Code` | Code[20] | FlowField |
| `Document Time` | Time | FlowField |
| `Posting Date` | Date | FlowField |

### Table 6014508 "NPR Accessory Unfold Entry"

Posted unfold entry (created during worksheet posting).

Same structure as worksheet plus:
| Field | Purpose |
|-------|---------|
| `Unfold Item Ledger Entry No.` | Integer — the new item ledger entry created by the posting (circular reference prevention) |

## Codeunits

### Codeunit 6014506 "NPR Accessory Unfold Mgt."

Public procedures:

| Procedure | Purpose |
|-----------|---------|
| `GenerateWorksheet(var Worksheet)` | Generates unfold worksheet lines from Item Ledger Entry sales filtered by user-defined criteria. For each sale entry, creates a summary line (Item No. blank) and one line per accessory with `Unfold in Worksheet = true` and `Quantity > 0`. |
| `PostWorksheet(var Worksheet): Boolean` | Posts worksheet lines to item journal. Validates VAT posting groups, creates Item Jnl.-Post Line entries, transfers to Unfold Entry, deletes worksheet lines. |
| `TestVatSetup(AccessoryItemNo, ItemNo)` | Validates VAT Prod. Posting Group matches between main item and accessory |

**Key internal logic:**
- `CalcAmountPct`: Computes proportional cost allocation — `AccessoryAmount / TotalAccessoryAmount`. If Alt. Price is used, uses `Alt. Price × Qty`; otherwise `UnitPrice × Qty`. Falls back to qty ratio, then 1/N.
- `UpdateQty`: Calculates worksheet lines quantity = `-SaleQty × AccessoryQtyPerUnit`; unit price = `SaleAmount × AmountPct / SaleQty`
- `TransferWorksheet2UnfoldEntry`: Creates Unfold Entry with `Unfold Item Ledger Entry No.` pointing to the newly created item ledger entry
- Avoids re-processing by checking both `Item Ledger Entry No.` and `Unfold Item Ledger Entry No.` in Unfold Entry

## Pages

| Page | Type | Source Table |
|------|------|-------------|
| NPR Accessory List | List | NPR Accessory/Spare Part |
| NPR Accessory Unfold Worksheet | Worksheet | NPR Accessory Unfold Worksheet |
| NPR Accessory Unfold Entry (List) | List | NPR Accessory Unfold Entry |
| NPR Accessory Unfold Entry (Unfold) | ListPart | NPR Accessory Unfold Entry |
| POS Accessory AddOn Select | - | - |
