---
type: reference
tags: [np-retail, infrastructure, endpoint]
relates: [np-retail/infrastructure/endpoint/overview.md]
updated: 2026-05-09
---

# Endpoint Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6014674 | "NPR Endpoint" | Endpoint | Code (Code[20], Key1); Query Name (Key2) | Core endpoint configuration: source table, active flag, trigger flags (Insert/Modify/Delete/Rename), batching config (Max Requests per Batch, Send when Max, Wait to Send), cleanup settings, inbound query security (Max per Query, Allow Query from DB/Company/User/Name), FlowFields for request/query counts |
| 6014675 | "NPR Endpoint Filter" | Endpoint Filter | Endpoint Code, Table No., Field No. (clustered) | Field-level filter rules: Endpoint Code + Table No. + Field No. + Filter Text. OnInsert auto-populates Table No. from Endpoint |
| — | "NPR Endpoint Request" | Endpoint Request | — | Change request: type (Create/Modify/Delete), record position, PK Code 1/2 (text), PK Line 1/2 (integer), PK Option 1 (option), Data log Record No. |
| — | "NPR Endpoint Request Batch" | Endpoint Request Batch | — | Batch: Endpoint Code, Status (Collecting/Ready to Send/Sent), Creation Date, Sent Date, No. of Requests, Table No. |
| — | "NPR Endpoint Query" | Endpoint Query | — | Named query: Direction (Incoming/Outgoing), Name, Only New and Modified Records |
| — | "NPR Endpoint Query Filter" | Endpoint Query Filter | — | Filter details for each query |

## Codeunits

| ID | Name | Caption | Key Procedures | Description |
|----|------|---------|---------------|-------------|
| 6014675 | "NPR Endpoint Management" | NPR Endpoint Management | GetEndpointRequestBatchNo, PopulatePKFields, CreateModifyRequests, InsertModifyRequest, MarkPreviousRequestsAsObsolete, SetBatchStatus, CreateOutboundEndpointQuery, InsertFilterRecords | Core endpoint logic for batching, request creation, PK mapping, query creation |
| 6014680 | "NPR Endpoint Query WebService" | NPR Endpoint Query WebService | Createendpointquery | OData-exposed web service for inbound endpoint query processing. Wraps XMLport import with Nc Import Entry processing |

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| — | "NPR Endpoint Card" | Endpoint Card | Card | Endpoint configuration |
| — | "NPR Endpoint List" | Endpoint List | List | Endpoint listing |
| — | "NPR Endpoint Filters" | Endpoint Filters | List | Filter management per endpoint |
| — | "NPR Endpoint Request List" | Endpoint Request List | List | Individual request listing |
| — | "NPR Endpoint Request Batch List" | Endpoint Req Batch List | List | Batch listing |
| — | "NPR Endpoint Query List" | Endpoint Query List | List | Query listing |
| — | "NPR Endpoint Query Filter Form" | Endpoint QueryFiltSform | — | Query filter form |
| — | "NPR Endpoint Query Filter" (duplicate) | — | — | Query filter page |

## XMLports

| Name | Description |
|------|-------------|
| "NPR Endpoint Query Web Import" | XMLport for importing endpoint queries from external systems via the web service |

## Key Procedures Detail

### NPR Endpoint Management (6014675)

| Procedure | Parameters | Description |
|-----------|------------|-------------|
| `GetEndpointRequestBatchNo` | EndpointCode (Code[20]) | Returns BigInteger. Finds or creates a Collecting batch for the endpoint. Auto-flips to Ready to Send if max requests reached and Send when Max. Requests is enabled |
| `PopulatePKFields` | var EndpointRequest, RecRef (RecordRef) | Maps source table PK fields to generic PK fields (Code 1/2, Line 1/2, Option 1) based on field type matching |
| `CreateModifyRequests` | Endpoint (Record "NPR Endpoint") | Iterates all records in the source table, applies field-level filters, creates modify requests for matching records |
| `MarkPreviousRequestsAsObsolete` | EndpointRequest | Marks or deletes earlier requests for the same record in the same batch |
| `SetBatchStatus` | EndpointRequestBatch, NewStatus | Manages batch state transitions with confirmation dialogs |
| `CreateOutboundEndpointQuery` | QueryName, RecordToQuery, OnlyNewAndModified | Creates a named outbound query from a filtered record set |
