---
type: concept
tags: [np-retail, integration, entria]
relates: [integration/ecommerce/overview.md]
updated: 2026-05-09
---

# Entria Integration — Overview

Entria ecommerce platform integration for NP Retail. Provides bidirectional synchronization of store configuration, order import, and API communication with the Entria ecommerce system.

## Purpose

- Configure Entria store connections (API credentials, endpoints)
- Import sales orders from Entria into BC
- Process imported orders through BC order pipeline
- Track store sync state for delta synchronization
- Handle Entria API communication (authentication, request/response)

## Submodules

| Submodule | Purpose |
|-----------|---------|
| **General** | Store setup, API handler, integration management, sync state tracking |
| **Orders** | Order import implementation, job queue processing, order processor |

## Key Tables

| Table | Purpose |
|-------|---------|
| `EntriaIntegrationSetup` | Global Entria integration configuration |
| `EntriaStore` | Per-store configuration (API key, endpoint, mappings) |
| `EntriaStoreSyncState` | Per-store sync state tracking (last sync timestamp, cursor) |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `EntriaIntegrationMgt` | Core integration management |
| `EntriaAPIHandler` | Entria API communication (HTTP requests, auth) |
| `EntriaOrderImpl` | Order import implementation |
| `EntriaOrderImportJQ` | Order import job queue processing |
| `EntriaOrderProcessor` | Order business logic processing |
