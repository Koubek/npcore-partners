---
type: concept
tags: [np-retail, infrastructure, endpoint]
relates: [np-retail/infrastructure/json/overview.md, np-retail/infrastructure/azure-function-management/overview.md]
updated: 2026-05-09
---

# Endpoint Module

The Endpoint module provides a configurable data export/import and request batching system for NP Retail. It tracks changes to BC records, batches them into request collections, and supports outbound queries for external system integration.

## Purpose

- **Change Tracking** — Monitors table records for Insert, Modify, Delete, Rename operations via configurable triggers
- **Request Batching** — Collects changes into batches with configurable max request counts and send triggers
- **Filtering** — Field-level filters determine which records/fields trigger change requests
- **Outbound Queries** — Creates parameterized queries from filtered records for external system polling
- **Inbound Queries** — Receives and processes queries from external systems via XMLport import
- **Web Service Integration** — Exposes query endpoints via OData web service for external synchronization

## Architecture

```
BC Table Record Change
       ↓
NPR Endpoint Management (6014675)
       ↓
  ┌──────────────────────────────────────┐
  │  Endpoint Config (6014674 table)     │
  │  → Active, Trigger on Insert/Modify/ │
  │    Delete/Rename, Filters            │
  ├──────────────────────────────────────┤
  │  Endpoint Request Batch              │
  │  → Collecting → Ready to Send → Sent │
  ├──────────────────────────────────────┤
  │  Endpoint Request                    │
  │  → Type of Change (Create/Modify/    │
  │    Delete), PK fields, Record Pos    │
  ├──────────────────────────────────────┤
  │  Endpoint Query (Inbound/Outbound)   │
  │  → Filter-based record selection     │
  └──────────────────────────────────────┘
```

## Data Model

| Entity | Table | Description |
|--------|-------|-------------|
| Endpoint | "NPR Endpoint" (6014674) | Configuration: source table, triggers (Insert/Modify/Delete/Rename), batching (max requests per batch, send when max), cleanup (delete obsolete/sent after duration) |
| Endpoint Filter | "NPR Endpoint Filter" (6014675) | Field-level filters that determine which records trigger requests |
| Endpoint Request | "NPR Endpoint Request" | Individual change record: type of change, record position, PK fields (Code 1/2, Line 1/2, Option 1) |
| Endpoint Request Batch | "NPR Endpoint Request Batch" | Batch container: status (Collecting/Ready to Send/Sent), creation/sent dates, request count |
| Endpoint Query | "NPR Endpoint Query" | Named queries with direction (Incoming/Outgoing), filter-only or new-and-modified-only modes |
| Endpoint Query Filter | "NPR Endpoint Query Filter" | Query filter records |
| Endpoint Request Batch | repeat | Also stores "Table No." reference and "No." requests count |

## Request Batching Lifecycle

1. **Collecting** — New requests are added to the active batch (or a new batch is created if max requests reached)
2. **Ready to Send** — Manually set or automatically triggered when `Max. Requests per Batch` is reached and `Send when Max. Requests` is enabled
3. **Sent** — Final state; can be reset back to Collecting or Ready to Send for reprocessing

## Query System

The `EndpointQueryWebService` codeunit (6014680, exposed as OData) handles inbound endpoint query imports:

- Receives XML via `NPR Endpoint Query Web Import` XMLport
- Creates import entries via `NPR Nc Import Entry` for processing
- Supports configurable import type setup (`ENDPQ-01` for Endpoint Query)
- Returns SUCCESS or FAILED result status

## Key Design Decisions

- Obsolete requests can be either deleted or marked with an `Obsolete` flag, controlled by `Delete Obsolete Requests` setting on the endpoint
- PK fields are dynamically mapped from the source table's primary key to generic PK fields (Code 1/2, Line 1/2, Option 1) based on field type
- Created in NPR5.23 (CASE 237658) and expanded with query support in NPR5.25 (CASE 234602)
- `Max. Requests per Query`, `Allow Query from Database`, `Allow Query from Company Name`, and `Allow Query from User ID` fields enable inbound query security
