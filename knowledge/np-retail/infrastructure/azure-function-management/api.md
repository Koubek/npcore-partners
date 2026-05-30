---
type: reference
tags: [np-retail, infrastructure, azure-function]
relates: [np-retail/infrastructure/azure-function-management/overview.md]
updated: 2026-05-09
---

# Azure Function Management — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6151574 | "NPR AF Notification Hub" | AF Notification Hub | Id (Integer, AutoIncrement) | Tracks push notification lifecycle: title, body, platform (WNS/APNS/GCM), action type (Message/Phone Call/Facetime), target/from POS unit, handled/cancelled/completed timestamps. Includes request/response data BLOBs |
| — | "NPR AF Args Spire Barcode" | — | — | Argument table for Spire barcode generation Azure Function |
| — | "NPR AF Arguments Notific Hub" | — | — | Argument table for notification hub Azure Function |
| — | "NPR AF Test Objects" | — | — | Test objects table for AF testing |
| — | "NPR AF Notification Hub" | — | — | (duplicate entry name above — single table) |

## Codeunits

| ID | Name | Caption | Key Procedures | Description |
|----|------|---------|---------------|-------------|
| 6151570 | "NPR AF Management" | NPR AF Management | CallRESTWebService | Core HTTP client wrapper that sends REST requests with Basic auth, custom headers (Accept, baseurl, restmethod, path), and returns success status |
| 6151571 | "NPR AF Helper Functions" | NPR AF Helper Functions | GetValueAsText, GetValueAsInteger, GetValueAsDecimal, GetValueAsBoolean, GetValueAsDate, GetValueAsTime, GetValueAsDateTime, GetBooleanAsText, GetDateTimeAsText, RemoveLastIndexOf, TryParse, GetOptionStringValue, GetMagentoItemImage, ConvertValueFromBase64, ConvertValueToBase64 | JSON extraction helpers, Base64 conversion, Magento picture integration, option parsing |
| 6151572 | "NPR AF API WebService" | NPR AF API WebService | SetNotificationFlag, SetNotificationHandledFlag, SetNotificationCancelledFlag, SetNotificationCompletedFlag, GetNotificationStatus, GetVariantByItem, GetVariantByBarcode, GetReceiptAsPDF, GetReportByJObjectAsBase64 | OData-exposed web service for POS notification hub, item variant lookup, and PDF generation |
| — | "NPR AF EventSubscriber" | — | — | Event subscriber for AF-related events |
| — | "NPR AF QR Code" | — | — | QR code generation integration |

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| — | "NPR AF Notification Hub Card" | — | Card | Card page for individual notification |
| — | "NPR AF Notification Hub List" | — | List | List page for notifications |
| — | "NPR Notification Card" | — | Card | Notification card display |
| — | "NPR Notification Dialog" | — | Dialog | Notification dialog popup |
| — | "NPR Notification List" | — | List | Full notification list |
| — | "NPR AF Test Objects" | — | — | Test page for AF verification |
| — | "NPR AF Test Service Picture" | — | — | Test page for service picture |
| — | "NPR AF Test Services" | — | — | Test page for services |

## Public API (AFAPIWebService)

The WebService codeunit is exposed as OData endpoint `azurefunction_service`.

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `SetNotificationFlag` | CurrentUser, PosUnitNo, Key | Text | Claims a notification task — sets Handled timestamp and user, returns status message |
| `SetNotificationHandledFlag` | CurrentUser, PosUnitNo, Key | Text (JSON) | Same as SetNotificationFlag but returns full JSON status response |
| `SetNotificationCancelledFlag` | CurrentUser, PosUnitNo, Key | Text (JSON) | Cancels a notification, returns JSON status |
| `SetNotificationCompletedFlag` | CurrentUser, PosUnitNo, Key | Text (JSON) | Completes a notification, returns JSON status |
| `GetNotificationStatus` | Key | Text (JSON) | Returns full notification status as JSON (created, handled, cancelled, completed with timestamps and users) |
| `GetVariantByItem` | ItemNo | Text (JSON) | Returns item variant details with base64 image as JSON array |
| `GetVariantByBarcode` | Barcode | Text (JSON) | Translates barcode to item/variant and returns variant details |
| `GetReceiptAsPDF` | SalesTicketNo, ReportId | Text (Base64) | Renders POS entry receipt as base64-encoded PDF |
| `GetReportByJObjectAsBase64` | JObjectTxt | Text (Base64) | Renders any report by JSON descriptor (reportID, recordID) as base64 PDF |

## Internal API (AFManagement)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `CallRESTWebService` | var Parameters (Dictionary[Text,Text]), HttpCont (HttpContent), var HttpResponseMsg | Boolean | Sends HTTP request with configurable baseurl, restmethod, path, accept header, and Basic auth |
