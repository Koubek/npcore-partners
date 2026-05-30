---
type: reference
tags: [np-retail, pos, pos-core, tables, codeunits, events, control-addin, pages, enums, interfaces, queries]
relates: [np-retail/pos/pos-core/overview.md]
updated: 2026-05-09
---

# POS Core — API Reference

## Tables

| ID | Name | Caption | Key Fields | Notes |
|----|------|---------|------------|-------|
| 6014405 | NPR POS Sale | POS Sale | Register No., Sales Ticket No. | Sale header; also has key ByUserID |
| 6014406 | NPR POS Sale Line | POS Sale Line | Register No., Sales Ticket No., Line No. | Sale lines; PasteIsValid=false |
| 6014487 | NPR POS Turnover Calc. Buffer | POS Turnover Calc. Buffer | Entry No. (clustered PK) | Temporary table for turnover stats |
| 6014621 | NPR POS Web Font | POS Web Font | Code, Company Name | Web font definitions; DataPerCompany=false; Obsolete Pending 2024-02-28 |
| 6014624 | NPR Web Client Dependency | Web Client Dependency | Type, Code | JS/CSS/HTML/SVG/DataUri; DataPerCompany=false; Obsolete Pending 2024-02-28 |
| 6150702 | NPR POS Localized Caption | Localized Caption | Record ID, Field No., Caption ID, Language Code | Caption localization (NPR5.37) |
| 6150725 | NPR POS Secure Method | POS Secure Method | Code | Secure method definitions (NPR5.43) |
| 6150786 | NPR Execution Order On Sale | — | Sequence No. (clustered PK) | Temporary table for after-sale execution order |
| — | NPR POS Sale Media Info | POS Sale Media Info | — | (from _public) Sale media attachments |

Additional tables defined in _public/:
- NPR POS Sale (same as 6014405 — re-exported from _public)
- NPR POS Sale Line (same as 6014406 — re-exported from _public)
- NPR POS Sale Media Info

## Tables Detail

### NPR POS Sale (6014405)
Key fields: `Register No.` (Code[10]), `Sales Ticket No.` (Code[20]), `POS Store Code`, `Salesperson Code`, `Date`, `Start Time`, `Customer No.`, `Location Code`, `Amount` (flowfield), `Amount Including VAT` (flowfield), `Payment Amount` (flowfield), `Prices Including VAT`, `Sales Document Type`, `Sales Document No.`, `Dimension Set ID`.

### NPR POS Sale Line (6014406)
Key fields: `Register No.`, `Sales Ticket No.`, `Line No.`, `Line Type` (enum NPR POS Sale Line Type), `No.`, `Description`, `Unit of Measure Code`, `Quantity`, `Unit Price`, `VAT %`, `Discount %`, `Discount Amount`, `Amount`, `Amount Including VAT`, `Serial No.`, `Lot No.`, `Variant Code`, `Location Code`, `Bin Code`, `Line Amount`.

Line Types: Item, Item Category, POS Payment, BOM List, Customer Deposit, Comment, Rounding, GL Payment, Issue Voucher.

### NPR POS Localized Caption (6150702)
Fields: `Record ID` (RecordID), `Field No.` (Integer), `Caption ID` (Text[50]), `Language Code` (Code[10]), Caption (Text[250]), Extended Caption (BLOB), Screen Sort Order (Integer), From Original Table (Boolean).

### NPR POS Secure Method (6150725)
Fields: `Code` (Code[10]), Description (Text[30]), Type (Option: Custom, Password Client, Password Server).

### NPR POS Web Font (6014621) [Obsolete Pending 2024-02-28]
Fields: `Code` (Code[10]), `Company Name` (Code[30]), Name (Text[50]), Font Face (Text[80]), Prefix (Text[30]), Woff (BLOB), Css (BLOB).

### NPR Web Client Dependency (6014624) [Obsolete Pending 2024-02-28]
Fields: `Type` (Option: JavaScript, CSS, HTML, SVG, DataUri), `Code` (Code[10]), Description (Text[80]), BLOB.

### NPR Execution Order On Sale (6150786) [Temporary]
Fields: `Sequence No.` (Integer), Codeunit ID (Integer), Error Msg (Text[250]).

## Codeunits

