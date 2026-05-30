---
type: reference
tags: [integration, adyen, np-retail, tables, codeunits, pages, enums, reports, pageextensions, permissionsets]
relates:
  - integration/adyen-reconciliation/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Adyen Reconciliation/AdyenEFTTransPosting.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenEnvironmentType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenFeePosting.Codeunit.al
  - Application/src/Adyen Reconciliation/_public/AdyenIntegrationEvents.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenManagement.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenMerchantAccount.Table.al
  - Application/src/Adyen Reconciliation/AdyenMerchantAccounts.Page.al
  - Application/src/Adyen Reconciliation/AdyenMerchantFilterType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenMerchantSetup.Page.al
  - Application/src/Adyen Reconciliation/AdyenMerchantSetup.Table.al
  - Application/src/Adyen Reconciliation/AdyenMissingTransPost.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenOnPremWebhookInput.Report.al
  - Application/src/Adyen Reconciliation/AdyenPostingGLAccounts.Enum.al
  - Application/src/Adyen Reconciliation/AdyenProcessReportReady.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenRecActivities.Page.al
  - Application/src/Adyen Reconciliation/AdyenRecHeaderStatus.Enum.al
  - Application/src/Adyen Reconciliation/AdyenRecLineStatus.Enum.al
  - Application/src/Adyen Reconciliation/AdyenRecLogStatus.Enum.al
  - Application/src/Adyen Reconciliation/AdyenRecLogType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenReconAmountType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenReconciliation.Page.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationCue.PageExt.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationCue.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationHdr.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationLine.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationLines.Page.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationList.Page.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationLog.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconciliationLogs.Page.al
  - Application/src/Adyen Reconciliation/AdyenReconLine.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconLineRelation.Page.al
  - Application/src/Adyen Reconciliation/AdyenReconLineRelation.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconsLineRelation.Table.al
  - Application/src/Adyen Reconciliation/AdyenReconUpgrade.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenRecreateRecDoc.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenRecReportProcess.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenRecTransType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenReportProcStatus.Enum.al
  - Application/src/Adyen Reconciliation/AdyenReportType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenSetup.Page.al
  - Application/src/Adyen Reconciliation/AdyenSetup.Table.al
  - Application/src/Adyen Reconciliation/AdyenSimulateWebhookReq.Report.al
  - Application/src/Adyen Reconciliation/AdyenSkipPostCheck.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenTransMatching.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenTransRecTable.Enum.al
  - Application/src/Adyen Reconciliation/AdyenTrMatchingSession.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenTryWebhookProcess.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenWebhook.PermissionSet.al
  - Application/src/Adyen Reconciliation/AdyenWebhook.Table.al
  - Application/src/Adyen Reconciliation/AdyenWebhookEventCode.Enum.al
  - Application/src/Adyen Reconciliation/AdyenWebhookEventCode.Table.al
  - Application/src/Adyen Reconciliation/AdyenWebhookEventCodes.Page.al
  - Application/src/Adyen Reconciliation/AdyenWebhookLog.Table.al
  - Application/src/Adyen Reconciliation/AdyenWebhookLogs.Page.al
  - Application/src/Adyen Reconciliation/AdyenWebhookLogType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenWebhookProcessing.Codeunit.al
  - Application/src/Adyen Reconciliation/AdyenWebhookRequestType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenWebhooks.Page.al
  - Application/src/Adyen Reconciliation/AdyenWebhookSetup.Table.al
  - Application/src/Adyen Reconciliation/AdyenWebhookSetupCard.Page.al
  - Application/src/Adyen Reconciliation/AdyenWebhookSetupList.Page.al
  - Application/src/Adyen Reconciliation/AdyenWebhookStatus.Enum.al
  - Application/src/Adyen Reconciliation/AdyenWebhookType.Enum.al
  - Application/src/Adyen Reconciliation/AdyenWHRequestFactbox.Page.al
  - Application/src/Adyen Reconciliation/AdyenWWSSecurityType.Enum.al
  - Application/src/Adyen Reconciliation/_public/AFRecAPIRequest.Codeunit.al
  - Application/src/Adyen Reconciliation/AFRecWebhookRequest.Table.al
  - Application/src/Adyen Reconciliation/AFRecWebhookRequests.Page.al
  - Application/src/Adyen Reconciliation/MerchantAccount.Enum.al
  - Application/src/Adyen Reconciliation/MerchantCurrencySetup.Page.al
  - Application/src/Adyen Reconciliation/MerchantCurrencySetup.Table.al
---

