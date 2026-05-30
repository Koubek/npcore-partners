---
type: reference
tags: [np-retail, accounts, intercompany, tables, codeunits]
relates: [accounts/intercompany/overview.md]
updated: 2026-05-09
---

# Intercompany — API Reference

## Codeunits

### "MapIncomItemLines"

Maps incoming intercompany purchase document item lines to local item records. Handles cross-reference resolution, item variant mapping, and unit of measure conversion.

### "PremapIncomItemLines"

Pre-mapping validation for incoming item lines. Runs before the main mapping to pre-validate item availability, cross-reference existence, and flag potential mapping issues.

### "PremapIncomingPurchDoc"

Pre-mapping logic for the full incoming purchase document header. Validates vendor, currency, and dimension mapping before line-level mapping proceeds.

### "ICMapICRBarcodes"

Barcode-based item cross-referencing for intercompany transactions. Matches incoming items to local items using barcode cross-references from the item reference system.
