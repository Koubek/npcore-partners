---
type: concept
tags: [np-retail, infrastructure, replication, api]
relates: [np-retail/infrastructure/replication/api.md]
updated: 2026-05-09
---

# Replication in NP Retail

The Replication module provides a generic, configurable framework for pulling data from external REST APIs (typically OData endpoints) into NP Retail's import list processing pipeline. It handles pagination, error logging, retry, scheduling, and incremental replication via replication counters.

## Architecture

```
External OData API ←→ NPR Replication API (BC)
                          │
                    NPR Replication Service Setup (table)
                          │
                    NPR Replication Endpoint (table, extensible)
                          │
                    NPR Replication Endpoint Meth (enum, pluggable)
                     ┌────┴────┐
                     │         │
              Get BC Generic    Get BC API (SOAP/OData)
              Data (table-      More endpoint methods
              driven import)    implement IEndpointMeth
                          │
                    NPR Nc Import Entry
                          │
                    Nc Import List Processing
```

## Key Concepts

- **Service Setup**: Defines the base URL, API version, authentication headers, company ID resolution, and schedule parameters (start/end time, interval).
- **Endpoints**: Extensible table where each endpoint defines a path, method (via `NPR Replication EndPoint Meth` enum), sequence order, table mapping, pagination size, replication counter tracking, and optional fixed filters.
- **Replication Counter**: Tracks the last replicated record timestamp/version (uses `replicationCounter` in BC17-20, `systemRowVersion` in BC21+). The counter is included in the OData `$orderby` clause for incremental sync.
- **Endpoint Methods (pluggable)**: Via `NPR Replication IEndpoint Meth` interface. Built-in methods include `Get BC Generic Data` (table-driven import with special field mappings) and SOAP-based methods.
- **Pagination**: Handles `@odata.nextLink` for multi-page responses. Configurable `odata.maxpagesize` (default 10000).
- **Scheduling**: Each service setup creates a managed Job Queue Entry via `NPR Nc Import List Processing` codeunit.
- **Error Handling**: Failed requests are logged to `NPR Replication Error Log` with request/response details and optional email notification.
- **Special Field Mappings**: For generic table imports, the `NPR Rep. Special Field Mapping` table allows overriding field-level behavior during import.