# Adyen Reconciliation — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6150806 | "NPR Adyen Merchant Account" | NP Pay Merchant Account | Name | — |
| 6150829 | "NPR Adyen Merchant Setup" | NP Pay Merchant Account Setup | "Merchant Account" | — |
| 6150802 | "NPR Adyen Reconciliation Cue" | NP Pay Reconciliation Cue | "Primary Key" | — |
| 6150788 | "NPR Adyen Reconciliation Hdr" | NP Pay Reconciliation Header | "Document No." | — |
| 6150789 | "NPR Adyen Reconciliation Line" | NP Pay Reconciliation Line | "Document No.", "Line No.", "Merchant Order Reference", "Batch Number" | — |
| 6150800 | "NPR Adyen Reconciliation Log" | NP Pay Reconciliation Log | "ID" | — |
| 6150874 | "NPR Adyen Recon. Line" | NP Pay Reconciliation Line | "Document No.", "Line No." | — |
| 6150876 | "NPR Adyen Recon. Line Relation" | NP Pay Reconciliation Line Relation | "Document No.", "Document Line No.", "Amount Type" | — |
| 6150982 | "NPR Adyen Recons.Line Relation" | NP Pay Reconciliation Line Relation | "Entry No." | — |
| 6150801 | "NPR Adyen Setup" | NP Pay Setup | AdyenManagement.UpdateMerchantList(0 | — |
| 6150880 | "NPR Adyen Webhook" | NP Pay Webhook Request | "Entry No." | — |
| 6150875 | "NPR Adyen Webhook Event Code" | NP Pay Webhook Event Code | "Primary Key" | — |
| 6150881 | "NPR Adyen Webhook Log" | NP Pay Webhook Log | "Entry No." | — |
| 6150805 | "NPR Adyen Webhook Setup" | NP Pay Webhook Setup | "Primary Key" | — |
| 6150791 | "NPR AF Rec. Webhook Request" | NP Pay Reconciliation Report | ID | — |
| 6151208 | "NPR Merchant Currency Setup" | NP Pay Merchant Account Currency Setup | "Merchant Account Name", "Reconciliation Account Type", "NP Pay Currency Code" | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6184865 | "NPR Adyen EFT Trans. Posting" |  | PrepareRecords, GetOriginAccount, CreatePostGL, PostGenJnlLine, PostEFT | — |
| 6184827 | "NPR Adyen Fee Posting" |  | FeePosted, PrepareRecords, TestGLAccountType, AssignAccountNoAndAmountType, GetGlEntrySystemID | — |
| 6184891 | "NPR Adyen Integration Events" |  | — | — |
| 6184796 | "NPR Adyen Management" |  | UpdateMerchantList, CreateWebhook, ModifyWebhook, DeleteWebhook, RefreshWebhook | — |
| 6184943 | "NPR Adyen Missing Trans. Post" |  | PrepareRecords, GetGLSystemID, CreateGenJournalLine, SetAsBalancingGenJournalLine, PostGenJnlLine | — |
| 6184920 | "NPR Adyen Process Report Ready" |  | ProcessReportReadyWebhook | — |
| 6184908 | "NPR Adyen Recon. Upgrade" |  | UpdatePSPReferenceForEFTTrans, UpdateAdyenSetupCompanyID, UpdateAdyenReconLinePostingAllowed, UpdateAdyenReconciliationStatus, UpdateAdyenReconciliationDocumentProcessingStatus | — |
| 6248336 | "NPR Adyen Recreate Rec. Doc." |  | — | — |
| 6185038 | "NPR Adyen Rec. Report Process" |  | — | — |
| 6185128 | "NPR Adyen Skip Post Check" |  | OnBeforeCheckEntries | — |
| 6184779 | "NPR Adyen Trans. Matching" |  | CreateSettlementDocuments, RecreateDocumentEntries, InitReconciliationHeader, InitReconciliationLine, InsertReconciliationLine | — |
| 6184786 | "NPR Adyen Tr. Matching Session" |  | RefreshReconciliationJob, SetupReconciliationTaskProcessingJobQueue, SetupReconciliationTaskProcessingJobQueue, CurrCodeunitID | — |
| 6248332 | "NPR Adyen Try Webhook Process" |  | ProcessWebhookStatus, ProcessRefundNotification, ProcessPaymentByLinkAuthorizationNotification, AuthorizeMagentoPaymentLine, ProcessPayByLinkRecurringContractNotification | — |
| 6184931 | "NPR Adyen Webhook Processing" |  | — | — |
| 6184771 | "NPR AF Rec. API Request" |  | ReceiveWebhook, PostReportReady | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6184552 | "NPR Adyen Merchant Accounts" | NP Pay Merchant Accounts | "NPR Adyen Merchant Account" | — |
| 6184582 | "NPR Adyen Merchant Setup" | NP Pay Merchant Account Default Setup | "NPR Adyen Merchant Setup" | — |
| 6184535 | "NPR Adyen Rec. Activities" | NP Pay Reconciliation Activities | "NPR Adyen Reconciliation Cue" | — |
| 6184502 | "NPR Adyen Reconciliation" | NP Pay Reconciliation Document | "NPR Adyen Reconciliation Hdr" | — |
| 6184503 | "NPR Adyen Reconciliation Lines" | NP Pay Reconciliation Lines | "NPR Adyen Recon. Line" | — |
| 6184534 | "NPR Adyen Reconciliation List" | NP Pay Reconciliation List | "NPR Adyen Reconciliation Hdr" | — |
| 6184536 | "NPR Adyen Reconciliation Logs" | NP Pay Reconciliation Logs | "NPR Adyen Reconciliation Log" | — |
| 6184657 | "NPR Adyen Recon. Line Relation" | NP Pay Recon. Line Relation | "NPR Adyen Recons.Line Relation" | — |
| 6184531 | "NPR Adyen Setup" | NP Pay Setup | "NPR Adyen Setup" | — |
| 6184655 | "NPR Adyen Webhook Event Codes" | NP Pay Webhook Event Codes | "NPR Adyen Webhook Event Code" | — |
| 6184669 | "NPR Adyen Webhook Logs" | NP Pay Webhook Logs | "NPR Adyen Webhook Log" | — |
| 6184665 | "NPR Adyen Webhooks" | NP Pay Webhook Requests | "NPR Adyen Webhook" | — |
| 6184550 | "NPR Adyen Webhook Setup Card" | NP Pay Webhook Setup Card | "NPR Adyen Webhook Setup" | — |
| 6184551 | "NPR Adyen Webhook Setup List" | NP Pay Webhook Setup List | "NPR Adyen Webhook Setup" | — |
| 6184533 | "NPR Adyen WH Request Factbox" | NP Pay Webhook Data | "NPR Adyen Webhook" | — |
| 6184519 | "NPR AF Rec. Webhook Requests" | NP Pay Reconciliation Reports | "NPR AF Rec. Webhook Request" | — |
| 6185081 | "NPR Merchant Currency Setup" | Merchant Currency Setup | "NPR Merchant Currency Setup" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014696 | "NPR Adyen Environment Type" | Test Environment | Test, Live |
| 6014655 | "NPR Adyen Merchant Filter Type" | allAccounts | allAccounts, includeAccounts, excludeAccounts |
| 6014674 | "NPR Adyen Posting GL Accounts" | Deposit G/L Account | Deposit G/L Account, Fee G/L Account, Markup G/L Account, Other commissions G/L Account, Invoice Deduction G/L Account, Chargeback Fees G/L Account, Merchant Payout Account, Advancement External Commission G/L Account |
| 6059795 | "NPR Adyen Rec. Header Status" | Unmatched | Unmatched, Matched, Reconciled, Posted |
| 6014661 | "NPR Adyen Rec. Line Status" |   |  , Matched, Matched Manually, Failed to Match, Reconciled, Failed to Post, Posted, Posted Failed to Match |
| 6014663 | "NPR Adyen Rec. Log Status" | Success | Success, Failed |
| 6014668 | "NPR Adyen Rec. Log Type" | Get Report | Get Report, Import Lines, Match Transactions, Reconcile Transactions, Post Transactions, Background Session, Validate Report Scheme, Init Setup |
| 6014687 | "NPR Adyen Recon. Amount Type" | Transaction | Transaction, Fee, Markup, Other commissions, Invoice Deduction, Chargeback Fees, Merchant Payout, Acquirer Payout |
| 6014662 | "NPR Adyen Rec. Trans. Type" |   |  , Settled, Fee, MiscCosts, MerchantPayout, Refunded, Chargeback, SecondChargeback |
| 6059806 | "NPR Adyen Report Proc. Status" |   |  , Success, Failed |
| 6014673 | "NPR Adyen Report Type" | Undefined | Undefined, Settlement details, External Settlement detail (C) |
| 6014671 | "NPR Adyen Trans. Rec. Table" | To Be Determined | To Be Determined, EFT Transaction, Magento Payment Line, G/L Entry, Subscription Payment |
| 6014686 | "NPR Adyen Webhook Event Code" | ADVICE_OF_DEBIT | ADVICE_OF_DEBIT, AUTHENTICATION, AUTHORISATION, AUTHORISATION_ADJUSTMENT, AUTORESCUE, AUTORESCUE_NEXT_ATTEMPT, CANCEL_AUTORESCUE, CANCEL_OR_REFUND |
| 6014697 | "NPR Adyen Webhook Log Type" | Register | Register, Process, Error |
| 6059768 | "NPR Adyen Webhook Request Type" |   |  , Reconciliation, Pay by Link, Endless aisle |
| 6059767 | "NPR Adyen Webhook Status" | New | New, Processed, Error, Canceled |
| 6014649 | "NPR Adyen Webhook Type" | standard | standard, account-settings-notification, banktransfer-notification, boletobancario-notification, directdebit-notification, ach-notification-of-change-notification, pending-notification, ideal-notification |
| 6014664 | "NPR Adyen WWS Security Type" |   |  , Basic authentication |
| 6059910 | "NPR Merchant Account" |  |  , Merchant Payout, External Merchant Payout, Fee, Deposit, Markup, Other commissions, Invoice Deduction |


## Reports

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014562 | "NPR Adyen OnPrem Webhook Input" | NP Pay OnPrem Webhook Input | — |
| 6014536 | "NPR Adyen Simulate Webhook Req" | NP Pay Simulate Webhook Request | — |


## Page Extensions

| ID | Name | Caption | Extends |
| --- | --- | --- | --- |
| 6014517 | "NPR Adyen Reconciliation Cue" |  | "Business Manager Role Center" |


## Permission Sets

| ID | Name | Caption |
| --- | --- | --- |
| 6014406 | "NPR Adyen Webhook" | NP Pay Webhook |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AdyenEFTTransPosting.Codeunit.al, AdyenEnvironmentType.Enum.al, AdyenFeePosting.Codeunit.al, AdyenIntegrationEvents.Codeunit.al, AdyenManagement.Codeunit.al, AdyenMerchantAccount.Table.al, AdyenMerchantAccounts.Page.al, AdyenMerchantFilterType.Enum.al, AdyenMerchantSetup.Page.al, AdyenMerchantSetup.Table.al, AdyenMissingTransPost.Codeunit.al, AdyenOnPremWebhookInput.Report.al, AdyenPostingGLAccounts.Enum.al, AdyenProcessReportReady.Codeunit.al, AdyenRecActivities.Page.al, AdyenRecHeaderStatus.Enum.al, AdyenRecLineStatus.Enum.al, AdyenRecLogStatus.Enum.al, AdyenRecLogType.Enum.al, AdyenReconAmountType.Enum.al, AdyenReconciliation.Page.al, AdyenReconciliationCue.PageExt.al, AdyenReconciliationCue.Table.al, AdyenReconciliationHdr.Table.al, AdyenReconciliationLine.Table.al, AdyenReconciliationLines.Page.al, AdyenReconciliationList.Page.al, AdyenReconciliationLog.Table.al, AdyenReconciliationLogs.Page.al, AdyenReconLine.Table.al, AdyenReconLineRelation.Page.al, AdyenReconLineRelation.Table.al, AdyenReconsLineRelation.Table.al, AdyenReconUpgrade.Codeunit.al, AdyenRecreateRecDoc.Codeunit.al, AdyenRecReportProcess.Codeunit.al, AdyenRecTransType.Enum.al, AdyenReportProcStatus.Enum.al, AdyenReportType.Enum.al, AdyenSetup.Page.al, AdyenSetup.Table.al, AdyenSimulateWebhookReq.Report.al, AdyenSkipPostCheck.Codeunit.al, AdyenTransMatching.Codeunit.al, AdyenTransRecTable.Enum.al, AdyenTrMatchingSession.Codeunit.al, AdyenTryWebhookProcess.Codeunit.al, AdyenWebhook.PermissionSet.al, AdyenWebhook.Table.al, AdyenWebhookEventCode.Enum.al, AdyenWebhookEventCode.Table.al, AdyenWebhookEventCodes.Page.al, AdyenWebhookLog.Table.al, AdyenWebhookLogs.Page.al, AdyenWebhookLogType.Enum.al, AdyenWebhookProcessing.Codeunit.al, AdyenWebhookRequestType.Enum.al, AdyenWebhooks.Page.al, AdyenWebhookSetup.Table.al, AdyenWebhookSetupCard.Page.al, AdyenWebhookSetupList.Page.al, AdyenWebhookStatus.Enum.al, AdyenWebhookType.Enum.al, AdyenWHRequestFactbox.Page.al, AdyenWWSSecurityType.Enum.al, AFRecAPIRequest.Codeunit.al, AFRecWebhookRequest.Table.al, AFRecWebhookRequests.Page.al, MerchantAccount.Enum.al, MerchantCurrencySetup.Page.al, MerchantCurrencySetup.Table.al
