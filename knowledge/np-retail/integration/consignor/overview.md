---
type: concept
tags: [np-retail, integration, consignor]
relates: [integration/pacsoft/overview.md]
updated: 2026-05-09
---

# Consignor — Overview

Consignor shipping integration for NP Retail. Provides carrier-agnostic shipment creation, tracking, and label generation through the Consignor platform, supporting multiple carriers in the Nordic and European markets.

## Purpose

- Shipment creation and booking through Consignor API
- Carrier-agnostic label generation (PostNord, DHL, UPS, etc.)
- Shipment tracking integration
- Consignment entry management

## Key Tables

| Table | Purpose |
|-------|---------|
| `ConsignorEntry` | Shipment/consignment entry records |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `ConsignorMgt` | Core management — shipment creation, label generation, Consignor API integration |
| `ConsignorTracking` | Shipment tracking — status updates and tracking URL generation |
| `ConsignorExtMgt` | External/extension management for custom carrier configurations |
