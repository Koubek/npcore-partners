---
type: reference
tags: [np-retail, pos, payment, pos-payment]
relates:
  - np-retail/pos/pos-payment/overview.md
  - np-retail/pos/pos-core/api.md
updated: 2026-05-09
---

# POS Payment Module — API Reference

## Interfaces

| Name | Procedures | Description |
|------|-----------|-------------|
| "NPR POS IPaymentWFHandler" | GetPaymentHandler(): Code[20] | Returns the target workflow name for a payment type. Implemented by each tender type's codeunit via the "NPR Payment Processing Type" enum |

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6014487 | "NPR Payment Processing Type" | NPR Payment Processing Type | CASH(0), VOUCHER(1), CHECK(2), EFT(3), PAYOUT(5), "FOREIGN VOUCHER"(6) | Extensible enum mapping payment tender types to their implementer codeunits. Each value implements "NPR POS IPaymentWFHandler". UnknownValueImplementation = "NPR Null PaymentHandler" |
| 6014507 | "NPR EFT Request Mechanism" | NPR EFT Request Mechanism | Undefined(0), POSWorkflow(1), Synchronous(2) | Controls how an EFT request is sent: via workflow V3 action or synchronously in AL |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6184495 | "NPR EFT Transaction Request" | EFT Transaction Request | PK: Entry No. (Integer, AutoIncrement). Others: Sales Ticket No.+Sales Line No., Reference Number Output, Initiated from Entry No., Register No.+Integration Type+Processing Type, Hardware ID, PSP Reference | Central EFT transaction record. ~100 fields covering card data (Type, Name, Number, Expiry, Application ID), amounts (Input, Output, Result, Cashback, Fee, Tip, DCC), receipts (blob), processing metadata (Mode, Successful, Result Description, Result Code), lifecycle state (Reversed, Recovered, Voidable, Auto Voidable, Manual Voidable), provider references (External Transaction ID, PSP Reference, Acquirer ID, Reconciliation ID), integration links (Integration Type, Pepper Terminal Code, Pepper Transaction Type/Subtype) |
| 6184513 | "NPR EFT Transaction Log" | EFT Transaction Logs | PK: Transaction Entry No.+Log Entry No. (AutoIncrement). Others: Log (BLOB), Description, Logged At | Per-request log blob storage. Linked to "NPR EFT Transaction Request" via Transaction Entry No. |
| 6014403 | "NPR EFT Receipt" | EFT Receipt | PK: Register No.+Sales Ticket No.+Entry No. Others: Register No.+Sales Ticket No.+Type, Register No.+Sales Ticket No.+Date, EFT Trans. Request Entry No.+Receipt No.+Date, SystemCreatedAt | Terminal receipt lines stored as text (Line No., Text, Type, Telegramtype). Supports reprint via `PrintTerminalReceipt()` which uses "NPR Report Selection Type"::"Terminal Receipt" |
| 6184505 | "NPR EFT Aux Operation" | EFT Aux Operation | PK: Integration Type+Auxiliary ID | Defines auxiliary (non-financial) operations per EFT integration type (e.g., terminal status check, diagnostics) |
| 6184485 | "NPR EFT Setup" | EFT Setup | PK: Payment Type POS+POS Unit No. | Maps POS payment methods to EFT integration types per POS unit. Fields: Payment Type POS -> "NPR POS Payment Method", EFT Integration Type, POS Unit No. Procedure `FindSetup(POSUnitNo, PaymentTypePOS)` looks up unit-specific config, falls back to global. Triggers: OnDelete/OnModify clear setup parameters |
| 6184486 | "NPR EFT Integration Type" | EFT Integration Type | PK: Code (Code[20]) | Registry of available EFT integrations. Fields: Code, Description, Codeunit ID, Version 2 (legacy flag). Populated dynamically via `"NPR EFT Interface".OnDiscoverIntegrations` event |

### BIN Matching Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| *(unknown)* | "NPR EFT BIN Group" | EFT BIN Group | — | Groups BIN ranges for card type identification |
| *(unknown)* | "NPR EFT BIN Range" | EFT BIN Range | — | Individual BIN (Bank Identification Number) ranges |
| *(unknown)* | "NPR EFT BIN Group Paym. Link" | EFT BIN Group Paym. Link | — | Links BIN groups to payment methods |
| *(unknown)* | "NPR EFT AID Mapping" | EFT AID Mapping | — | Maps Application IDs to card schemes |
| *(unknown)* | "NPR EFT AidRid Mapping" | EFT AidRid Mapping | — | Maps AID+RID combinations |
| *(unknown)* | "NPR EFT Bin Group Payment Link" | EFT Bin Group Payment Link | — | Integration payment link per BIN group |

