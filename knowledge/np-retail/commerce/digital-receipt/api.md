---
type: reference
tags: [np-retail, commerce, digital-receipt, tables, codeunits, pages, enums]
relates: [commerce/digital-receipt/overview.md]
updated: 2026-05-09
---

# Digital Receipt — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `DigitalRcptSetup` | Global setup flags |
| `DigitalReceiptSetup` | Delivery configuration (email, SMS, QR) |
| `POSReceiptProfile` | Per-POS-unit receipt profile (method, format, delay) |
| `POSSaleDigReceiptEntry` | Links POS sale to digital receipt delivery |
| `POSSaleDigitalReceiptEntry` | Extended receipt entry (delivery status, timestamps) |

## Enums

### "ShowQRCodeOn"

Controls when QR code is displayed. Values typical for receipt-on-phone scenarios.

## Codeunits

### Codeunit "FiskalyAPI"

Fiskaly cloud API client for DSFinV-K (German cash register compliance). Required for markets where digital receipts must be archived with fiscal verification.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `DigitalReceiptSetup` | DigitalReceiptSetup | Global digital receipt configuration |
| `POSReceiptProfile` | POSReceiptProfile | Per-unit profile card |
| `POSReceiptProfiles` | POSReceiptProfile | Profile list |
| `POSSaleDigReceiptEntry` | POSSaleDigReceiptEntry | Sale-linked receipt entry |
| `POSSaleDigitalRcptEntries` | POSSaleDigitalReceiptEntry | Digital receipt list |
| `PDFDigitalReceiptViewer` | — | PDF preview for digital receipts |

## Subdirectory: QRCodeSetup

Contains QR code generation and display configuration files.
