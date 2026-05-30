---
type: reference
tags: [np-retail, inventory, item-status, tables, codeunits, pages]
relates: [inventory/item-status/overview.md]
updated: 2026-05-09
---

# Item Status — API Reference

## Tables

### Table 6060054 "NPR Item Status"

Status master. Fields:

| Field | Type | Purpose |
|-------|------|---------|
| `Code` | Code[10] | Primary key, unique status identifier |
| `Description` | Text[50] | Display name |
| `Initial` | Boolean | Only one status can be Initial — auto-assigned to new items |
| `Blocked` | Boolean | Whether status is blocked |
| `Delete Allowed` | Boolean | Allow item deletion (default true) |
| `Rename Allowed` | Boolean | Allow item rename (default true) |
| `Purchase Insert` | Boolean | Allow item on purchase lines (default true) |
| `Purchase Release` | Boolean | Allow purchase document release (default true) |
| `Purchase Post` | Boolean | Allow purchase posting (default true) |
| `Sales Insert` | Boolean | Allow item on sales lines (default true) |
| `Sales Release` | Boolean | Allow sales document release (default true) |
| `Sales Post` | Boolean | Allow sales posting (default true) |

**Triggers:**
- **OnValidate(Initial)**: Ensures only one status has `Initial = true` — errors if another already exists
- **OnValidate(Purchase Insert/Release/Post, Sales Insert/Release/Post)**: Via `CheckOtherStatusExists` — ensures at least one other status has the flag enabled before allowing disable

## Codeunits

### Codeunit 6060055 "NPR Item Status Mgt."

Enforces status rules via event subscribers. No public procedures exposed — all logic is event-driven.

**Subscribed Events:**

| Event | Purpose |
|-------|---------|
| `Table Item - OnBeforeInsertEvent` | Auto-assigns Initial status (`01NEW`) to items without a status set |
| `Table Item - OnBeforeDeleteEvent` | Blocks delete when status `Delete Allowed = false` |
| `Table Item - OnBeforeRenameEvent` | Blocks rename when status `Rename Allowed = false` |
| `Table Sales Line - OnBeforeValidateEvent(No.)` | Blocks sales line item insert when `Sales Insert = false` |
| `Table Purchase Line - OnBeforeValidateEvent(No.)` | Blocks purchase line item insert when `Purchase Insert = false` |
| `Codeunit Item Jnl.-Check Line - OnAfterCheckItemJnlLine` | Blocks item journal posting (Purchase/Sale) based on status permissions |

**Helper:**
- `CreateInitialStatus(): Code[10]` — Creates or ensures existence of `01NEW` status with Initial=true

## Pages

| Page | ID | Type | Source Table |
|------|----|------|-------------|
| NPR Item Status | 6060056 | List | NPR Item Status |
