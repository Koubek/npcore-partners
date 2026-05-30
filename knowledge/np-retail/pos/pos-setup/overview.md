---
type: concept
tags: [np-retail, pos, pos-setup]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-action/overview.md
updated: 2026-05-09
---

# POS Setup Module

The POS Setup module provides configuration pages for POS named action profiles and unit selection. These pages are used to configure which POS actions are triggered by specific front-end events (login, item insert, payment, customer selection, etc.).

## Architecture

A UI-focused module providing configuration surfaces for the POS setup system. All changes are stored in the `NPR POS Setup` table (defined in POS Core).

### Key Components

- **POSNamedActionsProfile.Page.al** (6150707) — Card page for configuring named action codes per event type. Fields:
  - Login Action Code
  - Text Enter Action Code
  - Item Insert Action Code
  - Payment Action Code
  - Customer Action Code
  - Lock POS Action Code
  - Unlock POS Action Code
  - OnBeforePaymentView Action Code
  - Idle Timeout Action Code
  - Admin Menu Action Code
  - End of Day Action Code
  - Visual style indicators show when action parameters need refresh
- **POSNamedActionsProfiles.Page.al** — List page for browsing all named actions profiles
- **POSUnitSelection.Page.al** — Page for selecting/assigning POS units to profiles

### Named Actions Pattern

Each action field uses `AssistEdit` trigger to invoke `NPR POS Setup.AssistEdit()` which opens the action selection dialog. Fields are styled with `StyleExpr` to visually indicate when parameters need refreshing.

The page includes a `Refresh Invalid Action Parameters` action that checks and updates action parameters for all configured named actions.

## Key Business Flows

### Configuring Named Actions
1. User opens Named Actions Profile card
2. For each event type, clicks AssistEdit to select action
3. System validates action configuration via `NPR POS Action Management.LookupAction()`
4. Visual indicators show if action parameters need refresh
5. "Refresh Invalid Action Parameters" bulk-updates stale parameters

## Dependencies

- **POS Core** — `NPR POS Setup` table, `NPR POS Action Management` for action validation
- **POS Action** — Action configuration lookup

## Extension Points

- Named action fields are extensible via POS Setup table extensions
- Action parameter management uses `NPR POS Action Param. Mgt.` for refresh logic
