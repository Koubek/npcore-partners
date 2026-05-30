---
type: concept
tags: [np-retail, pos, payment, pos-payment]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/infrastructure/sentry/overview.md
updated: 2026-05-09
---

# POS Payment Module

The POS Payment module handles payment processing, authorization, and reconciliation in NP Retail's Point of Sale system. It integrates with POS Core's post-transaction flow and manages multiple tender types through a plugin-style workflow architecture.

## Architecture

Payment processing follows a **workflow dispatcher pattern** mediated by the `"NPR Payment Processing Type"` enum (ID 6014487). Each tender type (Cash, Check, EFT, Voucher, Foreign Voucher, Payout) implements the `"NPR POS IPaymentWFHandler"` interface via enum value implementations. The dispatch flow:

```
POS Core (after-sale) → POSActionPaymentWF2.RunWorkflow
  → "NPR Payment Processing Type" enum
    → Interface.GetPaymentHandler() → workflow name
      → Workflow V3 action (Cash, Check, EFT, etc.)
```

### Payment Workflow Dispatcher

Codeunit `6059796 "NPR POS Action: Payment WF2"` is the central orchestrator. It registers as a Workflow V3 action and handles these steps:

| Step | Purpose |
|------|---------|
| `preparePaymentWorkflow` | Initiates payment, runs pre-workflows (e.g., sale dimensions), dispatches to tender-specific workflow |
| `continuePaymentWorkflow` | Called after pre-workflows complete, proceeds to payment capture |
| `SetMembershipSubscPayerEmail` | Collects payer email for subscription payments |
| `tryEndSale` | Attempts to end sale after payment (obsolete, use END_SALE workflow) |
| `doLegacyPaymentWorkflow` | Falls back to legacy v1/v2 workflow for backward compat |
| `preparePostWorkflows` | Collects post-payment workflows (HUL audit, etc.) |

### Tender Types

| Type | Enum Value | Codeunit | Workflow Name |
|------|-----------|----------|---------------|
| Cash | 0 (CASH) | 6059793 "NPR POS Action: Cash Payment" | PAYMENT_CASH |
| Voucher | 1 (VOUCHER) | *(NPR POS Action Scan Voucher2)* | VOUCHER_PAYMENT |
| Check | 2 (CHECK) | 6059938 "NPR POSAction PaymentWithCheck" | PAYMENT_CHECK |
| EFT | 3 (EFT) | *(NPR POS Action: EFT Trx)* | EFT_TRX |
| Payout | 5 (PAYOUT) | 6059789 "NPR POS Action Pay-in Payout" | PAYMENT_PAYIN_PAYOUT |
| Foreign Voucher | 6 (FOREIGN VOUCHER) | 6059939 "NPR POSAction ForeignVoucher" | FOREIGN_VOUCHER_PMT |

Each tender codeunit implements both `"NPR POS IPaymentWFHandler"` (returns the workflow name) and `"NPR IPOS Workflow"` (register + run the actual payment steps).

### EFT (Electronic Funds Transfer)

The EFT subsystem is the most complex part of POS Payment. It provides a plugin framework for integrating payment providers:

- **Core** — `EFTTransactionRequest` table (6184495), transaction management, framework codeunits
- **Integrations** — Pluggable provider integrations: Adyen, NETS (BAXI/Cloud), Planet PAX, Verifone VIM, Vipps/Mobilepay, External Terminal
- **BIN Matching** — Card BIN range mapping to payment types
- **Gift Card** — EFT-based gift card loading via `POSActionEFTGiftCard2`
- **Reconciliation** — Match EFT transactions against provider statements

The `"NPR EFT Interface"` codeunit (6184479) defines integration events that providers subscribe to:
- `OnCreatePaymentOfGoodsRequest` — Create payment request
- `OnCreateRefundRequest` — Create refund request
- `OnCreateVoidRequest` — Create void/cancel request
- `OnPrepareRequestSend` — Serialize request JSON and choose sync/async
- `OnSendRequestSynchronously` — Handle synchronous send
- `OnEndOfDayCloseEft` — Close EFT integrations during end-of-day
- `OnPrintReceipt` / `OnDisplayReceipt` — Handle customer receipts

### End of Day

The EndOfDay subsystem (`POSActionEndOfDayV4`, `EndOfDayWorker`) manages register balancing:
- X-Report (preliminary), Z-Report (final), Close Workshift
- Discovers EFT integrations that need end-of-day processing
- Opens cash drawers for counting
- Manages master/slave POS unit profiles for multi-register balancing

### Pay-in / Pay-out

Handles non-sale cash movements:
- Pay-in: money added to the till (e.g., starting float)
- Pay-out: money removed from the till (e.g., cash drop)
- Supports GL account selection, reason codes, photos

## Dependencies

The POS Payment module depends on:
- **POS Core** — Sale lifecycle (`NPR POS Sale`, `NPR POS Sale Line`, `NPR POS Payment Line`), frontend management, session management
- **Sentry** — Observatory via `NPR Sentry` spans (transaction preparation is traced)
- **API** — Some payment data may be exposed through the API module
- **Membership Management** — Subscription payment support
- **HUL Audit** — Post-payment audit workflows

## Extension Points

Partners can extend payment processing by:
1. Adding values to the `"NPR Payment Processing Type"` enum (extensible) with interface implementations for new tender types
2. Subscribing to `"NPR Payment Processing Events"` codeunit (6151042) integration events: `OnAddPreWorkflowsToRun`, `OnAddPostWorkflowsToRun`, `OnAfterCalculateSuggestionPaymentAmount`, `OnBeforeAddAmountPromptLblToResponse`
3. Subscribing to `"NPR EFT Interface"` (6184479) for new payment provider integration
4. Registering new EFT integration types via `OnDiscoverIntegrations`