### Reconciliation Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| *(unknown)* | "NPR EFT Reconciliation" | EFT Reconciliation | — | Reconciliation batch header |
| *(unknown)* | "NPR EFT Recon. Line" | EFT Recon. Line | — | Individual matched lines with Applied Entry No. field linking to EFT Transaction Request |
| *(unknown)* | "NPR EFT Recon. Match Score" | EFT Recon. Match Score | — | Auto-match scoring configuration |
| *(unknown)* | "NPR EFT Recon. Match Score Line" | EFT Recon. Match Score Line | — | Per-field match scoring rules |
| *(unknown)* | "NPR EFT Recon. Bank Amount" | EFT Recon. Bank Amount | — | Bank statement amounts for reconciliation |
| *(unknown)* | "NPR EFT Recon. Provider" | EFT Recon. Provider | — | Provider-specific reconciliation config |
| *(unknown)* | "NPR EFT Recon. Subscriber" | EFT Recon. Subscriber | — | Event subscribers for reconciliation hooks |

### Additional Parameter Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| *(unknown)* | "NPR EFTType POSUnit Gen.Param." | EFTType POSUnit Gen.Param. | — | General POS unit-level EFT configuration parameters |
| *(unknown)* | "NPR EFTType POSUnit BLOBParam." | EFTType POSUnit BLOBParam. | — | BLOB POS unit-level EFT configuration |
| *(unknown)* | "NPR EFTType Paym. BLOBParam." | EFTType Paym. BLOBParam. | — | BLOB payment-type-level EFT configuration |
| *(unknown)* | "NPR EFTType Paym. Gen.Param." | EFTType Paym. Gen.Param. | — | General payment-type-level EFT configuration |
| *(unknown)* | "NPR EFT Transact. Req. Comment" | EFT Transact. Req. Comment | — | Comments attached to EFT requests |
| *(unknown)* | "NPR EFT Trx Async Req." | EFT Trx Async Req. | — | Asynchronous request metadata for long-running operations |
| *(unknown)* | "NPR EFT Trx Async Resp." | EFT Trx Async Resp. | — | Asynchronous response metadata |
| *(unknown)* | "NPR EFT Shopper Recognition" | EFT Shopper Recognition | — | Shopper identification data for recurring/stored payments |
| *(unknown)* | "NPR Pepper Terminal" | Pepper Terminal | — | Terminal device registration (referenced by EFT Transaction Request) |
| *(unknown)* | "NPR Pepper EFT Trx Type" | Pepper EFT Trx Type | — | Transaction type codes per integration |
| *(unknown)* | "NPR Pepper EFT Trx Subtype" | Pepper EFT Trx Subtype | — | Transaction subtype codes per integration type |
| *(unknown)* | "NPR Pepper Version" | Pepper Version | — | Integration version tracking |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6059795 | "NPR Null PaymentHandler" | NPR Null PaymentHandler | GetPaymentHandler(): Code[20] | None (error-only/null handler) |
| 6059796 | "NPR POS Action: Payment WF2" | NPR POS Action: Payment WF2 | Register(WorkflowConfig), RunWorkflow(Step, Context, FrontEnd, Sale, SaleLine, PaymentLine, Setup) | None (dispatches to payment-specific workflows) |
| 6059778 | "NPR POS Action: Payment WF2 BL" | NPR POS Action: Payment WF2 BL | PrepareForPayment(PaymentLine, PaymentMethodCode, var WorkflowName, var POSPaymentMethod, var Amount, var ForceAmount, var CollectReturnInformation), AttemptEndCurrentSale(PaymentMethodCode): Boolean, CheckMMPaymentMethodAssigned(PaymentMethodCode, SalePOS): Boolean, CheckMembershipSubscription(SalePOS, POSPaymentMethod, var MembershipEmail): Boolean | None |
| 6151042 | "NPR Payment Processing Events" | NPR Payment Processing Events | (all events, see below) | OnAddPreWorkflowsToRun, OnAddPostWorkflowsToRun, OnAfterCalculateSuggestionPaymentAmount, OnBeforeAddAmountPromptLblToResponse, InvokeOnPaymentView |
| 6059793 | "NPR POS Action: Cash Payment" | NPR POS Action: Cash Payment | GetPaymentHandler(): Code[20], Register(WorkflowConfig), RunWorkflow(Step, ...), CapturePayment(SalePOS, POSPaymentLine, POSPayment, POSPaymentMethod, AmountToCapture, DefaultAmountToCapture): Boolean | None |
| 6059938 | "NPR POSAction PaymentWithCheck" | NPR POSAction PaymentWithCheck | GetPaymentHandler(): Code[20], Register(WorkflowConfig), RunWorkflow(Step, ...), PrepareWorkflow(Context): JsonObject, CapturePayment(Context, POSSale, PaymentLine, Setup): JsonObject | None |
| 6151064 | "NPR POSAct PaymentWithCheck B" | NPR POSAct PaymentWithCheck B | CapturePayment(AmountToCaptureLCY, DefaultAmountToCaptureLCY, POSPaymentLine, var POSLine, POSPaymentMethod): Boolean | None |
| 6059939 | "NPR POSAction ForeignVoucher" | NPR POSAction ForeignVoucher | GetPaymentHandler(): Code[20], Register(WorkflowConfig), RunWorkflow(Step, ...), CapturePayment(Context, POSSale, SaleLine, POSPayment, FrontEnd): JsonObject | None |
| 6151054 | "NPR POSAction ForeignVoucher B" | NPR POSAction ForeignVoucher B | CapturePayment(AmountToCaptureLCY, DefaultAmountToCaptureLCY, POSPaymentLine, var POSLine, POSPaymentMethod, VoucherNumber, SalePOS, POSSession, FrontEnd): Boolean | None |
| 6059789 | "NPR POS Action Pay-in Payout" | NPR POS Action Pay-in Payout | GetPaymentHandler(): Code[20], Register(WorkflowConfig), RunWorkflow(Step, ...), SelectAccount(Sale, Context): JsonObject, SelectReason(): JsonObject, HandlePayment(Sale, Context, SaleLine): JsonObject | None |
| 6059790 | "NPR Pay-in Payout Mgr" | NPR Pay-in Payout Mgr | CreatePayInOutPayment(SaleLine, PaymentType, AccountNo, Description, Amount, ReasonCode): Boolean | None |
| 6059935 | "NPR POSAction VoucherPayment" | NPR POSAction VoucherPayment | GetPaymentHandler(): Code[20], Register(WorkflowConfig), RunWorkflow(Step, ...) | Obsolete (Pending, tagged '2023-06-28'), replaced by "NPR POS Action Scan Voucher2" |
| 6014600 | "NPR POS Action: EndOfDay V4" | NPR POS Action: EndOfDay V4 | Register(WorkflowConfig), RunWorkflow(Step, ...) | None |
| 6059860 | "NPR End Of Day Worker" | NPR End Of Day Worker | ValidateRequirements(POSUnitCode, SalesTicketNo): Boolean, CalculateEndOfDay(EndOfDayType, Setup, Sale, POSUnitNo): Integer, SwitchView(FrontEnd, EndOfDayType, POSWorkShiftCheckpoint): JsonObject, CreateReport(EndOfDayType, POSUnitNo, Status, SalesPersonCode, DimSetID, POSSession, FrontEnd): Integer, CloseSlaveUnits(UnitNo, DimSetId), CloseWorkshift(POSUnitNo, SalespersonCode, DimSetId): Integer, OpenDrawer(CashDrawerNo, POSUnitNo, SalePOS), DiscoverEftIntegrationsForEndOfDay(EndOfDayType): JsonArray, PrintEndOfDayReport(UnitNo, EntryNo) | IntegrationEvent OnAfterCleanupPOSSavedSalesBeforeBalancing |
| 6184479 | "NPR EFT Interface" | NPR EFT Interface | EftIntegrationResponse(var EFTTransactionRequest) | OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup, OnCreateBeginWorkshiftRequest, OnCreateEndWorkshiftRequest, OnCreatePaymentOfGoodsRequest, OnCreateRefundRequest, OnCreateVoidRequest, OnCreateVerifySetupRequest, OnCreateLookupTransactionRequest, OnCreateAuxRequest, OnCreateGiftCardLoadRequest, OnPrepareRequestSend, OnSendRequestSynchronously, OnAfterFinancialCommit, OnEndOfDayCloseEft, OnDisplayReceipt, OnPrintReceipt, OnGenericWorkflowResponse, OnCreateVoidEFTRequestOnPaymentLineDelete, AllowVoidEFTRequestOnPaymentLineDelete, plus 7 obsolete events |
| 6060021 | "NPR EFT Transaction Pub. Mgt." | NPR EFT Transaction Pub. Mgt. | GetEFTReceiptText(SalesTicketNo): Text, GetEFTExternalCustomerId(...): Text[50], GetEFTExternalTransactionId(SalesTicketNo): Text[50] | None (public wrapper around NPR EFT Transaction Mgt.) |
| 6059884 | "NPR POS Action: EFTGiftCard 2" | NPR POS Action: EFT Gift Card 2 | Register(WorkflowConfig), RunWorkflow(Step, ...) | None (subscribes to OnLookupValue/OnValidateValue on NPR POS Parameter Value table) |

