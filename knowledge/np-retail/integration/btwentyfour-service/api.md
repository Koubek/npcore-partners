---
type: reference
tags: [np-retail, integration, btwentyfour, tables, codeunits, pages, enums, interfaces]
relates: [integration/btwentyfour-service/overview.md]
updated: 2026-05-09
---

# BTwentyFour Service — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `BTFServiceSetup` | Global config (base URL, default auth profile, retry policy) |
| `BTFServiceEndPoint` | Per-endpoint config (relative URL, HTTP method, content type, headers, format handler) |
| `BTFEndPointErrorLog` | Error log (endpoint, timestamp, HTTP status, error message, stack trace) |

## Codeunits

| Codeunit | Purpose |
|----------|---------|
| `BTFServiceAPI` | Core runtime — resolves endpoint config, executes HTTP request, routes to format handler, returns parsed response |
| `BTFRegisterService` | Service registration (endpoint discovery and validation) |
| `BTFNcImportEntry` | Import entry processing (feeds external data into NP import framework) |
| `BTFGetToken` | OAuth/token-based auth — sends auth request, stores and refreshes tokens |
| `BTFProcessMessage` | Message queue processor — dequeues pending messages, executes via `BTFServiceAPI`, updates status |
| `BTFGetOrders` | Builds order retrieval request, processes response into BC-compatible format |
| `BTFGetOrderResp` | Parses order response data |
| `BTFGetInvoices` | Builds invoice retrieval request, processes response |
| `BTFGetPriCat` | Retrieves price catalog data from external system |
| `BTFJSONResponse` | Implements `BTFIFormatResponse` — parses JSON response payloads |
| `BTFXMLResponse` | Implements `BTFIFormatResponse` — parses XML response payloads |

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `BTFServiceSetup` | BTFServiceSetup | Service setup card |
| `BTFServiceSetupCard` | BTFServiceSetup | Service setup detail card |
| `BTFServiceEndPoints` | BTFServiceEndPoint | Endpoint list |
| `BTFServiceEndpoint` | BTFServiceEndPoint | Endpoint detail card |
| `BTFEndPointsErrorLog` | BTFEndPointErrorLog | Endpoint error log |

## Enums

| Enum | Purpose |
|------|---------|
| `BTFEnvironment` | Environment selection (Test/Production) |
| `BTFContentType` | HTTP content type (JSON/XML/Form-URLEncoded) |
| `BTFEndPointMethod` | HTTP method (GET/POST/PUT/DELETE) |
| `BTFServiceMethod` | Service method classification |
| `BTFMessagesStatus` | Message status (Pending/Processing/Completed/Failed) |
| `BTFMessagesClass` | Message class (Order/Invoice/PriceCatalog) |

## Interfaces

| Interface | Methods | Purpose |
|-----------|---------|---------|
| `BTFIEndPoint` | `Execute(RequestMsg, var ResponseMsg): Boolean` | Endpoint execution contract |
| `BTFIFormatResponse` | `Format(ResponsePayload: Text, var ParsedData: Record): Boolean` | Response format parsing contract |
