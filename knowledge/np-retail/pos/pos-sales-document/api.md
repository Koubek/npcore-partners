---
type: reference
tags: [np-retail, pos, pos-sales-document, tables, codeunits, pages, enums]
relates:
  - np-retail/pos/pos-sales-document/overview.md
updated: 2026-05-09
---

# POS Sales Document API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6150632 | NPR POS Sales Document Setup | Primary Key, Post with Job Queue, Generate Posting No., Deliver Collect Document | Configuration for sales document posting behavior. |
| 6151253 | NPR POS Entry SLine Relation | Entry No., Sales Line System ID | Links posted POS entries to their originating sales document lines. |
| — | PostedDocBuffer | Document No., Document Type | Buffer tracking posted documents. |
| — | RetailType | Code, Description | Maps retail document types (Selection, Order, Wish, etc.). |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6014425 | NPR POS Layaway Mgt. | SetRunApplyPrepmtCreditMemoAndRefund(), SetRunCreateAndPostDownpmtAndLayawayInvoices(), SetRunHandleDownpayment() | Layaway lifecycle: creates downpayment + installment invoices, handles cancellation and refunds. Trigger-based. |
| — | NPR POS Prepayment Mgt. | SetPrepaymentPercentageToPay() | Manages prepayment invoice creation with configurable percentages. |
| 6014562 | NPR Import Sales Doc. In POS | SynchronizePOSSaleWithDocument() | Imports ERP sales document into POS for payment. |
| — | NPR Sales Doc. Exp. Mgt. | ExportToERP() | Exports POS document to create ERP sales documents. |
| — | NPR Sales Doc. Imp. Mgt. | SynchronizePOSSaleWithDocument() | Full import management for sales documents. |
| — | NPR POS Sales Doc Output Mgt. | Print(), Email() | Handles document output (print/email). |
| — | NPR POS Async Posting Mgt. | Enqueue(), ProcessQueue() | Manages async document posting via job queue. |
| — | NPR POS Apply Customer Entries | BalanceDocument() | Applies customer ledger entries to balance documents. |
| — | ApplySalespersontoDoc | Apply() | Applies salesperson to sales document. |
| — | CreditSalePostProcess | PostProcess() | Runs post-posting steps for credit sale documents. |
| — | DimHandlingModifier | ModifyDimensions() | Handles dimension modifications for document creation. |

### NPR POS Layaway Mgt. Methods

| Method | Description |
|--------|-------------|
| SetRunApplyPrepmtCreditMemoAndRefund(POSSession, CreditMemoNo, ServiceInvoiceNo) | Configures layaway cancellation mode: create credit memo, apply to prepayment invoices, create refund line. |
| SetRunCreateAndPostDownpmtAndLayawayInvoices(DownpaymentPct, PaymentTerms, Instalments) | Configures layaway creation: calculates installment percentages and creates prepayment invoices. |
| SetRunHandleDownpayment(POSSession, DownpaymentInvoiceNo) | Configures downpayment handling mode: balances the document with downpayment. |
| ApplyPrepmtCreditMemoAndRefund(var SalesHeader) | Cancels layaway: applies credit memo to open prepayment invoices, handles remaining refund. |
| CreateAndPostDownpmtAndLayawayInvoices(var SalesHeader) | Creates downpayment + installment invoices. Splits remaining amount equally across installments. |

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| — | NPR POS Sales Document Setup | Configuration page for document posting settings |
| — | NPR POS Prepaym. Invoices | List of prepayment invoices |
| — | NPR POS Apply Cust. Entries | Customer ledger entry application page |
| — | NPR POS Entry S Lines Relation | Entry-to-sales-document-line relation view |
| — | POS Posted Documents | List of posted sales documents |
| — | Debitsaleinfo | Debit sale information |
| — | RetailTypes | Retail document type configuration |

## Enums

| Enum | Values | Description |
|------|--------|-------------|
| PostSalesPostingType | — | Sales document posting type |
| SalesDocFunctionToRun | — | Extensible function selection for document processing |