### Codeunit Details

**6059796 "NPR POS Action: Payment WF2"** — Central payment workflow dispatcher. Registered as a Workflow V3 action. Handles the full payment flow from pre-workflows through payment capture to post-payment processing. Key logic:
- `RunWorkflow` dispatches to `preparePaymentWorkflow`, `continuePaymentWorkflow`, `SetMembershipSubscPayerEmail`, `tryEndSale`, `doLegacyPaymentWorkflow`, `preparePostWorkflows`
- `PreparePayment` looks up the payment method, calls `PaymentWF2BL.PrepareForPayment` which loads the "NPR Payment Processing Type" enum value and calls `GetPaymentHandler()` to determine the target workflow
- Integrates with `NPR HU L Audit Mgt.` for post-payment processing
- Supports sale dimension collection via `AddSaleDimensionWorkflow`
- Membership subscription payer email collection

**6059778 "NPR POS Action: Payment WF2 BL"** — Business logic backing the payment dispatcher:
- `PrepareForPayment`: Loads payment method, resolves processing type interface, calculates suggested amount (with zero-as-default support), fires `OnAfterCalculateSuggestionPaymentAmount`
- `AttemptEndCurrentSale`: Tries `TryEndDirectSaleWithBalancing` if payment method has `Auto End Sale` flag
- `CheckMMPaymentMethodAssigned`: For Adyen EFT, checks if the payment method is already assigned in the sale
- `CheckMembershipSubscription`: For subscription payments, checks if payer email needs to be collected

