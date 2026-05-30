---
type: reference
tags: [pos, pos-payment-bin, np-retail, tables, codeunits, pages, queries]
relates:
  - pos/pos-payment-bin/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Payment Bin/BinTransferDenomination.Page.al
  - Application/src/POS Payment Bin/BinTransferDenomination.Table.al
  - Application/src/POS Payment Bin/BinTransferJournal.Page.al
  - Application/src/POS Payment Bin/BinTransferJournal.Table.al
  - Application/src/POS Payment Bin/BinTransferJournalPos.Page.al
  - Application/src/POS Payment Bin/BinTransferPost.Codeunit.al
  - Application/src/POS Payment Bin/BinTransferProfile.Page.al
  - Application/src/POS Payment Bin/BinTransferProfile.Table.al
  - Application/src/POS Payment Bin/_public/EjectPaymentBinOnSale.Codeunit.al
  - Application/src/POS Payment Bin/_public/POSBinEntries.Page.al
  - Application/src/POS Payment Bin/POSBinEntryCalc.Query.al
  - Application/src/POS Payment Bin/POSCountDenominList.Page.al
  - Application/src/POS Payment Bin/POSCountingDenomination.Table.al
  - Application/src/POS Payment Bin/POSPaymBinEjectOPOS.Codeunit.al
  - Application/src/POS Payment Bin/POSPaymBinEjectParam.Table.al
  - Application/src/POS Payment Bin/POSPaymBinEjectParams.Page.al
  - Application/src/POS Payment Bin/_public/POSPaymBinEjectPublic.Codeunit.al
  - Application/src/POS Payment Bin/POSPaymBinEjectTempl.Codeunit.al
  - Application/src/POS Payment Bin/POSPaymBinSetFloat.Page.al
  - Application/src/POS Payment Bin/_public/POSPaymentBin.Codeunit.al
  - Application/src/POS Payment Bin/_public/POSPaymentBin.Table.al
  - Application/src/POS Payment Bin/_public/POSPaymentBinCheckp.Table.al
  - Application/src/POS Payment Bin/POSPaymentBinCheckpoint.Codeunit.al
  - Application/src/POS Payment Bin/_public/POSPaymentBinCheckpoint.Page.al
  - Application/src/POS Payment Bin/_public/POSPaymentBinEjectMgt.Codeunit.al
  - Application/src/POS Payment Bin/POSPaymentBins.Page.al
  - Application/src/POS Payment Bin/PostedBinTransferEntry.Table.al
  - Application/src/POS Payment Bin/PostedBinTransferJournal.Page.al
---