| ID | Name | Caption / Purpose | Key Procedures |
|----|------|-------------------|----------------|
| 6014428 | NPR POS After Sale Execution | After-sale workflow runner | RunAfterEndSale, OnFinishSale |
| 6014451 | NPR POS Setup Safety Check | Validates BC setup on init | ValidateSetup, ValidateSalesTicketNumberSeriesGapAllowed, ValidateNotAutoCostMgt |
| 6014561 | NPR Image Format | Image format detection from binary headers | GetImageExtensionFromHeader, ByteToHex |
| 6014575 | NPR HWC Response Method | HWC response handler (obsolete, pending 2023-06-28) | OnHardwareConnectorResponse (event) |
| 6014666 | NPR JS Interface Error Handler | Error-safe JS interface invocation wrapper | InvokeOnActionThroughOnRun, InvokeOnBeforeWorkflowThroughOnRun, InvokeCustomMethodThroughOnRun |
| 6060078 | NPR POS Dragonglass API | OData V4 HTTP API for POS (headless) | InvokeMethod, InitPOSDragonglassService |
| 6060079 | NPR Dragonglass Response Queue | Batches frontend-bound responses | QueueInvokeFrontendRequest, PopQueuedRequests |
| 6060103 | NPR POS Dragonglass Run Method | Routes methods to JS interface | SetMethodParameters, Run |
| 6060137 | NPR Scenario Obsoleted Feature | Feature flag: ScenariosObsoleted | AddFeature, IsFeatureEnabled, SetFeatureEnabled |
| 6150636 | NPR POS Rounding | Sale rounding line insertion | InsertRounding, InsertLine, DeleteExistingRoundingLines |
| 6150651 | NPR POS Stat Dashboard Feature | Feature flag: POSStatisticsDashboard | AddFeature, IsFeatureEnabled, SetFeatureEnabled |
| 6150700 | NPR POS Session | Central POS session manager (SingleInstance) | Constructor, InitializeUI, InitializeSession, StartPOSSession, StartTransaction, EndSale, ChangeView*, GetSetup, GetSaleContext |
| 6150701 | NPR POS JavaScript Interface | AL↔JS method dispatch bridge | Initialize, InvokeAction, InvokeMethod, InvokeCustomMethod |
| 6150703 | NPR POS JSON Management | JSON parsing utilities (obsolete, pending 2023-06-28) | InitializeJObjectParser, SetScope, GetString, GetInteger, GetBoolean, GetDecimal, etc. |
| 6150705 | NPR POS Sale | Sale lifecycle management | InitializeAtLogin, InitializeNewSale, InsertSale, TryEndSale, TryEndDirectSaleWithBalancing, ValidateSaleBeforeEnd |
| 6150706 | NPR POS Sale Line | Sale line CRUD | Init, InsertLine, DeleteLine, SetQuantity, SetUoM, SetUnitPrice, SetLocation, CalculateBalance |
| 6150719 | NPR POS Action Management | Action configuration validation | LookupAction, IsValidActionConfiguration |
| 6150729 | NPR POS Sales Print Mgt. | Receipt printing on sale | PrintPOSEntrySalesReceipt |
| 6150735 | NPR POS Workflows 2.0: Require | Workflow v2 resource loading (Require/action/script/image/picture.item) | OnRequire, RequireAction, RequireScript, RequireImage, RequireItemPicture |
| 6150736 | NPR POS Secure Method Svrside | Server-side password validation | SecureMethodValidate, ConfirmPassword, RejectPassword; validates ANY-SALESP/CUR-SALESP/SUPERVISOR/REGIST-PWD/ADMIN-PWD |
| 6150740 | NPR POS Method - Wysiwyg | WYSIWYG menu editor backend | OnWysiwygMethod, SaveConfiguration, LookupAction, LookupItem, LookupCustomer, LookupParameters, LookupPopup |
| 6150741 | NPR POS Method - Kiosk | Kiosk unlock PIN validation | OnUnlockKiosk |
| 6150744 | NPR New Attraction Print Exp | Feature flag: NewAttractionPrintExperience | AddFeature, IsFeatureEnabled, SetFeatureEnabled |
| 6150745 | NPR POS Session Finalizer | Session cleanup on RoleCenter close | OnRoleCenterOpen → ClearAll |
| 6150747 | NPR POSMethod: Set Dragonglass | SetDragonglass method handler | OnSetDragonglass |
| 6150748 | NPR POS Run Workflow | (obsolete, pending 2023-06-28) | — |
| 6150751 | NPR Framework: Dragonglass | Control addin framework wrapper (implements NPR Framework Interface) | Constructor, InvokeFrontEndAsync |
| 6151032 | NPR POS Tracking Utils | Serial/lot number tracking validation | SerialNumberCanBeUsedByItem, SelectSerialNoFromList, ValidateSerialNo, LotCanBeUsedByItem, ValidateLotNo |
| 6151043 | NPR POS Secure Method Helper | Secure method context (SingleInstance) | AddContextId, AddSalespersonCodeToContext, ClearAll, GetSalespersonCode |
| 6151432 | NPR Retail Feature | Feature flag: Retail (enabled by default) | AddFeature, IsFeatureEnabled, SetFeatureEnabled |
| 6248379 | NPR POS Webservice Sessions | Feature flag: POSWebserviceSessions (irreversible) | AddFeature, IsFeatureEnabled, SetFeatureEnabled |

