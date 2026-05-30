---
type: reference
tags: [np-retail, accounts, billing, tables, codeunits, enums]
relates: [accounts/billing/overview.md]
updated: 2026-05-09
---

# Billing — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `NPR Billing Event` | Individual billable event entries (event type, timestamp, data payload, status) |
| `NPR Billing Queue` | Queue record for batch billing processing |

## Enums

### "BillingEventType"

Categorizes billable events. Types may include: `TransactionPosted`, `MemberCreated`, `ReceiptDelivered`, (and other billable NP Retail events).

### "BillingQueueStatus"

Tracks processing state: `Pending`, `Processing`, `Completed`, `Failed`.

## Codeunits

### "EventBillingClient"

REST API client for communicating with external billing service. Handles:
- Authentication (API key/OAuth)
- Event data serialization (JSON)
- Batch submission
- Response processing and error handling

### "BillingDataSenderJQ"

Job queue handler for batch billing data submission. Runs on schedule to:
- Collect pending billing events
- Batch and send via EventBillingClient
- Update queue status
- Handle retries and failures

### "BillingDataCheck"

Data validation codeunit. Runs integrity checks on billing data before submission to ensure completeness and correctness.
