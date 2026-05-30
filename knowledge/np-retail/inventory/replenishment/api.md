---
type: reference
tags: [np-retail, inventory, replenishment, tables, codeunits, pages]
relates: [inventory/replenishment/overview.md]
updated: 2026-05-09
---

# Replenishment — API Reference

## Tables

### Table 6014474 "NPR Item Repl. by Store"

Per-store replenishment parameters for each item/variant.

| Field | Type | Purpose |
|-------|------|---------|
| `Store Group Code` | Code[20] | Store group (PK) |
| `Item No.` | Code[20] | Item (PK, FK to Item) |
| `Variant Code` | Code[10] | Variant (PK) |
| `Reorder Point` | Decimal | Triggers reorder when inventory drops below |
| `Reorder Point Text` | Text[30] | Cached formatted value (syncs with Reorder Point) |
| `Reorder Quantity` | Decimal | Fixed reorder quantity |
| `Reorder Quantity Text` | Text[30] | Cached formatted value |
| `Maximum Inventory` | Decimal | Max desired stock level |
| `Maximum Inventory Text` | Text[30] | Cached formatted value |
| `Item Description` | Text[100] | FlowField from Item |
| `Variant Description` | Text[100] | FlowField from Item Variant |

**Triggers:**
- OnValidate(Reorder Point/Quantity/Maximum Inventory): Syncs to/from Text fields for formatted display
- Obsolete fields: `Reorder Policy`, `Is Master`, `Master Record Reference` (removed 2023-06-28)

### Table 6151062 "NPR Retail Replenishment Setup"

Singleton setup table.

| Field | Type | Purpose |
|-------|------|---------|
| `Code` | Code[10] | PK |
| `Item Demand Calc. Codeunit` | Integer | Custom codeunit ID for demand calculation (0 = use default) |
| `Default Transit Location` | Code[10] | Transit location for inter-store transfers |

## Codeunits

### Codeunit 6151052 "NPR Retail Replenish. Mgt."

Public procedures:

| Procedure | Purpose |
|-----------|---------|
| `CreateDemandLines(ItemHierachyID, DistributionGroup)` | Generates demand lines for all items in hierarchy × all members of distribution group. Auto-creates SKUs if configured. Enriches with campaign discount data. |
| `CreateRetailCampaignDemands(RetailCampaignHeader)` | Creates campaign-specific demands (stub) |
| `CreateCampaignPurchOrdersDirectFromDemand(var DemandLine)` | Creates purchase orders directly from confirmed demand lines — groups by vendor/location/campaign/due date |

**Default demand calc** (`DefaultDemandCalc`):
- `DemandQuantity = OutgoingQuantity - IncomingQuantity`
- `IncomingQuantity = Qty. on Purch. Order + Inventory`
- `OutgoingQuantity = Qty. on Sales Order + Item Ledger Entry Sales qty (within grace period)`
- Sets Due Date from item lead time calculation or distribution setup required delivery date
- Grace period configured via `Replenishment Grace Period` on Distribution Setup

## Pages

| Page | ID | Type | Source Table |
|------|----|------|-------------|
| Item Repl. by Store Matrix | - | Matrix | NPR Item Repl. by Store |
| Retail Replenishment SKU List | - | List | NPR Item Repl. by Store (SKU view) |
| Retail Replenishment Setup | - | Card | NPR Retail Replenishment Setup |
| Ret Repl Transfer Mapping | - | - | Transfer route mapping |
