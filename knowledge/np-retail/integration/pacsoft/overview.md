---
type: concept
tags: [np-retail, integration, pacsoft]
relates: [integration/consignor/overview.md]
updated: 2026-05-09
---

# Pacsoft — Overview

Pacsoft shipping integration for NP Retail. Provides shipment creation, label generation, and customs documentation for Pacsoft-compatible carriers (primarily Swedish/Nordic postal and parcel services).

## Purpose

- Shipment creation and booking via Pacsoft API
- Package code definitions for different shipment types
- Customs item declaration for international shipments
- Shipment document generation (labels, manifests)
- Shipment document service configuration

## Key Tables

| Table | Purpose |
|-------|---------|
| `PacsoftSetup` | Global Pacsoft integration configuration |
| `PacsoftPackageCode` | Package/service code definitions |
| `PacsoftCustomsItemRows` | Customs declaration line items |
| `PacsoftShipmentDocument` | Generated shipment document records |
| `PacsoftShipmDocServ` | Shipment document service configuration |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `PacsoftManagement` | Core management — shipment creation, label generation, API communication |

## XMLPorts

| XMLPort | Purpose |
|---------|---------|
| `PacsoftResponse` | Pacsoft API response parsing |
| `PacsoftShipmentDocument` | Shipment document data export/import |

## Pages

| Page | Purpose |
|------|---------|
| `PacsoftPackageCodes` | Package/service code list |
| `PacsoftCustomsItemRows` | Customs item lines |
| `PacsoftShipmDocServ` | Shipment document service setup |
