---
type: concept
tags: [np-retail, pos, pos-security]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Security Module

The POS Security module defines security profiles for POS terminals — controlling lock/unlock behavior, password protection for sensitive operations, and UI refresh intervals.

## Architecture

A minimal module centered on `NPR POS Security Profile` (table 6014601). Profiles are assigned to POS units and control behavior during security-sensitive scenarios.

### Key Components

- **POSSecurityProfile.Table.al** (6014601) — Security profile definition. Fields:
  - `Code` — Unique identifier
  - `Description` — Display name
  - `Password on Unblock Discount` — Masked admin password for unblocking discounts
  - `Unlock Password` — Code for unlocking the terminal
  - `Lock Timeout` — Enum for auto-lock idle timeout duration
  - `POS Buttons Refresh Time` — Enum for UI refresh interval
- **POSSecurityProfile.Page.al** — Card page for editing a single security profile
- **POSSecurityProfiles.Page.al** — List page for browsing security profiles

## Key Business Flows

### Terminal Lock/Unlock
1. POS unit is idle for > Lock Timeout duration
2. System locks the terminal
3. Operator must enter Unlock Password to resume
4. Failed attempts may trigger audit events

### Discount Override Authorization
1. Cashier attempts to apply discount exceeding thresholds
2. System prompts for Administrator Password
3. Cashier enters password from security profile
4. If correct, discount is unblocked for this transaction

## Dependencies

- **POS Core** — Security profile is referenced by `NPR POS Unit`
- **POS Compliance** — Audit logging of security events

## Extension Points

- `NPR POS View LockTimeout` enum — Extensible for custom timeout durations
- No public events or interfaces defined in this module
