---
type: reference
tags: [np-retail, pos, mpos]
relates:
  - np-retail/pos/mpos/overview.md
updated: 2026-05-09
---

# MPOS Module — API Reference

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| *(unknown)* | "NPR MPOS Payment Integration" | MPOS Payment Integration | Extensible | Available payment integration types for mobile POS |
| *(unknown)* | "NPR MPOS Scanner Type" | MPOS Scanner Type | Extensible | Scanner hardware types supported by mobile POS |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150657 | "NPR MPOS Profile" | MPOS Profile | PK: Code (Code[20]). Others: Description, Ticket Admission Web Url | Obsolete (Removed, 2023-06-28). Functionality moved to TM Ticket Setup and POS Unit POS Type field |
| *(unknown)* | "NPR MPOS QR Code" | MPOS QR Code | — | Individual QR code record for mobile workflows |
| *(unknown)* | "NPR MPOS QR Codes" | MPOS QR Codes | — | QR code batching/grouping |
| *(unknown)* | "NPR MPOS EOD Receipts" | MPOS EOD Receipts | — | End-of-day receipt records from mobile devices |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6059984 | "NPR MPOS Helper Functions" | NPR MPOS Helper Functions | GetUsername(): Text, GetDatabaseName(): Text, GetTenantID(): Text, BuildJSONParams(RequestMethod, BaseAddress, Endpoint, PrintJob, RequestType, ErrorCaption): JsonObject | None |
| *(unknown)* | "NPR MPOS Admission API" | MPOS Admission API | — | None (ticket/scanner admission) |
| *(unknown)* | "NPR MPOS Report Handler" | MPOS Report Handler | — | None (mobile report handling) |

### Codeunit Details

**6059984 "NPR MPOS Helper Functions"** — Session info and JSON builder:
- `GetUsername()` / `GetDatabaseName()`: Finds the current BC session's Active Session record by matching ServiceInstanceId + SessionId and returns the User ID / Database Name
- `GetTenantID()`: Returns `TenantId()` 
- `BuildJSONParams(...)`: Constructs a standardized JsonObject with request parameters for mobile app API calls (RequestMethod, BaseAddress, Endpoint, PrintJob, RequestType, ErrorCaption)

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR MPOS QR Code" | MPOS QR Code | "NPR MPOS QR Code" | QR code card |
| *(unknown)* | "NPR MPOS QR Code List" | MPOS QR Code List | "NPR MPOS QR Codes" | QR code list |
| *(unknown)* | "NPR MPOS QR Code FactBox" | MPOS QR Code FactBox | "NPR MPOS QR Code" | QR code factbox |
| *(unknown)* | "NPR MPOS EOD Receipts" | MPOS EOD Receipts | "NPR MPOS EOD Receipts" | EOD receipt list |
