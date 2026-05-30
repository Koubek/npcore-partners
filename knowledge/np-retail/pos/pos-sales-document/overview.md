---
type: concept
tags: [np-retail, pos, pos-sales-document]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-posting/overview.md
updated: 2026-05-09
---

# POS Sales Document Module

The POS Sales Document module manages the lifecycle of sales documents originating from the POS system — including layaway plans, prepayments, credit sales, document import/export, and async posting.

## Architecture

The module provides document-level workflows that extend beyond simple point-of-sale transactions. It handles the creation of ERP sales documents (orders, invoices), prepayment/layaway installment plans, and the synchronization between POS entries and their resulting ERP documents.

### Key Components

| Component | Purpose |
|-----------|---------|
| **POSLayawayMgt.Codeunit.al** (6014425) | Manages layaway lifecycle: downpayment invoice, installment invoices, cancellation/refund. Trigger-based codeunit. |
| **POSPrepaymentMgt.Codeunit.al** | Manages prepayment invoice creation for sales documents. |
| **ImportSalesDocInPOS.Codeunit.al** (6014562) | Imports existing ERP sales documents into POS for payment collection. |
| **SalesDocExpMgt.Codeunit.al** | Exports POS sales documents to ERP. |
| **SalesDocImpMgt.Codeunit.al** | Manages import of sales documents from ERP into POS. |
| **POSSalesDocOutputMgt.Codeunit.al** | Manages output (print/email) for sales documents. |
| **POSAsyncPostingMgt.Codeunit.al** | Manages async posting of sales documents via job queue. |
| **POSApplyCustomerEntries.Codeunit.al** | Handles customer ledger entry application for POS documents. |
| **ApplySalespersontoDoc.Codeunit.al** | Applies salesperson to sales documents. |
| **CreditSalePostProcess.Codeunit.al** | Handles post-processing after credit sale documents are posted. |
| **DimHandlingModifier.Codeunit.al** | Modifies dimension handling for sales documents. |
| **POSSalesDocumentSetup.Table.al** (6150632) | Configuration: `Post with Job Queue`, `Generate Posting No.`, `Deliver Collect Document`. |
| **POSEntrySLineRelation.Table.al** (6151253) | Links posted entries to their originating sales document lines. |
| **PostedDocBuffer.Table.al** | Buffer for posted document tracking. |
| **RetailType.Table.al** | Maps retail document types. |
| **POSActionDocPayPost** | Action to post payment for a sales document. |
| **POSActionDocPrepay** | Action to handle prepayment for a sales document. |
| **POSActionDocShow** | Action to display a sales document. |
| **POSActionLayawayCancel** | Action to cancel a layaway. |
| **POSActionLayawayCreate** | Action to create a new layaway. |
| **POSActionLayawayPay** | Action to make a layaway payment. |
| **POSActionLayawayShow** | Action to show layaway details. |
| **POSActionResrvDocPay** | Action to pay for a reserved document. |
| **POSActionSalesDocExp** | Action to export a sales document to ERP. |
| **POSActionSalesDocImp** | Action to import a sales document from ERP. |

### Layaway Lifecycle

```
Create (POSActionLayawayCreate)
├── Creates Sales Order in ERP
├── Downpayment invoice posted (% of total)
└── Installment invoices created (split remaining amount)
    ├── Each installment has due date from Payment Terms
    └── Final installment gets full 100% prepayment

Pay (POSActionLayawayPay)
├── Find installment invoice
└── Process payment through POS payment workflow

Cancel (POSActionLayawayCancel)
├── Create credit memo for remaining prepayments
├── Apply credit memo to open prepayment invoices
├── Create POS refund line for remaining credit amount
└── Message shows refund amount
```

### Document Import/Export

**Import (ERP → POS):**
1. `SalesDocImpMgt.SynchronizePOSSaleWithDocument` loads an ERP sales document
2. Lines and prices are matched to POS sale structure
3. POS collects payment against the document

**Export (POS → ERP):**
1. `SalesDocExpMgt` transfers POS credit sale to ERP
2. Creates sales order/invoice in ERP
3. Links POS entry to created document

## Key Business Flows

### Credit Sale Post-Processing
- `CreditSalePostProcess` runs after a credit sale document is posted in ERP
- Updates POS entry status and creates audit trail

### Async Posting
- Documents can be posted via Job Queue for performance
- `POSAsyncPostingMgt` manages the queue and retry logic
- `POSSalesDocumentSetup` controls whether async posting is enabled

## Dependencies

- **POS Core** — `NPR POS Sale`, `NPR POS Session`, `NPR POS Sale Line`
- **POS Posting** — Entry creation, GL posting
- **ERP System** — Sales Header, Sales Line, Cust. Ledger Entry for ERP document integration
- **POS Store Shipping Method** — Sub-module for shipping method configuration

## Extension Points

- Layaway Mgt uses run-mode pattern (`SetRunApplyPrepmtCreditMemoAndRefund`, `SetRunCreateAndPostDownpmtAndLayawayInvoices`, `SetRunHandleDownpayment`)
- `SalesDocFunctionToRun` enum for extensible document functions
