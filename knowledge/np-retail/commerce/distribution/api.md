---
type: reference
tags: [np-retail, commerce, distribution, tables, codeunits, pages]
relates: [commerce/distribution/overview.md]
updated: 2026-05-09
---

# Distribution — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `NPR Distrib. Group` | Group header - `Code`, `Description`, `Warehouse Location` |
| `NPR Distrib. Group Members` | Members - `Distribution Group`, `Distribution Member Id`, `Location`, `Distribution Share Pct.` |
| `NPR Distribution Headers` | Plan - `Distribution Id`, `Distribution Group`, `Distribution Type` (Blocked/Manual/Automatic), `Required Date`, `Status` |
| `NPR Distribution Lines` | Lines - `Distribution Id`, `Distribution Line`, `Distribution Group Member`, `Distribution Item`, `Item Hiearachy`, `Item Hiearachy Level`, `Location`, `Date Required`, `Description`, `Avaliable Quantity`, `Demanded Quantity`, `Distribution Quantity`, `Org. Distribution Quantity`, `Item Variant` |
| `NPR Distribution Map` | Document linkage - `Distribution Id`, `Table ID`, `System ID` (links to Purchase Line or Transfer Line) |

## Codeunits

### Codeunit 6151051 "NPR Distribution Mgmt" (Internal)

Key procedures:

- `CreateDistributionItem(DistributionId, ItemHierarchy, DistributionGroups)` — creates distribution lines from item hierarchy members:
  - **Blocked type**: Error
  - **Manual type**: Clears existing lines, iterates group members and hierarchy lines, calculates available quantity (inventory + purchase orders) vs. demanded quantity (from replenishment demand), applies distribution share percentage
  - **Automatic type**: Not yet implemented
- `CreateDistributionDocuments(var DistributionHeaders)` — generates purchase orders and transfer orders from approved distribution lines:
  - Matches distribution lines to open purchase orders by item+location
  - Creates transfer orders for remaining demand using warehouse stock
  - Links resulting documents via `DistribTableMap`
- `CreateTransfOrders(var DistributionLines, TransferQuantity)` — creates transfer header+line from DistributionLines:
  - Uses `NPR Retail Replenishment Setup` for default transit location
  - Creates DistributionMap entries for transfer tracking

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `DistribGroupList` | NPR Distrib. Group | Group list |
| `DistribGroup` | NPR Distrib. Group | Group card |
| `DistribGroupMemberList` | NPR Distrib. Group Members | Member list |
| `DistribGroupMemberCard` | NPR Distrib. Group Members | Member card |
| `DistribGrpMembListpart` | NPR Distrib. Group Members | Member list part |
| `DistribMatrix` | — | Distribution planning matrix |
| `DistributionPlans` | NPR Distribution Headers | Plan list |
| `DistributionPlan` | NPR Distribution Headers | Plan card |
| `DistributionHeaders` | NPR Distribution Headers | Header view |
| `DistributionOrders` | — | Generated document list |
| `DistributionLines` | NPR Distribution Lines | Line detail view |
