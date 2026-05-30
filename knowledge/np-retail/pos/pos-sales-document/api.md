---
type: reference
tags: [pos, pos-sales-document, np-retail, tables, codeunits, pages, enums, interfaces]
relates:
  - pos/pos-sales-document/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Sales Document/POSActionResrvDocPay/AdyenEFTDocPayRsrv.Codeunit.al
  - Application/src/POS Sales Document/ApplySalespersontoDoc.Codeunit.al
  - Application/src/POS Sales Document/CreditSalePostProcess.Codeunit.al
  - Application/src/POS Sales Document/Debitsaleinfo.Page.al
  - Application/src/POS Sales Document/DimHandlingModifier.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocImp/DocImportDataSourceExt.Codeunit.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/_public/EFTDocPayReservation.Interface.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/EFTDocPayRsrvType.Enum.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/EFTPayReservSetupUtils.Codeunit.al
  - Application/src/POS Sales Document/ImportSalesDocInPOS.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocExp/_public/POSActionDocExpEvents.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocExp/POSActionDocExport.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocExp/POSActionDocExportB.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocImp/POSActionDocImport.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocImp/POSActionDocImportB.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocPayPost/POSActionDocPayPost.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocPayPost/POSActionDocPayPostB.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocPrepay/POSActionDocPrepay.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocPrepay/POSActionDocPrepayB.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocPrepayRefund/POSActionDocPrepayRefund.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocShow/POSActionDocShow.Codeunit.al
  - Application/src/POS Sales Document/POSActionDocShow/POSActionDocShowB.Codeunit.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/POSActionEFTDocPayRsrv.Codeunit.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/POSActionEFTDocPayRsrvB.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayCancel/POSActionLayawayCancel.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayCreate/POSActionLayawayCreate.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayPay/POSActionLayawayPay.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayPay/POSActionLayawayPayB.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayShow/POSActionLayawayShow.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayShow/POSActionLayawayShowB.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayCancel/POSActLayawayCancelB.Codeunit.al
  - Application/src/POS Sales Document/POSActionLayawayCreate/POSActLayawayCreateB.Codeunit.al
  - Application/src/POS Sales Document/POSApplyCustEntries.Page.al
  - Application/src/POS Sales Document/POSApplyCustomerEntries.Codeunit.al
  - Application/src/POS Sales Document/POSAsyncPostingMgt.Codeunit.al
  - Application/src/POS Sales Document/_public/POSBinEjectOnCreditSale.codeunit.al
  - Application/src/POS Sales Document/POSDocExportTryPay.Codeunit.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/POSEFTPayReservSetup.Page.al
  - Application/src/POS Sales Document/POSActionResrvDocPay/POSEFTPayReservSetup.Table.al
  - Application/src/POS Sales Document/POSEntrySLineRelation.Table.al
  - Application/src/POS Sales Document/POSEntrySLinesRelation.Page.al
  - Application/src/POS Sales Document/POSLayawayMgt.Codeunit.al
  - Application/src/POS Sales Document/POSPrepaymentMgt.Codeunit.al
  - Application/src/POS Sales Document/POSPrepaymInvoices.Page.al
  - Application/src/POS Sales Document/POSSalesDocOutputMgt.Codeunit.al
  - Application/src/POS Sales Document/POSActionSalesDocExp/_public/POSSalesDocumentPost.Enum.al
  - Application/src/POS Sales Document/POSSalesDocumentSetup.Page.al
  - Application/src/POS Sales Document/POSSalesDocumentSetup.Table.al
  - Application/src/POS Sales Document/POS Store Shipping Method/POSStoreShipMethodUtil.Codeunit.al
  - Application/src/POS Sales Document/PostedDocBuffer.Table.al
  - Application/src/POS Sales Document/PostedDocuments.Page.al
  - Application/src/POS Sales Document/PostSalesPostingType.Enum.al
  - Application/src/POS Sales Document/RetailType.Table.al
  - Application/src/POS Sales Document/RetailTypes.Page.al
  - Application/src/POS Sales Document/SalesDocExpMgt.Codeunit.al
  - Application/src/POS Sales Document/_public/SalesDocExpMgtPublic.Codeunit.al
  - Application/src/POS Sales Document/SalesDocFunctionToRun.Enum.al
  - Application/src/POS Sales Document/SalesDocImpMgt.Codeunit.al
  - Application/src/POS Sales Document/_public/SalesDocImpMgtPublic.Codeunit.al
  - Application/src/POS Sales Document/POS Store Shipping Method/StoreShipmentMethods.Page.al
  - Application/src/POS Sales Document/POS Store Shipping Method/StoreShipmentProfiles.Page.al
  - Application/src/POS Sales Document/POS Store Shipping Method/StoreShipProfileCard.Page.al
  - Application/src/POS Sales Document/POS Store Shipping Method/StoreShipProfileFees.Page.al
  - Application/src/POS Sales Document/POS Store Shipping Method/StoreShipProfileHeader.Table.al
  - Application/src/POS Sales Document/POS Store Shipping Method/StoreShipProfileLine.Table.al
