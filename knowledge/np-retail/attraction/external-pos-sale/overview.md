---
type: concept
tags: [np-retail, attraction, external-pos-sale]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-posting/overview.md
updated: 2026-05-09
---

# External POS Sale Module

Handles sales ingested from external POS systems (third-party terminals, mobile POS, webshop orders) into NP Retail. These are non-NPR POS sales that need conversion to standard POS entries for posting and reporting.

## Core Concept

External POS Sales are created via API or import, stored in `NPR External POS Sale` (header) + `NPR External POS Sale Line` (lines), then converted to standard `NPR POS Entry` records for the official posting pipeline.

## Key Business Flows

### Sale Ingestion
1. External systems create sale records via API or import entries
2. `NPR Get External POS Sale` (implements `NPR Nc Import List IUpdate`) periodically polls unconverted sales
3. Sales with `Auto Process Ext. POS Sales` flag enabled get import entries created
4. `NPR Ext. POS Sale Processor` processes entries via `ProcessImportEntry`
5. `NPR Ext. POS Sale Converter` runs `CreatePOSEntryFromExternalPOSSale` to convert to `NPR POS Entry`

### Conversion Flow (`ExtPOSSaleConverter`)
1. Validates sale not already converted (`Converted To POS Entry` flag)
2. Assigns next receipt number if empty
3. Processes EFT data — converts EFT response data into `NPR EFT Transaction Request` records
4. Maps external payment lines to NP Pay / Adyen payment types
5. Calls `POSCreateEntry.CreatePOSEntryFromExternalPOSSale` for final posting

### EFT Integration
EFT payment data is stored in `NPR External POS Sale Eft Line` as Base64-encoded blobs.
- Supports NP Pay integration
- Response data is parsed via `NPR EFT Adyen Response Parser`
- Payment type mapping via `NPR EFT Payment Mapping`
- Result: `NPR EFT Transaction Request` created per payment line

### Auto-fill and Validation
`ExtPOSSaleProcessing` provides:
- `TryAutoFillExternalPOSSale` — fills register no., store, date, posting profile defaults
- `TryAutoFillExternalPOSSaleLine` — fills VAT, discounts, UoM, location per line type
- `ValidateExternalPOSData` — checks conversion flag, line data, and balance before conversion

### Receipt Delivery
Supports email and SMS receipt delivery after conversion:
- `ExtSaleEmailJQ` — job queue for email receipt delivery
- `ExtSaleSMSJQ` — job queue for SMS receipt delivery

## Architecture

### Data Model
- `NPR External POS Sale` — header with POS unit, store, customer, posting dimensions, EFT status, receipt delivery flags
- `NPR External POS Sale Line` — sale lines with type dispatch (Item, Payment, Rounding, etc.), dimensions, serial/lot tracking
- `NPR External POS Sale Eft Line` — EFT transaction data per payment line
- `ExternalPOSSaleBuf` — temporary buffer for public API consumption

### Import Type System
Registers as `ExternalPOSSale` import type via `NPR Nc Import Type`:
- Update handler: `NPR Get External POS Sale`
- Process handler: `NPR Ext. POS Sale Processor`
- Lookup handler: `NPR Ext. POS Sale Lookup`

### Dependencies
- **POS Core** — POS entry creation, receipt number assignment
- **POS Posting** — entry posting pipeline
- **EFT** (NP Pay) — payment transaction processing
- **Import** (NPR Nc Import) — import list framework
- **Sentry** — (used in converter for error handling)
