---
type: concept
tags: [np-retail, integration, btwentyfour]
relates: []
updated: 2026-05-09
---

# BTwentyFour Service — Overview

BTwentyFour (B24) service integration for NP Retail. Provides a configurable generic web service client framework for communicating with external REST/SOAP APIs, with built-in support for authentication, message queuing, and response handling.

## Purpose

- Configurable endpoint management (URL, method, content type, auth)
- Generic HTTP request/response handling via pluggable format handlers
- Token-based authentication flow
- Message queuing with status tracking
- Order and invoice retrieval from external systems
- Price catalog retrieval
- Error logging per endpoint

## Submodules

| Submodule | Purpose |
|-----------|---------|
| **Authorization** | Token acquisition and refresh |
| **Messages** | Message payload building, queue management, and processing |

## Key Tables

| Table | Purpose |
|-------|---------|
| `BTFServiceSetup` | Global service configuration |
| `BTFServiceEndPoint` | Per-endpoint configuration |
| `BTFEndPointErrorLog` | Per-endpoint error log |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `BTFServiceAPI` | Core service API — orchestrates endpoint calls |
| `BTFRegisterService` | Service registration and discovery |
| `BTFNcImportEntry` | Import entry integration |
| `BTFGetToken` | Token acquisition from auth endpoint |
| `BTFProcessMessage` | Message queue processing |
| `BTFGetOrders` | Order retrieval from external system |
| `BTFGetOrderResp` | Order response parsing |
| `BTFGetInvoices` | Invoice retrieval from external system |
| `BTFGetPriCat` | Price catalog retrieval |
| `BTFJSONResponse` | JSON response format handler |
| `BTFXMLResponse` | XML response format handler |

## Interfaces

| Interface | Purpose |
|-----------|---------|
| `BTFIEndPoint` | Endpoint execution contract |
| `BTFIFormatResponse` | Response format handler contract |