**6151042 "NPR Payment Processing Events"** — Integration events for payment processing customization. Subscribers can inject workflows or modify behavior:

| Event | Signature | Purpose |
|-------|-----------|---------|
| OnAddPreWorkflowsToRun | (Context: Codeunit, SalePOS: Record, var PreWorkflows: JsonObject) | Add workflows to run before payment capture |
| OnAddPostWorkflowsToRun | (Context, Sale, PaymentLine, var PostWorkflows) | Add workflows after successful payment |
| OnAfterCalculateSuggestionPaymentAmount | (SalesTicketNo, SalesAmount, PaidAmount, POSPaymentMethod, ReturnPOSPaymentMethod, var SuggestPaymentAmount, var CollectReturnInformation) | Modify the suggested payment amount calculation |
| OnBeforeAddAmountPromptLblToResponse | (POSPaymentMethod, var TextAmountLabel) | Customize the amount prompt label shown in the UI |
| InvokeOnPaymentView | (Sale) | Trigger actions when the payment view is displayed |

**6184479 "NPR EFT Interface"** — Plugin framework for EFT provider integrations. Key integration points:
- Provider discovery: `OnDiscoverIntegrations` populates integration type registry, `OnDiscoverAuxiliaryOperations` populates non-financial operations
- Request creation: 8 events for different request types (Payment, Refund, Void, Open, Close, Lookup, Setup, Gift Card Load, Aux, Verify Setup)
- Send mechanism: `OnPrepareRequestSend` (serialize + choose sync/async), `OnSendRequestSynchronously` (for synchronous providers)
- Lifecycle: `OnAfterFinancialCommit`, `OnEndOfDayCloseEft` (close/shift-end processing)
- Receipt: `OnPrintReceipt`, `OnDisplayReceipt`
- Void: `OnCreateVoidEFTRequestOnPaymentLineDelete`, `AllowVoidEFTRequestOnPaymentLineDelete`
- `EftIntegrationResponse(var EFTTransactionRequest)` — Called by providers when async response is received; triggers framework processing and commit

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| 6184481 | "NPR EFT Setup" | EFT Setup | "NPR EFT Setup" | List page for EFT configuration per POS unit + payment type. Actions: "POS Unit Parameters" (fires OnConfigureIntegrationUnitSetup), "Payment Type Parameters" (fires OnConfigureIntegrationPaymentSetup) |
| *(unknown)* | "NPR EFT POSUnit Param. Setup" | EFT POSUnit Param. Setup | "NPR EFTType POSUnit Gen.Param." | POS unit-level EFT parameter configuration |
| *(unknown)* | "NPR EFT Payment Param. Setup" | EFT Payment Param. Setup | "NPR EFTType Paym. Gen.Param." | Payment-type-level EFT parameter configuration |
| *(unknown)* | "NPR EFT Integration Types" | EFT Integration Types | "NPR EFT Integration Type" | List of registered EFT integration types |
| *(unknown)* | "NFR EFT Auxiliary Operations" | EFT Auxiliary Operations | "NPR EFT Aux Operation" | Auxiliary operations per integration |
| *(unknown)* | "NPR EFT Transaction Requests" | EFT Transaction Requests | "NPR EFT Transaction Request" | Drill-down page for transaction requests |
| *(unknown)* | "NPR EFT Trx Log Factbox" | EFT Trx Log Factbox | "NPR EFT Transaction Log" | Factbox showing transaction log entries |
| *(unknown)* | "NPR EFT Trx Rq. Comment Subform" | EFT Trx Rq. Comment | "NPR EFT Transact. Req. Comment" | Subform for request comments |
| *(unknown)* | "NPR EFT Shopper Recognition" | EFT Shopper Recognition | "NPR EFT Shopper Recognition" | Shopper identification configuration |
| *(unknown)* | "NPR EFT Reconciliation" | EFT Reconciliation | "NPR EFT Reconciliation" (list+card) | Reconciliation batch management |
| *(unknown)* | "NPR EFT Recon. Lines" | EFT Recon. Lines | "NPR EFT Recon. Line" | Reconciliation transaction lines |
| *(unknown)* | "NPR EFT Recon. Matching" | EFT Recon. Matching | — | Auto-match review page |
| *(unknown)* | "NPR EFT Recon. Match Card" | EFT Recon. Match Card | — | Manual match card |
| *(unknown)* | "NPR EFT Recon. Match List" | EFT Recon. Match List | — | Suggested matches |
| *(unknown)* | "NPR EFT Recon. Provider Card" | EFT Recon. Provider Card | "NPR EFT Recon. Provider" | Provider configuration |
| *(unknown)* | "NPR EFT Recon. Subscribers" | EFT Recon. Subscribers | "NPR EFT Recon. Subscriber" | Event subscriber configuration |
| *(unknown)* | "NPR EFT Recon. Bank Amounts" | EFT Recon. Bank Amounts | "NPR EFT Recon. Bank Amount" | Bank statement amounts |
| *(unknown)* | BIN Matching pages (4+ list/card pages) | — | Various BIN tables | BIN group, range, AID mapping management |

