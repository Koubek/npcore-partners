---
type: concept
tags: [np-retail, pos, view, pos-view]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-action/overview.md
updated: 2026-05-09
---

# POS View Module

The POS View module manages the visual layout and frontend configuration of the NP Retail POS Dragonglass interface. It handles view definitions, layout templates, default view resolution, layout archiving, and functionality profiles.

## Architecture

The POS interface is composed of **Views** (screens/layouts) and **Layouts** (the COBWEB/JSON-based UI markup). The module manages the lifecycle of both from creation to deployment and archiving.

### Views

The `"NPR POS View"` table (6150710) defines named views with:
- **Code** — Unique identifier (10 chars)
- **Description** — Display name
- **Markup** — BLOB containing view structure (JSON/UI definition)

**Default View Resolution** (`FindViewByType`):
1. Check user-specific override (`"NPR POS Default User View"`) — if set, use that view
2. Check register-specific default (`"NPR POS Default View"` with exact register filter)
3. Check filtered register default (`"NPR POS Default View"` with register filter pattern)
4. Fall back to global default (no register filter)

### Layouts

The `"NPR POS Layout"` table (6059793) stores complete UI layouts:
- **Code** — Unique ID (20 chars)
- **Description** — Display name
- **Frontend Properties** — BLOB with the full layout JSON (COBWEB format)
- **Template Name** — Optional template name for the layout
- **No. of Archived Versions** — FlowField counting archive entries

Layouts are assigned to POS units via the `"POS Layout Code"` field on the POS Unit table.

### Layout Assistant

The `"NPR POS Layout Assistant"` codeunit (6059925) handles real-time layout operations from the frontend via `OnCustomMethod` subscription:
- `RequestPOSLayoutData` / `SavePOSLayoutData` — CRUD operations on layouts
- `AssignPOSLayout` / `GetAssignedPOSLayout` — Layout-to-unit assignment
- Entity selectors — `SelectItem`, `SelectCustomer`, `SelectPaymentMethod`, `SelectPOSAction` with parameter handling
- `GenerateWorkflowList` — Returns available workflows (actions) with parameters
- `RequestWorkflowList` — Action discovery and workflow generation
- `UserCulture` — Returns current user culture for UI localization
- `LegacyPOSMenus` — Returns menu structure for backward compatibility
- `GetUserImpersonationOAuthToken` / `RefreshUserImpersonationOAuthToken` — OAuth token management for webservice sessions

### Layout Archiving

The `"NPR POS Layout Archive"` table and `"NPR POS Layout Archive Mgt."` codeunit manage versioning of layouts. When a layout is modified, the previous version is archived with a version number, enabling rollback.

### Default Views

- `"NPR POS Default View"` — Register-type-specific default view assignments with optional register filter
- `"NPR POS Default User View"` — Per-user view overrides

### Functionality Profiles (Obsolete)

The `"NPR POS Functionality Profile"` table (6060098) was an early configuration mechanism for requiring customer/member selection at login. This functionality has been moved to login action parameters.

## Dependencies

- **POS Core** — POS Unit (layout assignment), frontend management (responses)
- **POS Action** — Workflow/action discovery
- **POS Setup** — Configured through setup pages

## Extension Points

Partners can extend layout customization by:
1. Subscribing to `OnCustomMethod` on `"NPR POS JavaScript Interface"` (though the assistant handles most layout operations)
2. Creating layouts through the standard layout editor UI that the assistant exposes
