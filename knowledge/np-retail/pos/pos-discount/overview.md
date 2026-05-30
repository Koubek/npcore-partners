---
type: concept
tags: [np-retail, pos, pos-discount]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/infrastructure/sentry/overview.md
updated: 2026-05-09
---

# POS Discount Module

Implements multi-tier discount calculation and management for NP Retail POS. Supports quantity discounts, period-based discounts, customer discounts, campaign discounts, mixed discounts, and store group filtering.

## Architecture

Discount calculation follows a **priority-based pipeline** mediated by the `NPR Discount Priority` table. Each discount type registers a priority level and a calculation codeunit. The pipeline runs in priority order, with each subscriber receiving sale context and line records.

### Discount Priority System

| Discount Type | Priority | Codeunit | Description |
|--------------|----------|----------|-------------|
| Customer Discount | 2 | `NPR Customer Discount Mgt.` (6014433) | Applies customer-specific line discounts from Price List Line |
| Quantity Discount | 4 | `NPR Quantity Discount Mgt.` (6014432) | Multi-buy tiered pricing on `NPR Quantity Discount Header/Line` |
| Period Discount | — | `PeriodDiscountManagement` | Time-windowed discount campaigns |
| Mixed Discount | — | `MixedDiscountManagement` | Mix-and-match (bundle) discounts |
| Campaign Discount | — | `RetailCampaignCalcMgt` | Promotion campaigns |

### Discount Types

**Quantity Discounts** — Defined by `NPR Quantity Discount Header` (6014439) + `NPR Quantity Discount Line` (6014440):
- Item + Main No. keyed, with date/time validity windows
- Status lifecycle: Await → Active → Balanced
- Dimension filterable (Global Dim 1, Global Dim 2)
- Store group filtering via `NPR Disc. Store Group`
- Block Custom Discount flag on header

**Customer Discounts** — Applied from BC's `Price List Line`:
- Subscribes to `InitDiscountPriority` and `ApplyDiscount` events
- Cross-checks `Customer.Allow Line Disc.` flag
- Supports campaign override (best discount wins)

**Period Discounts** — Time-segmented discounts via `PeriodDiscountManagement`

**Mixed Discounts** — Bundle/mix-and-match via `MixedDiscountManagement`:
- `MixedDiscountType` enum (Extensible)
- `MixedDiscountLevel` table for discount tiers
- `MixedDiscTimeInterv` table for time intervals
- Query-based item mix evaluation (Mix0/Mix1/Mix2)

**Campaigns** — Retail campaigns via `RetailCampaignCalcMgt`:
- Campaign items, period filtering, totals tracking
- Multiple item entry queries for campaign analysis

### Store Groups
Store group filtering via `NPR Disc. Store Group` + `NPR Disc. Store Group Line`:
- Links discounts to specific store codes
- `DiscStoreGroupUtils` provides validation

### Key Flows

1. Sale line is inserted/modified → POS Core fires `OnAfterInsertPOSSaleLine`
2. `NPR POS Sales Disc. Calc. Mgt.` triggers discount pipeline
3. Each discount type's `OnFindActiveSaleLineDiscounts` checks if active discounts exist
4. `ApplyDiscount` event fires per active priority → each codeunit applies its discounts
5. Best discount per line wins (cross-type comparison)

### Data Binding
Discount lines use the POS Data Source extension system to expose discount data to the frontend.

## Dependencies

- **POS Core** — Sale, Sale Line, Discount Priority infrastructure
- **POS Data Source** — Data source extension for front-end discount display
- **Sentry** — Execution tracing for discount operations