Additional codeunits in _public/:
- POSCaptionManagement.Codeunit.al
- POSDragonglassAPI.Codeunit.al (same as 6060078)
- POSJSONManagement.Codeunit.al (same as 6150703)
- POSJavaScriptInterface.Codeunit.al (same as 6150701)
- POSManagePOSUnit.Codeunit.al
- POSPaymentLine.Codeunit.al
- POSPrintReceiptOnSale.Codeunit.al
- POSSale.Codeunit.al (same as 6150705)
- POSSaleLine.Codeunit.al (same as 6150706)
- POSTrackingUtilsPublic.Codeunit.al
- POSUIManagement.Codeunit.al
- POSWF20State.Codeunit.al
- POSWorkflows20.Codeunit.al
- MoveEntries.Codeunit.al

Codeunits in subdirectories:
- Data/: DataColumn, DataSet, DataStore
- Front-End Async/: WebFont, FontDefinition (interface), FrontEndAsyncRequest (interface), Async Requests/
- Menus/: POSMenu, POSMenuButton, ISubMenu (interface), Actions/
- View/: ViewType (enum), _public/
- Workflow V3/: POSRefreshWorkflows, POSWorkflow30, UnknownWorkflow, WorkflowCaptionBuffer, _public/
- Workflows/: Workflow, WorkflowStep
- NPEmail POS Receipt OnSale/: NPEmailPOSReceiptOnSale
- Data Source Extension Field/: (directory)
- LoadingBugDummyFiles/: (directory)

## Pages

| ID | Name | Caption / Type | Source Table | Notes |
|----|------|----------------|-------------|-------|
| 6150750 | NPR POS (Dragonglass) | POS (List) | — | Main POS page with control add-in "NPR Dragonglass"; Extensible=False |
| 6150724 | NPR POS Localized Table Data | Localized Table Data (List) | NPR POS Localized Caption (temp) | Caption localization editor; Extensible=False |
| 6150731 | NPR POS Secure Methods | POS Secure Methods (List) | NPR POS Secure Method (temp) | Runs discovery on open |
| 6150725 | NPR POS Select Lang. Dialog | POS Select Language Dialog (StandardDialog) | — | Language picker |
| 6014409 | NPR POS Turnover | POS Turnover Info (List) | NPR POS Turnover Calc. Buffer (temp) | Turnover statistics |
| 6014622 | NPR POS Web Fonts | POS Web Fonts (List) | NPR POS Web Font | Font management (Obsolete Pending 2024-02-28) |
| 6014659 | NPR Web Client Dependencies | Web Client Dependencies (List) | NPR Web Client Dependency | Web dependency management (Obsolete Pending 2024-02-28) |

Additional pages in _public/:
- POSDragonglassTmp5.Page.al
- POSSaleMediaImageFactBox.Page.al
- POSSaleMediaInfoList.Page.al

## Control Add-in

The main POS page (6150750) hosts usercontrol `"NPR Dragonglass"` with:
- `InvokeMethod(requestId, method, parameters)` trigger — the primary communication channel
  - Handles `KeepAlive` (session keep-alive), `FrameworkReady` (session init), and all business methods
  - Wraps every invocation in Sentry tracing
  - Uses `DragonglassResponseQueue` for batched responses
  - Delegates actual method execution to `POSDragonglassRunMethod`
- `ControlAddinResponse(JsonObject)` — sends responses to the frontend
- Background task support via `OnPageBackgroundTaskCompleted` and `OnPageBackgroundTaskError`
- Framework wrapper: codeunit `6150751 "NPR Framework: Dragonglass"` implements interface `"NPR Framework Interface"`

## Enums

| ID | Name | Values | Notes |
|----|------|--------|-------|
| 6014511 | NPR POS Sale Line Type | Item, Item Category, POS Payment, BOM List, Customer Deposit, Comment, Rounding, GL Payment, Issue Voucher | Extensible=true |
| 6014448 | NPR POS Sale OnRunType | Undefined, RunAfterEndSale, OnFinishSale | Extensible=false |

