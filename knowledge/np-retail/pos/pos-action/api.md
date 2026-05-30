---
type: reference
tags: [np-retail, pos, pos-action, tables, codeunits, pages, events]
relates:
  - np-retail/pos/pos-action/overview.md
updated: 2026-05-09
---

# POS Action — API Reference

## Codeunits

| ID | Name | Purpose | Key Procedures |
|----|------|---------|---------------|
| 6014691 | NPR Block/Unblock POS Action | Batch toggle Blocked flag on POS Action records | OnRun (iterates all actions, toggles Blocked) |
| 6150737 | NPR Discover POSAction Seq. | Action sequence discovery | *(Obsolete Pending 2023-06-28 — 0 references)* |
| 6150854 | NPR POS Action - CK Mgt. | Check payment management | *(Obsolete Pending 2023-06-28 — Not used)* |

### Event-Exposing Codeunits

**NPR Block/Unblock POS Action** (6014691):
- `OnBeforePosActionToggleBlocked(var POSAction, var Handled)` — IntegrationEvent(local) — Allows custom logic when toggling blocked state

## Action Subdirectories

Each subdirectory contains a codeunit implementing a specific POS action. Key patterns:

| Subdirectory | Typical Action | Flow |
|-------------|---------------|------|
| Item | Add item to sale | Opens item lookup, calls `POSSaleLine.InsertLine()` |
| ItemLookup | Search items | Opens filtered item card page |
| End Sale | Complete sale | Triggers payment workflows |
| Cancel Sale | Void sale | Reverses sale, creates cancellation entry |
| Discount | Apply discount | Opens discount input dialog, validates |
| Customer Select | Choose customer | Opens customer lookup, sets on sale |
| Customer Insert | Create customer | Opens customer card for inline creation |
| LockPOS | Lock register | Triggers password validation |
| PrintReceipt | Reprint receipt | Opens report selection |
| ChangeView | Navigate views | Sends view change request to frontend |
| Open Drawer | Open cash drawer | Triggers HWC drawer open |
| Quick Login | Fast user login | Passwordless login flow |
| TextEnter | Generic text input | Captures text, triggers `OnTextEnter` |
| RunReport | Run BC report | Launches specified report |
| RunPage | Open BC page | Launches specified page as modal |
| RunObject | Open BC object | Generic object runner |
| SwitchRegister | Change register | Sends register switch to frontend |
| SetVATBGrp | Set VAT bus. group | Updates VAT business group on line |
| SetTaxAreaCode | Set tax area | Updates tax area code on line |
| AssignSerialNo | Assign serial no | Opens serial number assignment |
| AssignLotNo | Assign lot no | Opens lot number assignment |

## Pages

| ID | Name | Type | Purpose |
|----|------|------|---------|
| — | NPR POS Input Box Setups | List | EAN box configuration (shared with Input Box module) |
