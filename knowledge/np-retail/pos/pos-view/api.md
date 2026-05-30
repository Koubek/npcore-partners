---
type: reference
tags: [np-retail, pos, view, pos-view]
relates:
  - np-retail/pos/pos-view/overview.md
updated: 2026-05-09
---

# POS View Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150710 | "NPR POS View" | POS View | PK: Code (Code[10]). Others: Description (Text[30]), Markup (BLOB) | Named view definition. Methods: GetMarkup(): Text, SetMarkup(Text), FindViewByType(ViewType, RegisterCode): Boolean |
| 6059793 | "NPR POS Layout" | POS Layout | PK: Code (Code[20], Clustered). Others: Description (Text[100]), Frontend Properties (BLOB), Template Name (Text[100]), No. of Archived Versions (FlowField) | Complete UI layout definition. Stores full COBWEB JSON markup. OnDelete checks if assigned to any POS unit. Methods: GetLayout(ReadFromDB): Text, SetLayout(Text), AssignedToPOSUnitsFilter(): Text, AssignedToPOSUnits(): JsonArray |
| *(unknown)* | "NPR POS Layout Archive" | POS Layout Archive | PK: Code + Version No. | Archived versions of layouts for rollback |
| *(unknown)* | "NPR POS Default View" | POS Default View | PK: Type + Register Filter | Register-type view defaults with optional register filtering |
| *(unknown)* | "NPR POS Default User View" | POS Default User View | PK: User ID + Type + Register Filter | Per-user view overrides |
| 6060098 | "NPR POS Functionality Profile" | POS Functionality Profile | PK: Code (Code[20]) | Obsolete (Pending, 2023-10-28). Fields: Description, Require Select Member, Require Select Customer |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6059925 | "NPR POS Layout Assistant" | NPR POS Layout Assistant | (OnCustomMethod subscriber) | None (handles frontend method calls) |
| *(unknown)* | "NPR POS Layout Archive Mgt." | NPR POS Layout Archive Mgt. | — | None (archive versioning) |
| *(unknown)* | "NPR POS Ext. Line Format" | POS Ext. Line Format | — | None (extended line format handling) |

### Codeunit Details

**6059925 "NPR POS Layout Assistant"** — Frontend layout operations handler via `OnCustomMethod` subscription:
- `RefreshPOSLayoutData(Context, FrontEnd)`: Returns all layouts (or filtered by layoutId), with full JSON properties (id, caption, template, blob, assignedToPOSUnits)
- `SavePOSLayoutData(Context)`: Handles CRUD (new/modify/delete) based on `type_of_change` field in JSON payload
- `AssignPOSLayout(Context)`: Assigns a layout to a POS unit, updates current session if active
- `GetAssignedPOSLayout(Context, FrontEnd)`: Returns the layout assigned to the current POS unit
- `SelectEntity`: Opens lookup pages (Item, Customer, Payment Method, POS Action) and returns selected entity code + name + parameters
- `GenerateWorkflowList(Context, FrontEnd)`: Discovers actions, serializes their workflows (JSON), includes data binding, custom JavaScript, blocking UI, parameter sets
- `GetPOSActionParameterList` / `AdjustPOSActionParameters`: CRUD for action parameters on a layout
- `GetUserCultureName(Context, FrontEnd)`: Returns culture name via `TypeHelper.GetCultureName()`
- `GetPOSMenus(Context, FrontEnd)`: Returns menu structure via `POSUIManagement.InitializeMenus()`
- `GetUserImpersonationOAuthToken` / `RefreshUserImpersonationOAuthToken`: OAuth2 token management for POS webservice sessions using Azure AD + Key Vault client secret

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR POS View List" | POS View List | "NPR POS View" | View list |
| *(unknown)* | "NPR POS View Card" | POS View Card | "NPR POS View" | View card/editor |
| *(unknown)* | "NPR POS View Profiles" | POS View Profiles | — | View profile configuration |
| *(unknown)* | "NPR POS View Profile Card" | POS View Profile Card | — | Profile card |
| *(unknown)* | "NPR POS View Picture" | POS View Picture | — | View image/screenshot |
| *(unknown)* | "NPR POS Layouts" | POS Layouts | "NPR POS Layout" | Layout list |
| *(unknown)* | "NPR POS Default Views" | POS Default Views | "NPR POS Default View" | Default view configuration |
| *(unknown)* | "NPR POS Default User Views" | POS Default User Views | "NPR POS Default User View" | Per-user default views |
| *(unknown)* | "ArchivedPOSLayouts" | Archived POS Layouts | "NPR POS Layout Archive" | Archived version list |
| *(unknown)* | "NPR POS Layout Deploy From Azure" | POS Layout Deploy From Azure | — | Layout deployment from Azure |
| *(unknown)* | "NPR POS Functionality Profiles" | POS Functionality Profiles | "NPR POS Functionality Profile" | (Obsolete) Profile list |
| *(unknown)* | "NPR POS Functionality Profile" | POS Functionality Profile | "NPR POS Functionality Profile" | (Obsolete) Profile card |
