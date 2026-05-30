---
type: concept
tags: [np-retail, accounts, intercompany]
relates: [accounts/accounts/overview.md]
updated: 2026-05-09
---

# Intercompany — Overview

Intercompany document mapping for NP Retail. Extends standard BC intercompany functionality with item-level mapping for purchase documents, barcode-based item matching, and pre-mapping validation for incoming intercompany transactions.

## Purpose

- Map incoming intercompany purchase document lines to local items
- Barcode-based item cross-referencing for intercompany matching
- Pre-mapping validation for incoming purchase documents before posting
- Custom item line mapping logic for intercompany scenarios

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `MapIncomItemLines` | Maps incoming intercompany item lines to local items |
| `PremapIncomItemLines` | Pre-mapping validation logic before document processing |
| `PremapIncomingPurchDoc` | Pre-mapping for incoming purchase documents |
| `ICMapICRBarcodes` | Barcode-based cross-reference mapping for intercompany |

## Subfolders

| Path | Contents |
|------|----------|
| `_public/` | Public intercompany objects |
