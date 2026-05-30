---
type: reference
tags: [np-retail, pos, pos-resume-sale, tables, codeunits, pages]
relates:
  - np-retail/pos/pos-resume-sale/overview.md
updated: 2026-05-09
---

# POS Resume Sale API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6014418 | NPR Archive Sale POS | Register No., Sales Ticket No., POS Store Code, Date, Amount, Amount Including VAT, User ID | Archive table for old unfinished sales. Contains all sale header fields matching active sale structure. |
| — | NPR Archive Sale Line POS | Register No., Sales Ticket No., Line No. | Archived sale line items. |
| — | ArchivePOSInfoTrx | Register No., Sales Ticket No. | Archived info transactions (comments, additional data). |
| — | ArchRetailCrossRef | — | Archived cross-references. |
| — | ArchNpDcSLPOSNewCoupon | — | Archived discount coupon data. |
| — | ArchNpIaSLPOSAddOn | — | Archived item add-ons. |
| — | ArchNpRvSLPOSRef | — | Archived retail voucher references. |
| — | ArchiveNpDcSLPOSCoupon | — | Archived discount coupons. |
| — | ArchiveNpRvSLPOSVouch | — | Archived retail vouchers. |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6150739 | NPR POS Resume Sale Mgt. | SelectUnfinishedSaleToResume(), DoSaveAsPOSQuote(), LoadFromPOSQuote(), DoCancelSale(), LogSaleResume() | Core resume management: detect, prompt, cancel, park, resume. |
| 6150743 | NPR POS Try Resume&CancelSale | Run(SalePOS) | Attempts to cancel a sale. Returns success/failure. |

### NPR POS Resume Sale Mgt. Methods

| Method | Description |
|--------|-------------|
| SelectUnfinishedSaleToResume(var SalePOS, POSSession, var POSQuoteEntryNo) | Main entry point. Finds unfinished sales for current user/unit. Returns selected sale and whether to resume. |
| DoSaveAsPOSQuote(POSSession, SalePOS, SkipDialog) | Saves sale as parked quote. Returns quote entry number. |
| LoadFromPOSQuote(var SalePOS, POSQuoteEntryNo) | Loads a saved quote back into active sale. Creates new ticket if cross-unit/cross-day. |
| DoCancelSale(SalePOS, POSSession) | Forces cancel; errors if fails. |
| LogSaleResume(SalePOS, FromTicketNo) | Creates audit entry for sale resume via `POSCreateEntry.InsertResumeSaleEntry`. |
| SetAlternativeCancelDescription(Text) | Sets alternative description for cancel operation. |

### Event: OnBeforePromptResumeSale

`OnBeforePromptResumeSale(SalePOS, POSSession, var SkipDialog, var ActionOption, var ActionOnCancelError, var Handled)`

Subscribers can override the entire resume dialog. Parameters:
- `SkipDialog` — Set true to suppress UI
- `ActionOption` — " ", Resume, CancelAndNew, SaveAsQuote, SkipAndNew
- `ActionOnCancelError` — " ", Resume, SaveAsQuote, ShowError

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| — | NPR Unfinished POS Sale | Dialog page showing unfinished sale with Resume/Cancel/New options |
| — | NPR Unfinished POS Sale Trx | Transaction details for unfinished sale |
| — | NPR Archive POS Sale | List page for archived sales |
