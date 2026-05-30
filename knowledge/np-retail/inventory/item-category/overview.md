---
type: concept
tags: [np-retail, inventory, item-category]
relates: []
updated: 2026-05-09
---

# Item Category — Overview

Extends the standard BC **Item Category** functionality with NP Retail-specific fields, dimension integration, item template creation, and reporting buffers. Provides the tooling to manage categories as a product hierarchy with inherited attributes.

## Purpose

- Add retail-specific fields to Item Categories (dimensions, templates, blocking, Shopify sync)
- Automatically create **Item Templates** (Config. Templates) from category defaults
- Bulk-create **Items** from category templates
- Inherit/copy category setup (dimensions, templates) to subcategories
- Provide category-based reporting via the `NPR Item Category Buffer` temporary table
- Support dimension propagation from category → subcategories → items

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Item Category Buffer` | 6059807 | Temporary reporting buffer with calc/detail fields |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Item Category Mgt.` | 6014456 | Category management: templates, dimensions, buffers, reporting |

## Integration Points

- Extends standard `Item Categories` and `Item Category Card` pages with NP Retail fields/actions
- Queries combine `Item Ledger Entry` / `NPR POS Entry Sales Line` with category dimensions
- Shopify integration for category synchronization (BC21+)
