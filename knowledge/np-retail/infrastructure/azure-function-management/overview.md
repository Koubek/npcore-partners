---
type: concept
tags: [np-retail, infrastructure, azure-function]
relates: [np-retail/infrastructure/endpoint/overview.md, np-retail/infrastructure/json/overview.md]
updated: 2026-05-09
---

# Azure Function Management Module

The Azure Function Management module bridges Business Central to external Azure Functions, providing REST API invocation, notification hub lifecycle management (push notifications to POS units), QR code generation, barcode-based item/variant lookup, and PDF receipt generation.

## Architecture

```
POS Unit / Business Central
       ↓
  NPR AF API WebService (6151572, _public)
       ↓
  ┌──────────────────────────────────────────┐
  │  AFManagement (6151570)                   │
  │    → CallRESTWebService                   │
  ├──────────────────────────────────────────┤
  │  AFAPIWebService (6151572, exposed as     │
  │    azurefunction_service OData)           │
  │    → Notification lifecycle               │
  │    → Item/variant lookup by barcode       │
  │    → Receipt PDF generation               │
  │    → Report rendering via JSON            │
  ├──────────────────────────────────────────┤
  │  AFHelperFunctions (6151571)              │
  │    → JSON value extraction                │
  │    → Base64 conversions                   │
  │    → Magento image retrieval              │
  │    → Option string parsing                │
  ├──────────────────────────────────────────┤
  │  AFEventSubscriber                        │
  │  AFQRCode (6151573)                       │
  └──────────────────────────────────────────┘
```

## Notification Hub

The `NPR AF Notification Hub` table (6151574) tracks push notification lifecycle across POS units:

| State | Field | Description |
|-------|-------|-------------|
| Created | Created, Created By, From POS Unit No. | Notification created by a POS unit |
| Handled | Handled, Handled By, Handled Pos Unit No. | POS unit acknowledged the notification |
| Cancelled | Cancelled, Cancelled By, Cancelled Pos Unit No. | Notification was cancelled |
| Completed | Completed, Completed By, Completed Pos Unit No. | Task associated with notification completed |

The `AFAPIWebService` exposes OData endpoints (`azurefunction_service`) for POS units to:
- `SetNotificationFlag` — Claim a notification task
- `SetNotificationHandledFlag` — Mark as handled with status response
- `SetNotificationCancelledFlag` — Mark as cancelled
- `SetNotificationCompletedFlag` — Mark as completed
- `GetNotificationStatus` — Poll notification state
- `GetVariantByItem` / `GetVariantByBarcode` — Lookup item variants with images
- `GetReceiptAsPDF` — Render sales receipt as base64 PDF
- `GetReportByJObjectAsBase64` — Render any report as base64 PDF via JSON descriptor

## Helper Functions

`AFHelperFunctions` (6151571) provides JSON parsing utilities, Base64 encode/decode, Magento image downloads, and option string resolution used across the module.

## Key Design Decisions

- The `AFAPIWebService` is registered as a tenant web service via `CreateTenantWebService` in `OnRun`, exposing as `azurefunction_service`
- Notification lifecycle uses a JSON response format with status flags (Handled/Cancelled/Completed) and timestamps
- Item variant lookup supports barcode translation via `NPR Barcode Lookup Mgt.`
- Compile-time conditional filtering for `NPR Blocked` vs `Blocked` field based on BC version