# POS Payment Bin — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6151587 | "NPR BinTransferDenomination" | Bin Transfer Denomination | EntryNo, POSPaymentMethodCode, DenominationType, Denomination, DenominationVariantID | — |
| 6151584 | "NPR BinTransferJournal" | Bin Payment Transfer Journal | EntryNo | — |
| 6151586 | "NPR Bin Transfer Profile" | Bin Transfer Profile | ProfileCode | — |
| 6014457 | "NPR POS Counting Denomination" | POS Counting Denomination | "Payment Type", Prefix, "Register No.", Weight, "Global Dimension 1 Code" | — |
| 6150633 | "NPR POS Paym. Bin Eject Param." | POS Payment Bin Eject Param. | "Bin No.", Name | — |
| 6150617 | "NPR POS Payment Bin" | POS Payment Bin | "No." | — |
| 6150628 | "NPR POS Payment Bin Checkp." | POS Payment Bin Checkpoint | "Entry No." | — |
| 6151585 | "NPR PostedBinTransferEntry" | Posted POS Payment Bin Transfer Journal | EntryNo | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6150633 | "NPR BinTransferPost" |  | SetReleased, InitPaymentMethodDenomination, ReceiveToPaymentBin, ReceiveToPaymentBinAndPost, TransferAndPostEntry | — |
| 6184649 | "NPR Eject Payment Bin On Sale" |  | — | — |
| 6150642 | "NPR POS Paym.Bin Eject: OPOS" |  | InvokeMethodCode, OnEjectPaymentBin, OnLookupBinInvokeMethods, OnShowInvokeParameters, OnGetParameterNameCaption | — |
| 6060081 | "NPR POS Paym. Bin Eject Public" |  | OnSelectDefaultPrintTemplate | OnSelectDefaultPrintTemplate |
| 6150646 | "NPR POS Paym.Bin Eject: Templ." |  | InvokeMethodCode, InvokeParameterName, OnEjectPaymentBin, SelectDefaultPrintTemplate, OnLookupBinInvokeMethods | — |
| 6059843 | "NPR POS Payment Bin" |  | EjectDrawer | — |
| 6150628 | "NPR POS Payment Bin Checkpoint" |  | CreatePosEntryBinCheckpoint, AddBinCountingCheckpoint_PE, TransferToPaymentBin | — |
| 6150641 | "NPR POS Payment Bin Eject Mgt." |  | EjectDrawer, LookupInvokeMethods, ShowGenericParameters, GetTextParameterValue, GetIntegerParameterValue | OnEjectPaymentBin, OnShowInvokeParameters |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6151237 | "NPR BinTransferDenomination" | Bin Transfer Denomination | "NPR BinTransferDenomination" | — |
| 6151240 | "NPR BinTransferJournal" | POS Payment Bin Transfer Journal | "NPR BinTransferJournal" | — |
| 6151238 | "NPR BinTransferJournalPos" | POS Payment Bin Transfer Journal (POS) | "NPR BinTransferJournal" | — |
| 6151239 | "NPR BinTransferProfile" | Bin Transfer Profile | "NPR Bin Transfer Profile" | — |
| 6151246 | "NPR POS Bin Entries" | POS Bin Entries | "NPR POS Bin Entry" | — |
| 6014488 | "NPR POS Count. Denomin. List" | Credit Card Prefix | "NPR POS Counting Denomination" | — |
| 6150622 | "NPR POS Paym. Bin Eject Params" | POS Payment Bin Eject Parameters | "NPR POS Paym. Bin Eject Param." | — |
| 6150623 | "NPR POS Paym.Bin Set Float" | POS Payment Bin Set Float | "NPR POS Payment Method" | — |
| 6150628 | "NPR POS Payment Bin Checkpoint" | POS Payment Bin Checkpoint | "NPR POS Payment Bin Checkp." | — |
| 6150620 | "NPR POS Payment Bins" | POS Payment Bins | "NPR POS Payment Bin" | — |
| 6151243 | "NPR PostedBinTransferJournal" | Posted POS Payment Bin Transfer Journal | "NPR PostedBinTransferEntry" | — |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014418 | "NPR POS Bin Entry Calc." | POS Bin Entry Calc.  | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: BinTransferDenomination.Page.al, BinTransferDenomination.Table.al, BinTransferJournal.Page.al, BinTransferJournal.Table.al, BinTransferJournalPos.Page.al, BinTransferPost.Codeunit.al, BinTransferProfile.Page.al, BinTransferProfile.Table.al, EjectPaymentBinOnSale.Codeunit.al, POSBinEntries.Page.al, POSBinEntryCalc.Query.al, POSCountDenominList.Page.al, POSCountingDenomination.Table.al, POSPaymBinEjectOPOS.Codeunit.al, POSPaymBinEjectParam.Table.al, POSPaymBinEjectParams.Page.al, POSPaymBinEjectPublic.Codeunit.al, POSPaymBinEjectTempl.Codeunit.al, POSPaymBinSetFloat.Page.al, POSPaymentBin.Codeunit.al, POSPaymentBin.Table.al, POSPaymentBinCheckp.Table.al, POSPaymentBinCheckpoint.Codeunit.al, POSPaymentBinCheckpoint.Page.al, POSPaymentBinEjectMgt.Codeunit.al, POSPaymentBins.Page.al, PostedBinTransferEntry.Table.al, PostedBinTransferJournal.Page.al
