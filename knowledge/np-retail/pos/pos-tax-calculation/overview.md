---
type: concept
tags: [np-retail, pos, tax-calculation, pos-tax-calculation]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-posting/overview.md
updated: 2026-05-09
---

# POS Tax Calculation Module

The POS Tax Calculation module provides a pluggable tax calculation framework for the NP Retail POS system. It implements multiple tax strategies (Normal VAT, Reverse Charge VAT, Full VAT, Sales Tax, No Taxable VAT) through an interface-based strategy pattern.

## Architecture

Tax calculation uses a **strategy pattern** mediated by the `"NPR POS ITaxCalc"` interface. Each tax calculation type implements this interface and is registered via the extensible `"NPR POS Tax Calc. Type"` enum (6150756).

### Strategy Dispatch

```
POS Entry Posting → POSEntryTaxCalc.PostPOSTaxAmountCalculation()
  → "NPR POS Sale Tax" table (carries source data + GetHandler())
    → "NPR POS Tax Calc. Type" enum → Interface "NPR POS ITaxCalc"
      → Concrete implementation (Normal Tax, Full Tax, Sales Tax, etc.)
```

The `"NPR POS Sale Tax"` table (6014570) is the central tax calculation record. It stores source data from the sale line and calculated results (amounts excl./incl. tax, tax amounts, prices, tax %, discount).

### Tax Calculation Types

| Type | Enum Value | Implementing Codeunit | Description |
|------|-----------|----------------------|-------------|
| Normal VAT | 0 | "NPR POS Normal Tax" | Standard EU VAT calculation |
| Reverse Charge VAT | 1 | "NPR POS Normal Tax" | Reverse charge VAT (same engine as Normal) |
| Full VAT | 2 | "NPR POS Full Tax" | Full VAT calculation |
| Sales Tax | 3 | "NPR POS Sales Tax" | Sales-tax style (US/Canada) |
| No Taxable VAT | 4 | "NPR No Taxable VAT" | Zero VAT / exempt |

The `"NPR POS Tax Type"` enum (6150757) captures the broader classification of tax types for reporting: Sales Tax, Excise Tax, Normal Tax, Reverse Tax, No Taxable VAT.

### Tax Strategy Implementations

Each strategy lives in its own subdirectory:

- **Normal Tax Calculation** (`"NPR POS Normal Tax"`) — Standard VAT handling with price-inclusive/exclusive support
- **Full Tax** (`"NPR POS Full Tax"`) — Full VAT computation
- **Sales Tax Calculation** (`"NPR POS Sales Tax"`) — US/Canada-style sales tax
- **No Taxable VAT** (`"NPR No Taxable VAT"`) — Tax-exempt/no-tax scenarios
- **External POS Sale** — Tax calculation for externally-created POS sales

### Entry Tax Calculation

The `"NPR POS Entry Tax Calc."` codeunit (6014634) is the entry facade called during POS posting:

- `PostPOSTaxAmountCalculation(EntryNo, SystemId)` — Looks up the `"NPR POS Sale Tax"` record by SystemId, resolves handler via `GetHandler()`, and delegates to the strategy's `PostPOSTaxAmountCalculation`
- `PostPOSTaxAmountCalculationReverseSign(EntryNo, SystemId)` — Same but with reversed sign (for returns/credits)
- `DeleteAllLines(EntryNo)` — Removes tax lines for a given POS entry

## Dependencies

- **POS Core** — Sale line data (tax-relevant fields copied to `"NPR POS Sale Tax"`)
- **POS Posting** — Entry tax lines created at posting time

## Extension Points

Partners can add custom tax calculation strategies by:
1. Adding values to the extensible `"NPR POS Tax Calc. Type"` enum
2. Implementing the `"NPR POS ITaxCalc"` interface on a new codeunit
3. Subscribing to `OnSetTaxCalcType` on the `"NPR POS Sale Tax"` table for custom enum value resolution
4. Subscribing to `OnAfterCopyFromSource` / `OnAfterCopyFromSourceAmounts` on `"NPR POS Sale Tax"` to enrich source data
