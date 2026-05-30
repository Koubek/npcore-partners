---
type: concept
tags: [np-retail, pos, unit, pos-unit]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-payment-bin/overview.md
  - np-retail/pos/pos-view/overview.md
updated: 2026-05-09
---

# POS Unit Module

The POS Unit module manages POS unit grouping, hardware profiles, event assignments, and receipt text configuration. It provides organizational structuring for POS registers/devices beyond what the core POS Unit table offers.

## Architecture

This module extends the POS Core unit management with additional grouping and configuration capabilities:

### POS Unit Groups

Unit Groups (`"NPR POS Unit Group"`, table 6014684) allow logical grouping of POS units. Each group has a code and description. Group membership is defined via `"NPR POS Unit Group Line"` records. The groups are used for:
- Salesperson assignment (via Salesperson/Purchaser table's `NPR POS Unit Group` field)
- Bulk configuration targeting

### Hardware Profiles

The `"NPR POS Hardware Profile"` table (6151176) stores hardware-level configuration per profile code:
- IP Address — network address of the POS hardware device
- Used for peripheral device targeting (printers, scanners, etc.)

### POS Unit Events

The `"NPR POS Unit Event"` table (6150631) links POS units to active events (Job table entries where `NPR Event = true`):
- `FindActiveEvent(POSUnitNo)` — Returns the currently active event for a unit
- `SetActiveEvent(POSUnitNo, EventNo)` — Assigns an event to a unit
- `DeleteActiveEvent(POSUnitNo)` — Clears the event assignment
- Used for time-limited promotions or event-based pricing

### Receipt Text Configuration

- `"NPR POS Ticket Receipt Text"` table — Stores receipt footer/header text definitions
- `"NPR POS Unit Rcpt Text Profile"` table — Profiles that map receipt text to POS units
- Allows cashier-specific or register-specific receipt messaging

### POS Unit to Bin Relation

The `"NPR POS Unit to Bin Relation"` page links POS units to payment bins, enabling register-to-drawer mapping.

## Dependencies

- **POS Core** — NPR POS Unit table (extended by this module's relations)
- **POS Payment Bin** — Bin relations for drawer mapping

## Extension Points

No direct extension points (integration events) in this module — it serves as configuration data management for POS unit grouping and hardware profiles.
