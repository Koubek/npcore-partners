---
type: reference
tags: [np-retail, integration, entria, tables, codeunits, pages]
relates: [integration/entria-integration/overview.md]
updated: 2026-05-09
---

# Entria Integration — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `EntriaIntegrationSetup` | Global config (default API endpoint, auth credentials, retry policy) |
| `EntriaStore` | Per-store config (Store Code, API Key, API Secret, Endpoint URL, Enabled) |
| `EntriaStoreSyncState` | Sync state (Store Code, Last Sync DateTime, Sync Status, Error Count, Cursor) |

## Codeunits

### "EntriaIntegrationMgt"
Core integration orchestrator. Manages store connections, sync scheduling, and high-level workflow coordination.

### "EntriaAPIHandler"
Low-level API communication. Handles authentication (token management), HTTP request construction, response parsing, and error handling for the Entria REST API.

### "EntriaOrderImpl"
Order import implementation logic. Transforms Entria order data into BC sales order format, handles line-item mapping, customer resolution, and pricing.

### "EntriaOrderImportJQ"
Job queue integration for order import. Enables scheduled/asynchronous order import processing via BC Job Queue.

### "EntriaOrderProcessor"
Post-import business logic. Validates imported orders, applies business rules, triggers posting workflows.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `EntriaIntegrationSetup` | EntriaIntegrationSetup | Integration setup card |
| `EntriaStores` | EntriaStore | Store list |
| `EntriaStoreCard` | EntriaStore | Store detail card |
