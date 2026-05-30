---
type: concept
tags: [np-retail, inventory, item-status]
relates: []
updated: 2026-05-09
---

# Item Status — Overview

Defines **item lifecycle statuses** that control which operations are allowed on an item (insert into sales/purchase documents, delete, rename, post). Each status is a configurable code with per-operation permission flags.

## Purpose

- Define named statuses (e.g., `01NEW`, `ACTIVE`, `DISCONTINUED`) with boolean toggles for each allowed operation
- Enforce exactly one **Initial** status — auto-assigned to new items on insert
- Block disallowed operations with user-friendly error messages at the point of action
- Integrates with `Item`, `Sales Line`, `Purchase Line`, and `Item Journal Line` via event subscribers

## Key Tables (1)

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Item Status` | 6060054 | Status master — code, description, per-operation permission flags |

## Key Codeunits (1)

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Item Status Mgt.` | 6060055 | Event subscribers enforcing status rules on CRUD operations |

## Integration Points

- **Item OnBeforeInsert**: Auto-assigns the Initial status if none set
- **Item OnBeforeDelete**: Blocks delete if status `Delete Allowed = false`
- **Item OnBeforeRename**: Blocks rename if status `Rename Allowed = false`
- **Sales Line OnBeforeValidate(No.)**: Blocks item insertion into sales if `Sales Insert = false`
- **Purchase Line OnBeforeValidate(No.)**: Blocks item insertion into purchases if `Purchase Insert = false`
- **Item Jnl.-Check Line OnAfterCheckItemJnlLine**: Blocks purchase/sale posting if status `Purchase Post` / `Sales Post = false`
