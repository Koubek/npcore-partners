---
type: reference
tags: [np-retail, integration, pacsoft, tables, codeunits, pages, xmlports]
relates: [integration/pacsoft/overview.md]
updated: 2026-05-09
---

# Pacsoft — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `PacsoftSetup` | Global config (API credentials, sender address, default package code) |
| `PacsoftPackageCode` | Package/service codes (Code, Description, Carrier, Service Type, Weight Limit) |
| `PacsoftCustomsItemRows` | Customs declaration lines (Shipment No., Item Description, HS Code, Quantity, Weight, Value, Origin Country) |
| `PacsoftShipmentDocument` | Generated documents (Shipment No., Document Type, Format, Content/Binary) |
| `PacsoftShipmDocServ` | Document service config (Service Code, Document Template, Label Format) |

## Codeunits

| Codeunit | Purpose |
|----------|---------|
| `PacsoftManagement` | Core management — handles shipment creation via Pacsoft API, generates shipping labels, manages customs documentation, tracks shipment status |

## XMLPorts

| XMLPort | Purpose |
|---------|---------|
| `PacsoftResponse` | Parses Pacsoft API XML responses (shipment confirmation, label data, error messages) |
| `PacsoftShipmentDocument` | Handles shipment document data in XML format |

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `PacsoftPackageCodes` | PacsoftPackageCode | Package/service code configuration |
| `PacsoftCustomsItemRows` | PacsoftCustomsItemRows | Customs declaration entry |
| `PacsoftShipmDocServ` | PacsoftShipmDocServ | Document service setup |
