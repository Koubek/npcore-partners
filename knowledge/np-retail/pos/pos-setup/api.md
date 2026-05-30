---
type: reference
tags: [np-retail, pos, pos-setup, pages]
relates:
  - np-retail/pos/pos-setup/overview.md
updated: 2026-05-09
---

# POS Setup API Reference

## Pages

| Page # | Name | Source Table | Key Features |
|--------|------|-------------|-------------|
| 6150707 | NPR POS Named Actions Profile | NPR POS Setup | Card page for mapping events to action codes. Includes 11 named action fields with AssistEdit, style expressions for refresh status, bulk refresh action. |
| 6150708 | NPR POS Named Actions Profiles | NPR POS Setup | List page for browsing all named actions profiles. |
| — | NPR POS Unit Selection | — | Page for selecting/assigning POS units to configuration profiles. |

### NPR POS Named Actions Profile Fields

| Field | Event | Description |
|-------|-------|-------------|
| Login Action Code | On login / session start | Action triggered when cashier logs in |
| Text Enter Action Code | On text entry | Action triggered by text input events |
| Item Insert Action Code | On item addition | Action for adding items to sale |
| Payment Action Code | On payment view | Action when entering payment screen |
| Customer Action Code | On customer selection | Action for customer lookup/selection |
| Lock POS Action Code | On idle lock | Action when terminal auto-locks |
| Unlock POS Action Code | On unlock | Action when terminal is unlocked |
| OnBeforePaymentView Action | Pre-payment | Action before payment view loads |
| Idle Timeout Action Code | On idle timeout | Action on prolonged idle |
| Admin Menu Action Code | On admin menu | Action for admin menu display |
| End of Day Action Code | On EOD trigger | Action for end-of-day balancing (default: BALANCE_V4) |

## Dependencies

| Component | Source Module |
|-----------|-------------|
| NPR POS Setup (table) | POS Core |
| NPR POS Action Management (codeunit) | POS Core |
| NPR POS Action Param. Mgt. (codeunit) | POS Core |
