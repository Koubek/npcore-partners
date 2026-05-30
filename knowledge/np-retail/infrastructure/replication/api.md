---
type: reference
tags: [np-retail, infrastructure, replication, api]
relates: [np-retail/infrastructure/replication/overview.md]
updated: 2026-05-09
---

# Replication Module — API Reference

## Tables (Public)

| ID | Name | Caption | Key Fields | Extensible | Description |
|----|------|---------|------------|------------|-------------|
| 6014589 | "NPR Replication Endpoint" | Replication Endpoint | Service Code, EndPoint ID (clustered); Service Code, Enabled, Sequence Order | ✓ | Endpoint definition: path, method (enum), table ID, pagination, replication counter (BigInteger), fixed filter, run-on-insert/modify flags, skip-import-on-no-data |
| — | "NPR Replication Service Setup" | Replication Service Setup | API Version (Code[20]) | — | Service configuration: base URL, enabled flag, authentication, company ID, job queue schedule, error notification email |
| — | "NPR Rep. Special Field Mapping" | Special Field Mapping | Service Code, EndPoint ID, Table ID | — | Field-level overrides for generic table imports |
| — | "NPR Replication Error Log" | Replication Error Log | — | — | Log of all failed replication requests with request/response details |
| — | "NPR Replication Setup Source" | Replication Setup Source | — | — | Source company configuration for replication setup |

## Codeunits

| ID | Name | Access | Description |
|----|------|--------|-------------|
| 6014589 | "NPR Replication API" | Public | implements `NPR Nc Import List IUpdate`. Central API: Update, SendWebRequests, CreateImportEntries, SendWebRequest, RegisterNcImportType, ScheduleJobQueueEntry, DeleteNcImportType, VerifyServiceURL, UpdateReplicationCounter, CreateURI, GetBCAPIResponse, SelectJsonToken helper, IsSuccessfulRequest, FoundErrorInResponse, RunSpecificEndpointImportManually, CheckFieldValue |
| 6059774 | "NPR Rep. WS Functions" | Public | Exposed as SOAP web service `ReplicationFunctions`. Key: `GetLastReplicationCounter(tableId) → BigInteger` — finds highest counter value for a given table |
| — | "NPR Replication Counter Mgmt." | Public | Counter evaluation and update logic |
| — | "NPR Rep. WS Functions Client" | — | Client-side helper for calling the replication functions web service |
| — | "NPR Replication Register" | — | Registration logic for service setups and endpoints |
| — | "NPR Replication Import Entry" | — | Import entry processing for replication data |

## Pages (Public)

| ID | Name | PageType | SourceTable | Description |
|----|------|----------|-------------|-------------|
| — | "NPR Replication Setup Card" | Card | Replication Service Setup | Service configuration page |
| — | "NPR Replication Setup List" | List | Replication Service Setup | List all replication services |
| — | "NPR Replication Endpoint" | Card | Replication Endpoint | Endpoint detail/edit page with actions: Open Special Field Mappings, Update Last Replication Counter |
| — | "NPR Replication Endpoints" | List | Replication Endpoint | List all endpoints for a service |
| — | "NPR Replication Setup Source" | Card | Replication Setup Source | Source company configuration |
| — | "NPR Rep. Spec. Field Mappings" | List | Special Field Mapping | Field mapping configuration page |

## Enums

| ID | Name | Values | Description |
|----|------|--------|-------------|
| — | "NPR Replication EndPoint Meth" | Get BC Generic Data, Get BC API, ... | Pluggable endpoint method enum — each value implements `NPR Replication IEndpoint Meth` |

## Interfaces

| Name | Methods | Description |
|------|---------|-------------|
| "NPR Replication IEndpoint Meth" | SendRequest, GetDefaultFileName, CheckResponseContainsData, ProcessImportedContent, GetLastReplicationCounter | Contract for pluggable endpoint method implementations |
| "NPR Rep. WS IFunctions" | GetLastReplicationCounter | Web service contract for replication counter queries |

## XMLports

| Name | Description |
|------|-------------|
| "NPR Export Replication Setup" | Export replication configuration to XML |
| "NPR Import Replication Setup" | Import replication configuration from XML |

## Reports

| Name | Description |
|------|-------------|
| "NPR Rep. Check Missing Fields" | Report + RDL to validate field mappings |