---

# POS Sales Document — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6150893 | "NPR POS EFT Pay Reserv Setup" | EFT Payment Reservation Setup | "Primary Key" | — |
| 6060070 | "NPR POS Entry S.Line Relation" | POS Entry Sales line Relation | "POS Entry No.", "Line No." | — |
| 6150632 | "NPR POS Sales Document Setup" | POS Sales Document Setup | "Primary Key" | — |
| 6014433 | "NPR Posted Doc. Buffer" | Posted Document Buffer | "Source Record ID", "Document Type", "Document No." | — |
| 6151147 | "NPR Retail Type" | Retail Type | "Retail Type" | — |
| 6150895 | "NPR Store Ship. Profile Header" | Code | Code | — |
| 6150891 | "NPR Store Ship. Profile Line" | Store Shipment Profile Line | "Profile Code", "Line No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6184944 | "NPR Adyen EFT Doc Pay Rsrv" |  | Reserve, GetReservationAmount, ValidatePOSPaymentMethod | — |
| 6014430 | "NPR Apply Salesperson to Doc." |  | SetCode, OnAfterModifySalesHeader | — |
| 6014435 | "NPR Credit Sale Post-Process" |  | POSOnCreditSale, InitializeExecutionOrder, SetInvokeOnFinishCreditSaleSubsribers, OnFinishCreditSale, OnAfterFinishCreditSale | OnBeforeInsertExecutionOrderOnCreditSale, OnAfterInsertExecutionOrderOnCreditSale |
| 6150983 | "NPR Dim. Handling Modifier" |  | SalesHeader_DeclineKeepExistingDimensions | — |
| 6184477 | "NPR Doc. Import DataSource Ext" |  | ThisExtension, ExtensionField_OpenOrders, DefaultExtensionFieldDescr_OpenOrders, OnDiscoverDataSourceExtension, OnGetDataSourceExtension | — |
| 6184955 | "NPR EFT Pay Reserv Setup Utils" |  | CheckPaymentServationSetup | — |
| 6014562 | "NPR Import Sales Doc. In POS" |  | — | — |
| 6151367 | "NPR POS Action Doc Exp Events" |  | OnAddPreWorkflowsToRun, OnAddExternalDocNoLabel, OnAddAttentionLabel, OnBeforeSetDocumentTypeFromBalanceAmount, OnBeforeHandlePrepayment | OnAddPreWorkflowsToRun, OnAddExternalDocNoLabel, OnAddAttentionLabel |
| 6150859 | "NPR POS Action: Doc. Export" |  | Register, RunWorkflow, GetActionScript, ExportSalesDoc, DocumentPayment | — |
| 6059913 | "NPR POS Action: Doc. ExportB" |  | SelectCustomer, SetInputs, SaleLinesExists, CheckCustomer, SetDocumentType | — |
| 6150861 | "NPR POS Action: Doc. Import" |  | Register, RunWorkflow, ImportDoc, OnLookupValue, OnValidateValue | — |
| 6059961 | "NPR POS Action: Doc. Import B" |  | ImportDocument, ImportDocument, ConfirmInvDiscAmount, CheckCustomer, SetPosSaleCustomer | — |
| 6150862 | "NPR POS Action: Doc. Pay&Post" |  | Register, RunWorkflow, GetActionScript, PayAndPost | — |
| 6059914 | "NPR POS Action: Doc.Pay&Post B" |  | CheckCustomer, SelectDocument, SetLinesToPost, ConfirmDocument, ConfirmIfInvoiceQuantityIncreased | — |
| 6150863 | "NPR POS Action: Doc. Prepay" |  | Register, RunWorkflow, GetActionScript, PrepayDocument | — |
| 6059918 | "NPR POS Action: Doc. Prepay B" |  | CheckCustomer, SelectDocument, ConfirmImportInvDiscAmt, SetFilterSalesHeader, CreatePrepaymentLine | — |
| 6150872 | "NPR POSAction: DocPrepayRefund" |  | Register, RunWorkflow, GetActionScript, RefundPrepayment | — |
| 6150867 | "NPR POS Action: Doc. Show" |  | Register, RunWorkflow, GetActionScript, ShowDocument, ActionCode | — |
| 6059963 | "NPR POS Action: Doc. Show-B" |  | ShowSaleDocument, ShowSaleDocument, LookupSalesDoc, CheckCustomer | — |
| 6184940 | "NPR POSActionEFTDocPayRsrv" |  | Register, RunWorkflow, GetActionScript, CreateDocumentReservationAmountSale, ReserverPayment | — |
| 6184941 | "NPR POSActionEFTDocPayRsrvB" |  | CheckCustomer, SelectDocument, ConfirmDocument, CreateSalesHeaderFilterFromSalePOS, CreateDocumentReservationAmountSalesLine | — |
| 6150870 | "NPR POS Action: Layaway Cancel" |  | Register, GetActionScript, RunWorkflow, Cancel, OnLookupParameter | — |
| 6150868 | "NPR POS Action: Layaway Create" |  | Register, GetActionScript, RunWorkflow, OnActionCreateLayaway, OnLookupParameter | — |
| 6150869 | "NPR POS Action: Layaway Pay" |  | Register, GetActionScript, RunWorkflow, ActionCode, OnActionPayLayaway | — |
| 6060020 | "NPR POS Action: Layaway Pay-B" |  | PayLayaway, CheckCustomer, SelectOrder, ConfirmImportInvDiscAmt, SelectPrepaymentInvoice | — |
| 6150871 | "NPR POS Action: LayawayShow" |  | Register, GetActionScript, RunWorkflow, OnActionShowDocuments, ActionCode | — |
| 6060007 | "NPR POS Action: LayawayShow-B" |  | RunDocument, CheckCustomer, PromptSalesOrderList | — |
| 6060008 | "NPR POS Act.:Layaway Cancel-B" |  | CancelLayaway, CheckCustomer, SelectOrder, ConfirmImportInvDiscAmt, CreditPrepayments | — |
| 6060012 | "NPR POS Act.: Layaway Create-B" |  | CreateLayaway, InsertCreationFeeItem, ExportToOrderAndEndSale, StartNewSale, HandleDownpayment | — |
| 6014410 | "NPR POS Apply Customer Entries" |  | DeleteExistingLines, FilterPosSaleLines, SetCustLedgEntryView, SelectCustomerEntries, BalanceDocument | — |
| 6151380 | "NPR POS Async. Posting Mgt." |  | HandlePosting, AsyncPostPrepaymentBeforePOSSaleEnd, ReadyToBePosted, GetInvoiceType, AsyncPostDocumentBeforePOSSaleEnd | — |
| 6184665 | "NPR POS Bin Eject OnCreditSale" |  | — | — |
| 6014417 | "NPR POS Doc. Export Try Pay" |  | HandlePrepaymentTransactional, HandlePayAndPostTransactional | — |
| 6014425 | "NPR POS Layaway Mgt." |  | SetRunApplyPrepmtCreditMemoAndRefund, SetRunCreateAndPostDownpmtAndLayawayInvoices, GetDownpaymentInvoiceNo, SetRunHandleDownpayment, ApplyPrepmtCreditMemoAndRefund | — |
| 6014408 | "NPR POS Prepayment Mgt." |  | GetPrepaymentAmountToDeductInclVAT, SetPrepaymentAmountToPayInclVAT, SetPrepaymentPercentageToPay, SetManualLinePrepaymentPercentageToPay, CalcRemainingLinePrepmtAmtToInvoice | — |
| 6014429 | "NPR POS Sales Doc. Output Mgt." |  | SetOnRunOperation, SendDocument, PrintDocument, SendPdf2NavDocument, PrintReportSelection_Customer | — |
| 6184946 | "NPR POS Store Ship Method Util" |  | CreatePOSStoreShipmentMethodFromMagentoShipmentMethodMappings, CreatePOSStoreShipmentMethodFromMagentoShipmentMethodMappings, GetPOSStoreShipmentMethodLastLineNo | — |
| 6014407 | "NPR Sales Doc. Exp. Mgt." |  | SetAsk, SetInvoice, SetPrint, SetReceive, SetShip | — |
| 6060005 | "NPR Sales Doc. Exp. Mgt Public" |  | OnAfterDebitSalePostEvent, CreateSalesHeaderOnBeforeSalesHeaderModify, OnBeforePost | OnAfterDebitSalePostEvent, CreateSalesHeaderOnBeforeSalesHeaderModify, OnBeforePost |
| 6014406 | "NPR Sales Doc. Imp. Mgt." |  | SalesDocumentToPOS, SalesDocumentToPOSCustom, SpecificItemTrackingExist, InitNewLine, FromSaleLineToSaleLinePOS | — |
| 6059986 | "NPR Sales Doc. Imp. Mgt Public" |  | SalesDocumentToPOS, GetImportInvDiscAmtQst, GetTotalAmountToBeInvoiced, OnAfterTransferFromSaleLineToSaleLinePOS | OnAfterTransferFromSaleLineToSaleLinePOS |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6014401 | "NPR Debit sale info" | Register/Debit Sale Information | "Sales Header" | — |
| 6014493 | "NPR POS Apply Cust. Entries" | Apply Customer Entries | "Cust. Ledger Entry" | — |
| 6184710 | "NPR POS EFT Pay Reserv Setup" | POS EFT Payment Reservation Setup | "NPR POS EFT Pay Reserv Setup" | — |
| 6151263 | "NPR POS Entry S.Lines Relation" | POS Entry Sale Document Lines Relation | "NPR POS Entry S.Line Relation" | — |
| 6150674 | "NPR POS Prepaym. Invoices" | POS Prepayment Invoices | "Sales Invoice Header" | — |
| 6151289 | "NPR POS Sales Document Setup" | POS Sales Document Setup | "NPR POS Sales Document Setup" | — |
| 6014438 | "NPR Posted Documents" | Posted Documents | "NPR Posted Doc. Buffer" | — |
| 6185040 | "NPR Retail Types" | Sales Document Retail Types | "NPR Retail Type" | — |
| 6184712 | "NPR Store Shipment Methods" | Store Shipment Methods | "NPR Store Ship. Profile Line" | — |
| 6184713 | "NPR Store Shipment Profiles" | Store Shipment Profiles | "NPR Store Ship. Profile Header" | — |
| 6184714 | "NPR Store Ship. Profile Card" | Store Shipment Profile Card | "NPR Store Ship. Profile Header" | — |
| 6184706 | "NPR Store Ship Profile Fees" | Shipment Fees | "NPR Store Ship. Profile Line" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6059774 | "NPR EFT Doc Pay Rsrv Type" |  | Adyen EFT Terminal |
| 6014544 | "NPR POS Sales Document Post" | No | No, Synchronous, Asynchronous, Posted |
| 6014528 | "NPR Post Sales Posting Type" |   |  , Order, Prepayment Refund, Prepayment |
| 6014447 | "NPR Sales Doc. FunctionToRun" |  | Default, Invoke OnFinishCreditSale Subsribers |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR EFT Doc Pay Reservation" | Reserve, GetReservationAmount, ValidatePOSPaymentMethod |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AdyenEFTDocPayRsrv.Codeunit.al, ApplySalespersontoDoc.Codeunit.al, CreditSalePostProcess.Codeunit.al, Debitsaleinfo.Page.al, DimHandlingModifier.Codeunit.al, DocImportDataSourceExt.Codeunit.al, EFTDocPayReservation.Interface.al, EFTDocPayRsrvType.Enum.al, EFTPayReservSetupUtils.Codeunit.al, ImportSalesDocInPOS.Codeunit.al, POSActionDocExpEvents.Codeunit.al, POSActionDocExport.Codeunit.al, POSActionDocExportB.Codeunit.al, POSActionDocImport.Codeunit.al, POSActionDocImportB.Codeunit.al, POSActionDocPayPost.Codeunit.al, POSActionDocPayPostB.Codeunit.al, POSActionDocPrepay.Codeunit.al, POSActionDocPrepayB.Codeunit.al, POSActionDocPrepayRefund.Codeunit.al, POSActionDocShow.Codeunit.al, POSActionDocShowB.Codeunit.al, POSActionEFTDocPayRsrv.Codeunit.al, POSActionEFTDocPayRsrvB.Codeunit.al, POSActionLayawayCancel.Codeunit.al, POSActionLayawayCreate.Codeunit.al, POSActionLayawayPay.Codeunit.al, POSActionLayawayPayB.Codeunit.al, POSActionLayawayShow.Codeunit.al, POSActionLayawayShowB.Codeunit.al, POSActLayawayCancelB.Codeunit.al, POSActLayawayCreateB.Codeunit.al, POSApplyCustEntries.Page.al, POSApplyCustomerEntries.Codeunit.al, POSAsyncPostingMgt.Codeunit.al, POSBinEjectOnCreditSale.codeunit.al, POSDocExportTryPay.Codeunit.al, POSEFTPayReservSetup.Page.al, POSEFTPayReservSetup.Table.al, POSEntrySLineRelation.Table.al, POSEntrySLinesRelation.Page.al, POSLayawayMgt.Codeunit.al, POSPrepaymentMgt.Codeunit.al, POSPrepaymInvoices.Page.al, POSSalesDocOutputMgt.Codeunit.al, POSSalesDocumentPost.Enum.al, POSSalesDocumentSetup.Page.al, POSSalesDocumentSetup.Table.al, POSStoreShipMethodUtil.Codeunit.al, PostedDocBuffer.Table.al, PostedDocuments.Page.al, PostSalesPostingType.Enum.al, RetailType.Table.al, RetailTypes.Page.al, SalesDocExpMgt.Codeunit.al, SalesDocExpMgtPublic.Codeunit.al, SalesDocFunctionToRun.Enum.al, SalesDocImpMgt.Codeunit.al, SalesDocImpMgtPublic.Codeunit.al, StoreShipmentMethods.Page.al, StoreShipmentProfiles.Page.al, StoreShipProfileCard.Page.al, StoreShipProfileFees.Page.al, StoreShipProfileHeader.Table.al, StoreShipProfileLine.Table.al
