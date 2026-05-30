---
type: concept
tags: [np-retail, inventory, item-hierarchy]
relates: []
updated: 2026-05-09
---

# Item Hierarchy — Overview

Defines multi-level **item hierarchies** for retail replenishment, campaign management, and sales analysis. Each hierarchy consists of levels that link to BC tables (e.g., Item Category, Item, Vendor) to build a tree structure of items.

## Purpose

- Create custom tree structures for item grouping (e.g., by department → category → item)
- Link levels to any BC table with configurable key/description fields
- Automatically generate hierarchy lines from level definitions
- Support retail campaign discount integration — create hierarchy lines from Period/Mixed discount campaigns
- Used by replenishment module (`NPR Retail Repl. Demand Line`) for demand forecasting

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Item Hierarchy` | 6151050 | Hierarchy header (code, description, type, level count) |
| `NPR Item Hierarchy Level` | 6151051 | Level definition (linked table, fields, filters) |
| `NPR Item Hierarchy Line` | 6151052 | Generated hierarchy lines (one per item/link) |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Item Hierarchy Mgmt.` | 6151050 | Line generation, campaign integration |

## Integration Points

- Creates lines linked to discount campaigns (`NPR Retail Campaign Header`/`Line`)
- Supports Period and Mixed discount types with item group expansion
- Used by distribution setup for replenishment
- Supports Sales/Purchase hierarchy types
