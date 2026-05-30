---
type: concept
tags: [np-retail, inventory, cost-adjmt]
relates: [inventory/inventory/overview.md]
updated: 2026-05-09
---

# Inventory Cost Adjmt — Overview

Automates inventory cost adjustment and inventory-to-GL posting via scheduled job queue entries. An alternative to the standard BC reports `Adjust Cost - Item Entries` (Report 794) and `Post Inventory Cost to G/L` (Report 795).

## Purpose

- Schedule recurring **cost adjustment** runs (Report `Adjust Cost - Item Entries`)
- Schedule recurring **inventory-to-GL posting** via `NPR Post Inventory Cost to G/L`
- Replace the standard `Post Inventory Cost to G/L` codeunit with NP Retail's own (CU 6014683) for report-inbox support
- Auto-create job queue entries when the user enables automatic cost adjustment/posting in Inventory Setup
- Protect job queue entries from accidental modification

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Post Inventory Cost to G/L` | 6014683 | Alternative to standard CU 2846; saves report output to Report Inbox |
| `NPR Schedule Invt. Cost Adj.` | 6014684 | Creates recurring job queue entries for cost adj. and GL posting |

## Integration Points

- Listens to `OnAfterValidateEvent` on `Automatic Cost Posting` and `Automatic Cost Adjustment` fields in `Inventory Setup` page
- Integrates with `NPR Job Queue Management` for protected, customizable job queue entries
- Marks cost adjustment queues as `NprCustomizableJob` so users can tweak schedule
- Sets job timeout to 4 hours
