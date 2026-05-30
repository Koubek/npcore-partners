---
type: concept
tags: [np-retail, pos, pos-core, control-addin]
relates:
  - np-retail/infrastructure/sentry/overview.md
  - np-retail/pos/pos-payment/overview.md
  - np-retail/infrastructure/api/overview.md
updated: 2026-05-09
---

# POS Core Module

POS Core is the heart of NP Retail. It manages POS sessions, POS units, the React SPA frontend (Dragonglass), sale lifecycle, and the AL-JavaScript communication bridge.

## Dragonglass Control Add-in

Page `6150750 "NPR POS (Dragonglass)"` renders a `usercontrol(NPR Dragonglass)` — the control add-in that hosts the React SPA frontend. Communication between AL and JavaScript happens through:

- **InvokeMethod** trigger — dispatched by the frontend; handles KeepAlive, FrameworkReady, and all business methods
- **ControlAddinResponse** — sends batched JSON responses back to the frontend via `DragonglassResponseQueue`
- **Background Tasks** — `PageBackgroundTaskCompleted/Error` triggers delegate to `NPR POS Backgr. Task Manager`

## Key Business Flows

### Session Lifecycle
1. `POSDragonglass.Page.al` opens → `OnOpenPage` creates a page GUID
2. Frontend sends `FrameworkReady` → `POSSession.Constructor()` initializes the single-instance session
3. `InitializationComplete` is called from the frontend → `InitializeUI()` + `InitializeSession()`
4. KeepAlive fires periodically to prevent NST session timeout

### Sale Lifecycle
1. `StartTransaction()` → `POSSale.InitializeNewSale()` inserts `NPR POS Sale` record
2. Lines are added via `POSSaleLine.InsertLine()`
3. `TryEndSale()` → validates, creates `NPR POS Entry`, runs OnFinishSale workflows, deletes the sale
4. After-sale execution order: CleanCash → EjectPaymentBin → Loyalty → PrintReceipt → TaxFreeVoucher → MemberPrint → TicketPrint → WalletPrint → CollectDoc → EmailReceipt

### POS-to-BC Communication Architecture
- The frontend calls `InvokeMethod` with method name + JSON parameters
- `POSDragonglassRunMethod` routes to `POSJavaScriptInterface.InvokeMethod()`
- `POSJavaScriptInterface` dispatches to method handlers: `OnAction20` (v3), `OnAction` (v1), `BeforeWorkflow`, `Login`, `TextEnter`, `Unlock`, etc.
- Custom methods are dispatched via the `OnCustomMethod` integration event
- The `DragonglassResponseQueue` batches all frontend-bound responses into a single JSON array per invocation

### Method Dispatch Table (POSJavaScriptInterface.InvokeMethod)

| Method | Handler | Description |
|--------|---------|-------------|
| OnAction20 | `Method_RunActionV3` → `POSWorkflow30.RunIfAction30` | Workflow v3 action execution, falls back to v2 |
| OnAction | `Method_RunActionV1` → `InvokeAction` | Legacy v1 action execution |
| AbortWorkflow | `Method_AbortWorkflow` | Abort single workflow by ID |
| AbortAllWorkflows | `Method_AbortAllWorkflows` | Abort all running workflows |
| BeforeWorkflow | `Method_BeforeWorkflow` | RequestContext stage — validates action parameters before frontend shows the workflow |
| Login | `Method_Login` | Triggers the Login action |
| TextEnter | `Method_TextEnter` | Triggers the TextEnter action |
| FrontEndId | `HardwareInitializationComplete` | Signals HWC hardware init done |
| Unlock | `Method_Unlock` | Triggers unlock action or switches to sale view |
| InitializationComplete | `InitializationComplete` | Finalizes POS session init |
| (others) | `InvokeCustomMethod` → `OnCustomMethod` event | Extension point for partners |

### Dragonglass API (OData V4)
Codeunit `6060078 "NPR POS Dragonglass API"` exposes the same methods via OData v4 (`/odata/dragonglass`), enabling:
- Self-service POS outside BC iframe (no BC page rendering)
- Standard HTTP request/response architecture
- Load-balanced across NSTs (no sticky sessions)

### Secure Method Validation
Password validation for sensitive actions:
- ANY-SALESP — any salesperson password
- CUR-SALESP — current salesperson password
- SUPERVISOR — supervisor password
- REGIST-PWD — register open password
- ADMIN-PWD — system admin password

Supports optional audit logging via `OnSecureMethodValidatePasswordWithLog`.

### Feature Flags (NPR Feature Management)
POS Core registers several feature flags:
- Retail (enabled by default)
- POSStatisticsDashboard (disabled)
- POSWebserviceSessions (disabled, irreversible)
- ScenariosObsoleted (disabled)
- NewAttractionPrintExperience (disabled, irreversible)

## Dependencies

- **Sentry** — every method invocation is wrapped in Sentry spans/transactions for observability
- **API** — Dragonglass API codeunit can be exposed as OData v4 webservice
- **POS Payment** — payment processing, payment line management
- **POS Front End Management** — frontend communication (referenced but defined in another module)
- **POS Setup** — setup/configuration management (referenced but defined in another module)
- **POS UI Management** — menu/layout initialization (referenced but defined in another module)

## Extension Points for Partners

Partners can subscribe to:
- `OnCustomMethod` — handle custom frontend method invocations
- `OnAction` — register custom workflow actions
- `OnBeforeEndSale` / `OnAfterEndSale` — hook into sale completion
- `OnBeforeInsertPOSSaleLine` / `OnAfterInsertPOSSaleLine` — intercept line additions
- `OnDiscoverSecureMethods` — register custom secure method types
- `OnRequireCustom` — handle custom "require" types for resource loading