## Labels (Translation Engine)

The POS Payment module registers several labels via the workflow config system. These are surfaced to the JavaScript frontend through the workflow runtime.

| Label Key | Default Text | Usage Context |
|-----------|-------------|---------------|
| `paymentMethodAssignedCaption` | "A payment method has already been assigned to the membership. Do you want to change it?" | Confirmation dialog when re-assigning Adyen EFT payment method |
| `MembershipSubscPayerEmailTitle` | "Enter Payer E-mail" | Dialog title for subscription payer email collection |
| `MembershipSubscPayerEmailCaption` | "Please enter the e-mail address of the person paying for this subscription." | Dialog caption for subscription payer email |
| `checkTitle` | "Check" | Dialog title for check number input |
| `checkNoDescription` | "Please enter the check no." | Dialog caption for check number input |
| `VoucherPaymentTitle` | "Retail Voucher Payment" | Dialog title for foreign voucher number input |
| `ReferenceNo` | "Enter Reference No." | Dialog caption for foreign voucher reference |
| `amountLabel` | "Enter Amount" | Pay-in/out amount prompt |
| `descriptionLabel` | "Enter Description" | Pay-in/out description prompt |
| `VoucherAmount` | "Gift Card Amount" | EFT gift card amount prompt |
| `VoucherDiscount` | "Gift Card Discount Percentage" | EFT gift card discount prompt |
| `VoucherQuantity` | "Number of Gift Cards" | EFT gift card quantity prompt |
| `InvalidQuantity` | "Number of giftcards must be between 1 and 100" | Validation error for gift card quantity |
| `InvalidDiscount` | "Discount percent must be between 0 and 100" | Validation error for discount percent |
| `InvalidAmount` | "Amount must be positive" | Validation error for amount |
