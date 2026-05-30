---
type: reference
tags: [np-retail, attraction, external-pos-sale, tables, codeunits, pages, events]
relates: [np-retail/attraction/external-pos-sale/overview.md]
updated: 2026-05-09
---

# External POS Sale — API Reference

## Tables

| ID | Name | Caption | Key Fields | Notes |
|----|------|---------|------------|-------|
| 6014606 | NPR External POS Sale | External POS Sale | Entry No. (PK) | Sale header; dimensions, posting setup, receipt delivery, conversion status |
| 6014605 | NPR External POS Sale Line | External POS Sale Line | External POS Sale Entry No., Line No. | Sale lines with full item tracking, VAT, discount, dimensions |
| 6150988 | NPR External POS Sale Eft Line | — | External POS Sale Entry No., External Pos SaleLine No | EFT data per payment line; Base64 blob, processing type, NP Pay integration |
| — | ExternalPOSSaleBuf | — (temporary, _public) | — | Buffer table for public API consumption |

### NPR External POS Sale (6014606)
Key fields: Entry No. (Integer, AutoIncrement), Register No. (Code[10]), Sales Ticket No. (Code[20]), POS Store Code, Salesperson Code, Date, Start Time, Location Code, Customer No., Country Code, Gen. Bus. Posting Group, Prices Including VAT, External Document No., Tax Area Code, Tax Liable, VAT Bus. Posting Group, Event No., User ID, External Pos Id, External Pos Sale Id, Send Receipt: Email/SMS, Converted To POS Entry, Has Conversion Error, POS Entry No. Multiple keys for conversion status/receipt delivery queries.

### NPR External POS Sale Line (6014605)
Key fields: External POS Sale Entry No., Register No., Sales Ticket No., Line No., Line Type (Enum NPR POS Sale Line Type), No., Description, Unit of Measure Code, Quantity, Qty. per Unit of Measure, Unit Price, Price Includes VAT, VAT %, VAT Base Amount, Discount %, Discount Amount, Amount, Amount Including VAT, Currency Code, Variant Code, Serial No., Location Code, Gen. Bus./VAT posting groups, Dimension Set ID, Item Category Code, Return Reason Code, Unit Cost. Full OnValidate dispatch per line type.

### NPR External POS Sale Eft Line (6150988)
Fields: External POS Sale Entry No., External Pos SaleLine No, Base64Data (Blob), EFT Type (Option: NP Pay), EFT Entry No (→ NPR EFT Transaction Request), Processing Type (Option: PAYMENT/REFUND/OPEN/CLOSE/etc.), EFT Reference (Text[50]).

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6014637 | NPR Ext. POS Sale Converter | Converts external sale to POS Entry; processes EFT data in NpPay/Adyen format |
| 6014642 | NPR Ext. POS Sale Lookup | Import entry lookup handler; opens ExternalPOS Sale card |
| 6248233 | NPR Ext. POS Sale Processing | Auto-fill, validation, and balance checking before conversion |
| 6014625 | NPR Ext. POS Sale Processor | Process handler for import entries; runs converter |
| 6248188 | NPR External POS Sale Events | Integration events for partner extensibility |
| 6014648 | NPR Get External POS Sale | Import update handler; polls unconverted sales, creates import entries |
| — | ExternalPOSSalePub | (_public) Public API codeunit |
| — | ExtSaleConvertJQ | Job queue: batch conversion worker |
| — | ExtSaleEmailJQ | Job queue: email receipt delivery |
| — | ExtSaleSMSJQ | Job queue: SMS receipt delivery |

### NPR Ext. POS Sale Converter (6014637)
Key procedures:
- OnRun — main entry: validates, assigns receipt no., processes EFT data, calls POSCreateEntry
- CreateEftData — iterates payment lines, converts NP Pay EFT data to EFTTransactionRequest
- NpPayEftIntegrationHandler — parses Adyen response, maps payment types

### NPR Ext. POS Sale Processing (6248233)
Key procedures:
- TryAutoFillExternalPOSSale — fills defaults from POS unit/store/posting profile
- TryAutoFillExternalPOSSaleLine — fills VAT, discounts, UoM per line type
- ValidateExternalPOSData — checks conversion flag, line data, balance (sale amount = paid amount + rounding)
- AddConversionError — marks sale with error flag and message

### NPR Ext. POS Sale Processor (6014625)
- ProcessImportEntry — resolves RecordId from import entry, runs converter
- RegisterNcImportType / DeleteNCImportType — manages import type registration

### NPR External POS Sale Events (6248188)
- OnAfterInsertPaymentLineFromRestApi — integration event for custom payment processing via REST API

### NPR Get External POS Sale (6014648)
- Update(JobQueueEntry) — polls External POS Sale for unconverted entries
- GetNewEntries — iterates sales with Auto Process enabled, creates import entries
- ShowErrorLog — opens filtered list of failed conversions
- Shows conversion errors; no custom setup

## Pages

| Name | Source Table | Notes |
|------|-------------|-------|
| NPR External POS Sale Card | NPR External POS Sale | Card page for editing/completing external sales |
| NPR External POS Sales | NPR External POS Sale | List page for external sales |
| NPR External POS Sale Subform | NPR External POS Sale Line | Subpage for sale lines |
| NPR External POS Sale Pay Sub | NPR External POS Sale Line (payments) | Subpage for payment lines |
