---
type: concept
tags: [np-retail, pos, pos-item-availability]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Item Availability Module

The POS Item Availability module provides real-time inventory availability checking during POS sale transactions. It validates stock levels before sale completion and warns cashiers about potential stockouts.

## Architecture

The module centers around `NPR POS Item-Check Avail.` (codeunit 6059783), which calculates available inventory by combining on-hand inventory, sales order commitments, and unposted POS item entries. Availability is scoped per location with optional cross-location views.

### Key Components

- **POSInventoryProfile.Table.al** (6014637) — Configuration table mapping POS units to inventory profiles. Defines whether `Stockout Warning` is enabled per profile.
- **POSItemCheckAvail.Codeunit.al** (6059783) — Core availability check engine. Calculates item availability by:
  1. Checking item `Stockout Warning` settings (per-item or default from Sales & Receivables Setup)
  2. Computing available inventory as: `Inventory - Qty. on Sales Orders - Unposted POS Qty`
  3. Comparing gross requirements vs. available inventory
  4. Raising `OnItemNotAvailable` integration event for custom handling
- **POSActionCheckAvail.Codeunit.al** (6059785) — POS action workflow implementing `NPR IPOS Workflow`. Delegates to the B variant (`POSActionCheckAvailB`) which runs the actual check.
- **UnpostedPOSItemEntries.Query.al** — Query that reads unposted POS item quantities per item/variant/location. Used by availability calculation to factor in in-flight transactions.

### Check Modes

| Mode | Description |
|------|-------------|
| **Silent** | Checks availability without user prompt; logs results |
| **Confirm** | Shows warning dialog with item details, asks user to confirm or cancel |
| **Scope-based** | Only checks items that changed since last check (compares current vs. snapshot via `SetxDataset`) |

## Key Business Flow

1. User adds item to sale (or modifies quantity)
2. Check is triggered by action (`POSActionCheckAvail`) or programmatically
3. `NPR POS Item-Check Avail.` loads the inventory profile for the POS unit
4. For each sale line, calculates available quantity using `CalcAvailableInventory`
5. If shortage found + profile allows warning, shows `NPR POS Item Avail. Check` page
6. User can proceed or cancel based on `AskConfirmation` flag

## Dependencies

- **POS Core** — `NPR POS Session`, `NPR POS Sale`, `NPR POS Sale Line`, `NPR POS Front End Management`, `NPR POS Unit`
- **Inventory** — `Item-Check Avail.` base availability engine
- **Sentry** — Check execution is traced

## Extension Points

- `OnItemNotAvailable` integration event allows partners to override the availability check UI
- `OnBeforeShowWarningForThisItem` subscriber can filter which items trigger warnings
- Custom inventory profiles can define location-level stockout behavior