Additional enums in subdirectories:
- _public/: POSLineSaleType.Enum, POSSaleType.Enum
- Menus/: ButtonEnabledState.Enum, ButtonType.Enum
- View/: ViewType.Enum

## Interfaces

| Name | Procedures | Where |
|------|-----------|-------|
| NPR Framework Interface | InvokeFrontEndAsync(Request: JsonObject) | POS Core root |
| NPR IJsonSerializable | GetJson(): JsonObject | POS Core root |
| NPR Font Definition | Initialize, Code, Name, FontFace, Prefix, GetWoffStream, GetCssStream, GetJson | Front-End Async/ |
| NPR Front-End Async Request | SetMethod, GetContent, etc. | Front-End Async/ |
| NPR ISubMenu | (menu sub-menu interface) | Menus/ |

## Queries

| Name | Purpose |
|------|---------|
| POSCreditSalesCrMemo | Credit sales credit memo query |
| POSCreditSalesInvoice | Credit sales invoice query |
| POSTurnover | Turnover statistics query |

## Events

### POS Session (codeunit 6150700)

| Event | Type | Description |
|-------|------|-------------|
| OnInitialize | Integration (local) | Fired when POS session is constructed |
| OnInitializationComplete | Integration (internal) | Fired after POS session initialization is done |
| OnInitializeDataSource | Integration (local) | Extends data source initialization |

### POS Sale (codeunit 6150705)

| Event | Type | Description |
|-------|------|-------------|
| OnAfterInitializeAtLogin | Integration (local) | After sale codeunit initialized at login |
| OnBeforeInitSale | Integration (local) | Before a new sale is initialized |
| OnAfterInitSale | Integration (local) | After a new sale is initialized |
| OnBeforeResumeSale | Integration (local) | Before resuming an existing sale |
| OnAfterResumeSale | Integration (local) | After resuming an existing sale |
| OnBeforeEndSale | Integration (true) | Critical — before end sale processing |
| OnAfterValidateSaleBeforeEnd | Integration (local) | After sale validation before ending |
| OnAfterEndSale | Integration (true, internal) | After sale has been ended and committed |
| OnAttemptEndSale | Integration (true) | When end sale is attempted |
| OnRefresh | Integration (local) | When sale is refreshed |
| OnFinishSale | Integration (internal) | (obsolete) Finish sale workflow step |
| OnBeforeFinishSale | Integration (internal) | (obsolete) Before finish sale |
| OnBeforeInsertExecutionOrderOnSale | Integration (internal) | Customize after-sale execution order |
| OnAfterInsertExecutionOrderOnSale | Integration (internal) | After execution order populated |

### POS Sale Line (codeunit 6150706)

| Event | Type | Description |
|-------|------|-------------|
| OnBeforeInsertPOSSaleLine | Integration (local) | Before a sale line is inserted |
| OnAfterInsertPOSSaleLine | Integration (local) | After sale line inserted (obsolete pattern) |
| OnAfterInsertPOSSaleLineBeforeWorkflows | Integration (true) | After line insert, before workflows |
| OnAfterInsertPOSSaleLineBeforeCommit | Integration (true) | After line insert, before commit |
| OnAfterInsertPOSSaleLineAfterCommit | Integration (true) | After line insert, after commit |
| OnBeforeDeletePOSSaleLine | Integration (true, internal) | Before a sale line is deleted |
| OnAfterDeletePOSSaleLine | Integration (true) | After sale line deleted (obsolete) |
| OnAfterDeletePOSSaleLineBeforeCommit | Integration (true) | After delete, before commit |
| OnAfterDeletePOSSaleLineAfterCommit | Integration (true) | After delete, after commit |
| OnUpdateLine | Integration (true, internal) | When a line is updated |
| OnBeforeSetQuantity | Integration (true, internal) | Before quantity change |
| OnAfterSetQuantity / OnAfterSetQuantityBeforeCommit / OnAfterSetQuantityAfterCommit | Integration | Quantity change lifecycle |
| OnBeforeSetUoM / OnBeforeSetLocation / OnBeforeSetBin | Integration (true, internal) | Before UoM/Location/Bin change |
| OnAfterSetUoM* / OnAfterSetLocation* / OnAfterSetBin | Integration | UoM/Location/Bin lifecycle events |

### POS JavaScript Interface (codeunit 6150701)

