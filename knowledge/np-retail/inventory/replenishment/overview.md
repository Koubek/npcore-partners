---
type: concept
tags: [np-retail, inventory, replenishment]
relates: [inventory/item-hierarchy/overview.md]
updated: 2026-05-09
---

# Replenishment — Overview

Manages **retail store replenishment** — creating demand lines from item hierarchies and distribution groups, calculating demanded quantities, and generating purchase orders directly from confirmed campaign demands.

## Purpose

- Generate replenishment demand lines from **Item Hierarchy** + **Distribution Group** combinations per location
- **Default demand calculation**: Sales history-based (item ledger entries within grace period), considering inventory, purchase/sales orders, transit quantities
- **Pluggable demand calc**: Custom codeunit specified in setup replaces default logic
- **Campaign integration**: Links to retail campaign discounts (period/mix) for campaign unit prices and costs
- **Direct purchase order creation**: From confirmed demand lines with vendor, location, campaign, and due date grouping
- **SKU auto-creation**: Creates stockkeeping units per location when configured

## Key Tables (2)

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Item Repl. by Store` | 6014474 | Per-store-item replenishment parameters (reorder point/qty, max inventory) |
| `NPR Retail Replenishment Setup` | 6151062 | Global setup — demand calc codeunit, default transit location |

## Key Codeunits (1)

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Retail Replenish. Mgt.` | 6151052 | Demand line creation, default demand calc, campaign purchase order generation |

## Integration Points

- **Item Hierarchy**: Demand lines are created from hierarchy lines filtered by item hierarchy ID
- **Distribution Groups**: Lines are created per distribution group member (location)
- **Retail Campaign**: Period and mix discounts linked to hierarchy lines are mapped onto demand lines
- **Purchase Documents**: Confirmed demand lines can generate purchase orders directly
