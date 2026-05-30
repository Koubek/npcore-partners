---
type: concept
tags: [np-retail, commerce, digital-receipt]
relates: [pos/pos-core/overview.md, commerce/digital-notification/overview.md]
updated: 2026-05-09
---

# Digital Receipt — Overview

Digital receipt delivery for NP Retail POS. Manages digital receipt profiles, QR code display, Fiskaly compliance integration, and customer receipt preferences for electronic receipt delivery at the point of sale.

## Purpose

- Configurable receipt profiles per POS unit
- QR code generation for digital receipt access
- Fiskaly-compliant digital receipt storage (Germany/Austria)
- PDF digital receipt viewer
- Customer receipt preference management
- Delayed digital receipt delivery support

## Key Tables

| Table | Purpose |
|-------|---------|
| `DigitalRcptSetup` | Global digital receipt configuration |
| `DigitalReceiptSetup` | Digital receipt delivery settings |
| `POSReceiptProfile` | Per-unit receipt profile (method, format) |
| `POSSaleDigReceiptEntry` | Sale-linked digital receipt entries |
| `POSSaleDigitalReceiptEntry` | Extended digital receipt entry data |

## Codeunits

| Codeunit | Purpose |
|----------|---------|
| `FiskalyAPI` | Fiskaly cloud API integration for DSFinV-K compliance |

## Enums

| Enum | Purpose |
|------|---------|
| `ShowQRCodeOn` | Trigger point for QR code display (e.g., on sale completion) |
