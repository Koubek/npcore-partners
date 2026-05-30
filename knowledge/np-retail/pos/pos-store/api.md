---
type: reference
tags: [np-retail, pos, pos-store, tables, pages]
relates:
  - np-retail/pos/pos-store/overview.md
updated: 2026-05-09
---

# POS Store API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6014685 | NPR POS Store Group | No., Description | Store group header. Cannot be renamed. Delete cascade: updates coupons, coupon types, deletes membership lines, validates discount store group integrity. |
| 6014686 | NPR POS Store Group Line | No. (Group), POS Store, Name (flowfield) | Many-to-many membership: groups ↔ stores. Clustered composite key. |

### NPR POS Store Group Delete Triggers

| Trigger | Action |
|---------|--------|
| OnDelete | 1. UpdateCoupons() — Prompts user, clears `POS Store Group` field on `NPR NpDc Coupon` records |
| | 2. UpdateCouponType() — Clears `POS Store Group` on `NPR NpDc Coupon Type` records |
| | 3. UpdateLines() — Deletes all `NPR POS Store Group Line` entries for this group |
| | 4. DeleteDiscStoreGroups() — Deletes `NPR Disc. Store Group Line` entries; validates no discount depends on this being the last store in its Disc. Store Group |
| OnRename | Errors with "You cannot rename a [Table Caption]" |

## Pages

| Page # | Name | Source Table | Usage |
|--------|------|-------------|-------|
| 6014687 | NPR POS Store Groups | NPR POS Store Group | List page for browsing store groups |
| 6014688 | NPR POS Store Group Card | NPR POS Store Group | Card page for creating/editing a store group |
| 6014689 | NPR POS Store Group Lines | NPR POS Store Group Line | Subpage for assigning stores to a group |

## Dependencies

| Component | Source Module |
|-----------|-------------|
| NPR POS Store | POS Core (table for store lookups) |
| NPR Disc. Store Group / Disc. Store Group Line | POS Discount |
| NPR NpDc Coupon / NPR NpDc Coupon Type | Commerce/Discount Coupons |
