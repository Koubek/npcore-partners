---
type: reference
tags: [np-retail, integration, adyen, tables, codeunits, pages, enums, reports]
relates: [integration/adyen-reconciliation/overview.md]
updated: 2026-05-09
---

# Adyen Reconciliation — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `AdyenSetup` | Global config (API keys, environment, default posting accounts) |
| `AdyenMerchantSetup` | Per-merchant config (merchant account code, GL mappings) |
| `AdyenMerchantAccount` | Merchant account reference data |
| `MerchantCurrencySetup` | Per-merchant currency GL account mapping |
| `AdyenReconciliationHdr` | Reconciliation header (date, status, report type, totals) |
| `AdyenReconciliationLine` | Reconciliation line (transaction detail, match status) |
| `AdyenReconciliationLog` | Processing log (timestamp, message, severity) |
| `AdyenReconciliationCue` | Cue entries for scheduled reconciliation |
| `AdyenReconLine` | Recon line detail (payment ref, amount, currency) |
| `AdyenReconLineRelation` | Line-to-line relationship mapping |
| `AdyenReconsLineRelation` | Secondary relationship tracking |
| `AdyenWebhook` | Webhook notification (event code, payload, status) |
| `AdyenWebhookSetup` | Webhook config (URL, authentication, event filters) |
| `AdyenWebhookLog` | Webhook processing log (request/response, errors) |
| `AdyenWebhookEventCode` | Event code definitions (mapping to BC actions) |
| `AFRecWebhookRequest` | Webhook request storage (raw payload, headers) |

## Codeunits

| Codeunit | Purpose |
|----------|---------|
| `AdyenManagement` | Orchestrates full reconciliation workflow |
| `AdyenRecReportProcess` | Parses Adyen settlement CSV/report files, maps entries |
| `AdyenProcessReportReady` | Validates and stages processed reports for posting |
| `AdyenEFTTransPosting` | Posts EFT bank transactions from reconciled settlements |
| `AdyenFeePosting` | Posts merchant fee entries to GL accounts |
| `AdyenTransMatching` | Auto-matches Adyen transactions to BC open entries |
| `AdyenTrMatchingSession` | Interactive manual matching UI session management |
| `AdyenMissingTransPost` | Detects and posts BC entries missing from Adyen reports |
| `AdyenWebhookProcessing` | Routes webhook events (AUTHORISATION, CAPTURE, REFUND, etc.) |
| `AdyenTryWebhookProcess` | Retry logic for failed webhook processing |
| `AdyenRecreateRecDoc` | Recreates reconciliation documents from existing data |
| `AdyenSkipPostCheck` | Validates conditions for skip-posting |
| `AdyenReconUpgrade` | Handles data migration between versions |
| `AFRecAPIRequest` | Low-level API request handling for Adyen REST API |
| `AdyenIntegrationEvents` | Integration events for third-party extensibility |

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `AdyenSetup` | AdyenSetup | Integration setup card |
| `AdyenMerchantSetup` | AdyenMerchantSetup | Per-merchant setup card |
| `AdyenMerchantAccounts` | AdyenMerchantAccount | Merchant account list |
| `MerchantCurrencySetup` | MerchantCurrencySetup | Currency GL mapping |
| `AdyenReconciliation` | AdyenReconciliationHdr | Reconciliation list |
| `AdyenReconciliationList` | AdyenReconciliationHdr | Reconciliation list alternative |
| `AdyenReconciliationLines` | AdyenReconciliationLine | Recon line details |
| `AdyenReconLineRelation` | AdyenReconLineRelation | Line relation viewer |
| `AdyenReconciliationLogs` | AdyenReconciliationLog | Processing log |
| `AdyenReconciliationCue` | AdyenReconciliationCue | Cue management |
| `AdyenRecActivities` | — | Reconciliation activity view |
| `AdyenWebhooks` | AdyenWebhook | Webhook list |
| `AdyenWebhookSetupList` | AdyenWebhookSetup | Webhook config list |
| `AdyenWebhookSetupCard` | AdyenWebhookSetup | Webhook config card |
| `AdyenWebhookEventCodes` | AdyenWebhookEventCode | Event code mapping |
| `AdyenWebhookLogs` | AdyenWebhookLog | Webhook processing log |
| `AdyenWHRequestFactbox` | — | Webhook request details factbox |
| `AFRecWebhookRequests` | AFRecWebhookRequest | Webhook request list |

## Enums

| Enum | Purpose |
|------|---------|
| `AdyenEnvironmentType` | Test/Live environment selection |
| `AdyenRecHeaderStatus` | Reconciliation header status (Open/Processing/Posted) |
| `AdyenRecLineStatus` | Reconciliation line status (Unmatched/Matched/Posted) |
| `AdyenRecLogStatus` | Log entry severity (Info/Warning/Error) |
| `AdyenRecLogType` | Log entry type classification |
| `AdyenRecTransType` | Transaction type (Settlement/Fee/EFT) |
| `AdyenReconAmountType` | Amount type classification |
| `AdyenReportType` | Settlement report type |
| `AdyenReportProcStatus` | Report processing status |
| `AdyenPostingGLAccounts` | GL account selection for posting |
| `AdyenMerchantFilterType` | Merchant filter type |
| `AdyenTransRecTable` | Transaction record table reference |
| `AdyenWebhookType` | Webhook type classification |
| `AdyenWebhookStatus` | Webhook processing status |
| `AdyenWebhookRequestType` | Webhook request type |
| `AdyenWebhookEventCode` | Event code definitions |
| `AdyenWebhookLogType` | Webhook log type |
| `AdyenWWSSecurityType` | WSS security type |
| `MerchantAccount` | Merchant account enum |

## Reports

| Report | Purpose |
|--------|---------|
| `AdyenOnPremWebhookInput` | On-premises webhook data input report |
| `AdyenSimulateWebhookReq` | Webhook simulation for testing |
