---
type: reference
tags: [np-retail, integration, consignor, tables, codeunits]
relates: [integration/consignor/overview.md]
updated: 2026-05-09
---

# Consignor — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `ConsignorEntry` | Consignment record (Shipment No., Carrier, Service Type, Parcel Count, Weight, Label Format, Tracking No., Status, Created Date/Time, Ship-from/Ship-to addresses) |

## Codeunits

| Codeunit | Purpose |
|----------|---------|
| `ConsignorMgt` | Core management — handles shipment creation via Consignor API, generates shipping labels in configured format (ZPL, PDF), manages carrier and service type selection, communicates shipment data to Consignor platform |
| `ConsignorTracking` | Tracking integration — retrieves tracking status from Consignor platform, generates tracking URLs for customer communication, supports webhook-based status updates |
| `ConsignorExtMgt` | Extension management (in _public) — provides extension points for custom carrier configurations and additional service types beyond default setup |
