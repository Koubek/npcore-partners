---
type: concept
tags: [np-retail, pos, tax-free, pos-tax-free]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-action/overview.md
updated: 2026-05-09
---

# POS Tax Free Module

The POS Tax Free module manages tax-free shopping voucher issuance for international travelers. It supports integration with multiple tax refund providers (Global Blue, Planet Payment, Premier PI, etc.) through a handler-based plugin architecture.

## Architecture

Tax free processing follows a **handler plugin pattern** mediated by the `"NPR Tax Free Handler IF"` interface and the `"NPR Tax Free Handler ID"` extensible enum. Each tax refund provider implements the interface to handle voucher lifecycle: issue, void, reissue, lookup, print, consolidate.

### Handler Dispatch

```
POS Action (Tax Free button) → "NPR Tax Free Handler Mgt."
  → Constructor(TaxFreeHandlerID enum value)
    → "NPR Tax Free Handler ID" enum
      → "NPR Tax Free Handler IF" interface methods
        → Provider-specific implementation
```

The `"NPR Tax Free Execute"` codeunit (6014434) is a single-instance dispatcher that routes calls from the management codeunit to the correct handler interface method based on `"NPR Tax Free OnRunFunction"` enum.

### Voucher Lifecycle

| Operation | Interface Method | Description |
|-----------|-----------------|-------------|
| Issue | OnVoucherIssueFromPOSSale | Creates a new tax free voucher for a completed sale |
| Void | OnVoucherVoid | Voids an existing voucher with the provider |
| Reissue | OnVoucherReissue | Voids old + issues new voucher (e.g., changed sale) |
| Lookup | OnVoucherLookup | Looks up voucher status with the provider |
| Print | OnVoucherPrint | Prints/reprints a voucher |
| Consolidate | OnVoucherConsolidate | Merges multiple sales into one voucher |

### Provider Integrations

The module includes an `Integrations/` subdirectory with provider-specific handler implementations. Providers implement the full `"NPR Tax Free Handler IF"` interface and register via the `"NPR Tax Free Handler ID"` extensible enum.

### Key Records

- **Tax Free Profile** — POS unit-level configuration linking to a handler and its parameters
- **Tax Free Request** — Logs each request/response with the external provider (request type, timestamps, success/failure, error codes)
- **Tax Free Voucher** — Issued voucher record with barcode, amounts, print data, void status
- **Tax Free Voucher Sale Link** — Links vouchers to the sales they cover (supports consolidation)
- **Tax Free Consolidation** — Temporary grouping of sales for multi-sale voucher issuance
- **Tax Free Handler Param.** — Generic per-handler parameter storage (serialized as BLOB)

### End-of-Sale Integration

The `IssueTaxFreeVoucher` procedure in `"NPR Tax Free Handler Mgt."` integrates with the end-of-sale workflow:
1. Checked if `SalePOS."Issue Tax Free Voucher"` flag is set
2. Resolves POS unit's tax free profile
3. Finds the posted POS entry for the sale
4. Dispatches to `VoucherIssueFromPOSSale` for provider interaction
5. Creates `"NPR Tax Free Voucher"` record linking to sale links

## Dependencies

- **POS Core** — Sale lifecycle, POS Unit, POS Session
- **POS Action** — Tax Free action triggers from frontend
- **Sentry** — Voucher operations traced

## Extension Points

Partners can add new tax free providers by:
1. Adding values to the extensible `"NPR Tax Free Handler ID"` enum, each implementing `"NPR Tax Free Handler IF"`
2. Creating handler codeunits that subscribe to the integration events on `"NPR Tax Free Handler Mgt."`
3. Optionally subscribing to `OnBeforeSetConstructor` for custom handler resolution
