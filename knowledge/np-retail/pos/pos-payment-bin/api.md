---
type: reference
tags: [np-retail, pos, payment-bin, pos-payment-bin]
relates:
  - np-retail/pos/pos-payment-bin/overview.md
updated: 2026-05-09
---

# POS Payment Bin Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150617 | "NPR POS Payment Bin" | POS Payment Bin | PK: No. (Code[10]). Others: POS Store Code, Attached to POS Unit No., Description, Status (Option: Open/Closed/Being Counted), Eject Method (Code[20]), Bin Type (Option: Cash Drawer/Bank/Safe/Virtual), Suppress EOD Posting (Boolean) | Central bin definition. Tracks physical/virtual cash storage locations, their eject method, and status lifecycle |
| *(unknown)* | "NPR POS Paym. Bin Eject Param." | POS Paym. Bin Eject Param. | Bin No. + Name | Generic parameter storage for eject methods. Supports Data Type (Text/Integer/Boolean/Option/Decimal/Date), Value, OptionString |
| *(unknown)* | "NPR POS Counting Denomination" | POS Counting Denomination | Bin No. + Denomination | Denomination counts for physical cash counting at bin transfer time |
| *(unknown)* | "NPR POS Bin Transfer Journal" | POS Bin Transfer Journal | Journal No. + Line No. | Transfer journal lines for moving cash between bins |
| *(unknown)* | "NPR POS Bin Transfer Profile" | POS Bin Transfer Profile | PK: Code | Named templates for bin transfers (e.g., "Daily Cash Drop") |
| *(unknown)* | "NPR POS Posted Bin Transfer Entry" | Posted Bin Transfer Entry | Entry No. (AutoIncrement) | Posted transfer records after journal posting |
| *(unknown)* | "NPR POS Payment Bin Checkp." | POS Payment Bin Checkp. | POS Unit No.+Date+Payment Bin Code+Workshift Checkpoint No. | Periodic bin balance snapshots for reconciliation |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6059843 | "NPR POS Payment Bin" | NPR POS Payment Bin | EjectDrawer(POSPaymentBin, SalePOS, ManualOpen): Boolean | None (public wrapper) |
| 6150641 | "NPR POS Payment Bin Eject Mgt." | NPR POS Payment Bin Eject Mgt. | EjectDrawer(POSPaymentBin, SalePOS, ManualOpen): Boolean, LookupInvokeMethods(POSPaymentBin, var SelectedMethod): Boolean, ShowGenericParameters(POSPaymentBin), CarryOutPaymentBinEject(SalePOS, Force), EjectPaymeBinOnCreditSale(SalePOS), GetTextParameterValue, GetIntegerParameterValue, GetBooleanParameterValue, GetOptionParameterValue, GetDecimalParameterValue, GetDateParameterValue | OnEjectPaymentBin, OnLookupBinInvokeMethods, OnShowInvokeParameters |
| *(unknown)* | "BinTransferPost" | Bin Transfer Post | — | None |
| *(unknown)* | "POSPaymBinEjectOPOS" | POS Paym Bin Eject OPOS | — | None (OPOS drawer eject implementation) |
| *(unknown)* | "POSPaymBinEjectTempl" | POS Paym Bin Eject Templ | — | None (template-based eject method) |
| *(unknown)* | "POSPaymentBinCheckpoint" | POS Payment Bin Checkpoint | — | None |
| *(unknown)* | "EjectPaymentBinOnSale" | Eject Payment Bin On Sale | — | None (subscriber to end-sale workflow) |
| *(unknown)* | "POSPaymBinEjectPublic" | POS Paym Bin Eject Public | — | None (public wrapper for eject) |

### Codeunit Details

**6059843 "NPR POS Payment Bin"** — Public API facade for bin operations. Delegates to `"NPR POS Payment Bin Eject Mgt."`.

**6150641 "NPR POS Payment Bin Eject Mgt."** — Core eject management:
- `CarryOutPaymentBinEject(SalePOS, Force)`: Called at end-of-sale. Checks if any payment method requires drawer open via `IsDrawerOpenRequiredPOSEntry`. If Force=true, always opens. Traces via Sentry spans (bc.pos.endsale.drawer.check, bc.pos.endsale.drawer.open).
- `EjectDrawer(POSPaymentBin, SalePOS, ManualOpen)`: Resolves eject method, fires `OnEjectPaymentBin`, logs to audit log.
- Generic parameter helpers (GetXParameterValue): Look up named parameters from `"NPR POS Paym. Bin Eject Param."` with FindOrCreateRecord pattern (creates default if missing).
- `OnEjectPaymentBin`: Integration event for custom eject hardware implementations
- `OnLookupBinInvokeMethods`: Integration event to populate available eject methods
- `OnShowInvokeParameters`: Integration event for custom eject parameter UI

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR POS Payment Bins" | POS Payment Bins | "NPR POS Payment Bin" | List page for payment bin management |
| *(unknown)* | "NPR POS Paym. Bin Eject Param." | POS Paym. Bin Eject Param. | "NPR POS Paym. Bin Eject Param." | Eject method parameter configuration |
| *(unknown)* | "POSPaymBinSetFloat" | POS Paym Bin Set Float | — | Float setup for bins |
| *(unknown)* | "POSPaymBinEjectParams" | POS Paym Bin EjectParams | — | Eject parameter editing |
| *(unknown)* | "NPR POS Bin Transfer Journal" | POS Bin Transfer Journal | "NPR POS Bin Transfer Journal" | Transfer journal entry |
| *(unknown)* | "BinTransferJournalPos" | Bin Transfer Journal Pos | — | POS-specific transfer entry |
| *(unknown)* | "BinTransferProfile" | Bin Transfer Profile | "NPR POS Bin Transfer Profile" | Transfer profile card |
| *(unknown)* | "POSBinEntries" | POS Bin Entries | — | Bin entry drill-down |
| *(unknown)* | "POSCountDenominList" | POS Count Denomin List | — | Denomination counting list |
| *(unknown)* | "POSPaymentBinCheckpoint" | POS Payment Bin Checkpoint | "NPR POS Payment Bin Checkp." | Checkpoint review |
| *(unknown)* | "BinTransferDenomination" | Bin Transfer Denomination | — | Denomination selection |
| *(unknown)* | "PostedBinTransferJournal" | Posted Bin Transfer Journal | "NPR POS Posted Bin Transfer Entry" | Posted transfer review |

## Queries

| ID | Name | Description |
|----|------|-------------|
| *(unknown)* | "NPR POS Bin Entry Calc." | Calculates bin entries for reconciliation |
