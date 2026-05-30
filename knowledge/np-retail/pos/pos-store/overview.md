---
type: concept
tags: [np-retail, pos, pos-store]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Store Module

The POS Store module manages store grouping — allowing stores to be organized into groups for discount assignment, reporting, and configuration purposes.

## Architecture

A simple two-table module providing many-to-many store-to-group relationships. Store groups can be assigned to discount configurations (period discounts, mixed discounts, quantity discounts, total discounts) and coupon types.

### Key Components

- **POSStoreGroup.Table.al** (6014685) — Store group header. Fields: `No.`, `Description`. Constraints: cannot rename groups, deletion cascades to lines and updates dependent configurations (coupons, discounts).
- **POSStoreGroupLine.Table.al** (6014686) — Store group membership lines. Fields: `No.` (group), `POS Store` (store code), `Name` (flowfield from store). Clustered key on `No.` + `POS Store`.
- **POSStoreGroupCard.Page.al** — Card page for creating/editing a store group.
- **POSStoreGroupLines.Page.al** — Subpage showing stores assigned to a group.
- **POSStoreGroups.Page.al** — List page for browsing store groups.

### Delete Cascade

When a store group is deleted:
1. Coupons referencing the group are updated (field cleared with user confirmation)
2. Coupon types referencing the group are updated
3. Group membership lines are deleted
4. Discount store group lines are deleted (with validation that it's not the last store in a discount group)

## Key Business Flows

### Creating Store Groups
1. User creates store group via `POSStoreGroupCard`
2. Adds stores via `POSStoreGroupLines` subpage
3. Group can be assigned to discounts, coupon types

### Assigning Discounts to Store Groups
- Store groups are used in `NPR Disc. Store Group` and `NPR Disc. Store Group Line` configurations
- Period, mixed, quantity, and total discounts can be scoped to specific store groups

## Dependencies

- **POS Core** — `NPR POS Store` for store code/name lookups
- **POS Discount** — Discount store group configurations
- **Commerce/Discount Coupons** — Coupon and coupon type assignments

## Extension Points

- `OnDelete` trigger on store group handles cascading updates to coupons, coupon types, and discount configurations
- Delete validation prevents removal of the last store in a discount group