| Event | Type | Description |
|-------|------|-------------|
| OnAction | Integration (internal) | Legacy v1 action handler (obsolete) |
| OnBeforeInvokeAction | Integration (local) | Before any action invocation |
| OnAfterInvokeAction | Integration (local) | After any action invocation |
| OnBeforeWorkflow | Integration (internal) | Before workflow execution (obsolete) |
| OnCustomMethod | Integration (internal) | Handler for unknown/custom JS methods |
| OnBeforeInvokeMethod | Integration (local) | Before method invocation (obsolete, 0 refs) |
| OnAfterInvokeMethod | Integration (local) | After method invocation (obsolete, 0 refs) |
| OnProtocolUIResponse | Integration (local) | UI protocol response (obsolete) |
| OnProtocolUITimer | Integration (local) | UI protocol timer (obsolete) |

### POS Action Management (codeunit 6150719)

| Event | Type | Description |
|-------|------|-------------|
| OnInvalidActionConfiguration | Integration (local) | Reports invalid action configuration |

### POS Secure Method (table 6150725)

| Event | Type | Description |
|-------|------|-------------|
| OnDiscoverSecureMethods | Business (true) | Register custom secure methods |
| OnDiscoverCustomSecureMethodCode | Business (false) | Get code for Custom secure method |

### POS Secure Method Svrside (codeunit 6150736)

| Event | Type | Description |
|-------|------|-------------|
| OnSecureMethodValidatePassword | Business (true) | Validate password for secure method |
| OnSecureMethodValidatePasswordWithLog | Business (true) | Validate with audit log entry |

### POS Setup Safety Check (codeunit 6014451)

| Event | Type | Description |
|-------|------|-------------|
| OnAfterValidateSetup | InternalEvent (local) | After setup validation completes |

### POS Workflows 2.0 Require (codeunit 6150735)

| Event | Type | Description |
|-------|------|-------------|
| OnRequireCustom | Integration (local) | Handle custom require types |

### POS Sale Table Dimension Events

| Event | Type | Description |
|-------|------|-------------|
| OnBeforeUpdateAllLineDim | Integration (local) | Before line dimension update |
| OnBeforeCreateDim | Integration (local) | Before dimension creation |
| OnAfterInitDefaultDimensionSources | Integration (local) | After default dimension sources |
| OnCreateDimOnBeforeUpdateLines | Integration (local) | During dimension creation |

## After-Sale Execution Order

The execution order on sale is defined in `POSSale.InitializeExecutionOrder()`:

| Sequence | Codeunit | Purpose |
|----------|----------|---------|
| 10 | NPR Create Clean Cash On Sale | Clean cash creation |
| 20 | NPR Eject Payment Bin On Sale | Payment bin ejection |
| 30 | NPR MM Loy. Assignment On Sale | Loyalty assignment |
| 40 | NPR POS Print Receipt On Sale | Receipt printing |
| 50 | NPR Tax Free Voucher On Sale | Tax-free voucher |
| 60 | NPR MM Member Print On Sale | Member receipt print |
| 80 | NPR TM Ticket Print On Sale | Ticket printing |
| 85 | NPR AttractionWalletPrint | Attraction wallet print |
| 90 | NPR NpCs Del.CollectDoc OnSale | Collect document delivery |
| 100 | NPR E-mail Receipt On Sale | Email receipt |

Partners can customize via `OnBeforeInsertExecutionOrderOnSale` (set Handled=true) or `OnAfterInsertExecutionOrderOnSale`.

## Secure Methods (built-in)

| Code | Description | Validation |
|------|-------------|------------|
| ANY-SALESP | Any salesperson password | Matches Salesperson."NPR Register Password" |
| CUR-SALESP | Current salesperson password | Matches current logged-in salesperson's password, falls back to supervisor |
| SUPERVISOR | Supervisor password | Same as ANY-SALESP but requires Salesperson."NPR Supervisor POS"=true |
| REGIST-PWD | Register open password | Validated against POS Security Profile "Unlock Password" |
| ADMIN-PWD | System admin password | Validated against POS Security Profile "Unblock Discount Password" |

## Feature Flags

| Feature ID | Codeunit | Default | Reversible |
|-----------|----------|---------|------------|
| Retail | 6151432 | Enabled | Yes |
| POSStatisticsDashboard | 6150651 | Disabled | Yes |
| POSWebserviceSessions | 6248379 | Disabled | **No** |
| ScenariosObsoleted | 6060137 | Disabled | Yes |
| NewAttractionPrintExperience | 6150744 | Disabled | **No** |
