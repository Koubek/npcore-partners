---
type: concept
tags: [np-retail, integration, adyen]
relates: [integration/ecommerce/overview.md]
updated: 2026-05-09
---

# Adyen Reconciliation — Overview

Adyen payment reconciliation integration for NP Retail. Processes Adyen settlement reports and webhook notifications to reconcile payment transactions, fees, and EFT transfers within Business Central.

## Purpose

- Process Adyen settlement reports (upload, parse, reconcile)
- Handle Adyen webhook notifications (authorization, capture, refund, etc.)
- Post EFT transactions from Adyen settlements to bank accounts
- Post Adyen fee transactions to GL
- Match Adyen transactions against BC sales/payment entries
- Detect and post missing transactions
- Manage merchant account and currency setup
- Webhook logging and error handling

## Key Tables

| Table | Purpose |
|-------|---------|
| `AdyenSetup` | Global Adyen integration configuration |
| `AdyenMerchantSetup` | Per-merchant-account configuration |
| `AdyenMerchantAccount` | Merchant account definitions |
| `MerchantCurrencySetup` | Per-merchant currency configuration |
| `AdyenReconciliationHdr` | Reconciliation session header |
| `AdyenReconciliationLine` | Reconciliation session line items |
| `AdyenReconciliationLog` | Reconciliation processing log |
| `AdyenReconciliationCue` | Reconciliation cue (queue) entries |
| `AdyenReconLine` | Reconciliation line details |
| `AdyenReconLineRelation` | Links between reconciliation lines |
| `AdyenReconsLineRelation` | Secondary line relation tracking |
| `AdyenWebhook` | Webhook notification storage |
| `AdyenWebhookSetup` | Webhook configuration |
| `AdyenWebhookLog` | Webhook processing log |
| `AdyenWebhookEventCode` | Event code definitions and mappings |
| `AFRecWebhookRequest` | Webhook request tracking |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `AdyenManagement` | Core management — orchestrates reconciliation operations |
| `AdyenRecReportProcess` | Settlement report processing (upload, parse, reconcile) |
| `AdyenProcessReportReady` | Post-processing of ready reports |
| `AdyenEFTTransPosting` | EFT transaction posting to bank accounts |
| `AdyenFeePosting` | Fee transaction posting to GL |
| `AdyenTransMatching` | Transaction matching against BC entries |
| `AdyenTrMatchingSession` | Interactive matching session management |
| `AdyenMissingTransPost` | Missing transaction detection and posting |
| `AdyenWebhookProcessing` | Webhook notification processing |
| `AdyenTryWebhookProcess` | Webhook retry processing |
| `AdyenRecreateRecDoc` | Reconciliation document recreation |
| `AdyenSkipPostCheck` | Skip-posting validation checks |
| `AdyenReconUpgrade` | Upgrade/migration support |
| `AdyenIntegrationEvents` | Integration events for extensibility (in _public) |
| `AFRecAPIRequest` | API request handling for Adyen API (in _public) |
