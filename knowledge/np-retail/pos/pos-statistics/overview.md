---
type: concept
tags: [np-retail, pos, pos-statistics]
relates:
  - np-retail/pos/pos-posting/overview.md
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Statistics Module

The POS Statistics module provides analytical reporting on POS sales data — including turnover comparisons, per-sale and per-salesperson statistics, cash summaries, and entry-level statistical breakdowns.

## Architecture

The module uses queries and flowfields to aggregate POS entry data across multiple time dimensions (day, week, month, year) with year-over-year comparisons. Results are stored in temporary buffer tables for display.

### Key Components

| Component | Purpose |
|-----------|---------|
| **POSStatisticsMgt.Codeunit.al** (6059818) | Core statistics engine. Computes turnover, profit, salesperson rankings, and cash summaries. |
| **POSEntryStatisticsMgt.Codeunit.al** | Manages entry-level statistics (filters, calculations, flowfield aggregations). |
| **POSEntryStatistics.Table.al** (6014620) | Temporary table with flowfield-based aggregation of POS entries by multiple filter dimensions (store, unit, payment method, customer, date, dimensions). |
| **CashSummaryBuffer.Table.al** | Temporary buffer for cash summary aggregation per POS unit. |
| **POSEntryStatisticsMgt.Codeunit.al** | Calculates entry-level stats from source variant records. |
| **CashSummary.Query.al** | Query aggregating cash transaction amounts per unit/bin/payment method. |
| **ItemSalesPostings.Query.al** | Query for item sales posting data. |
| **POSSLDiscAmtType.Query.al** | Query for sales line discount amounts by type. |
| **POSEntryStats.Query.al** | Query for entry-level statistics. |
| **POSSalespersonStats.Query.al** | Query for salesperson-level aggregation. |
| **POSSingleStatistics.Query.al** | Query for individual sale statistics. |
| **RetailHeadlineSales.Query.al** | Query for headline sales figures. |

### Turnover Calculation

`FillTurnoverData` computes turnover for multiple time ranges:

| Time Range | Current Period | Comparison Period |
|------------|----------------|-------------------|
| Day | Today | Same day last year |
| Week | Current week | Same week last year |
| Last Week | Previous week | Same week previous year |
| Month | Current month | Same month last year |
| Last Month | Previous month | Same month previous year |
| Year | Year to date | Previous year |
| Last Year | Previous full year | Year before that |

Each period computes: **Net Amount**, **Cost of Sales**, **Profit**, and **Profit %**. Data comes from:
- Direct sale amounts (from `NPR POS Turnover` query)
- Credit sale invoice amounts (from `NPR POS Credit Sales Invoice` query)
- Credit sale credit memo amounts (from `NPR POS Credit Sales Cr. Memo` query)

### Single Sale Statistics

`FillSingleStatsBuffer` captures per-entry statistics including sales amount, cost, profit, discount, tax, and quantity (positive = sale, negative = return).

### Current Sale Statistics

`FillCurrentStatsBuffer` computes real-time statistics for an active (unposted) sale from the sale line records.

### Salesperson Top 20

`FillSalePersonTop20` uses the `NPR POS Salesperson Stats` query to rank top 20 salespeople by sales amount within a date range. Shows Name, Sales (LCY), Discount Amount, Discount %, Profit (LCY), Profit %.

### Cash Summary

`FillCashSummary` aggregates cash transaction amounts per POS unit/bin, filtering by CASH processing type payment methods. Uses the `NPR Cash Summary` query and finds the last FLOAT bin entry as a starting point.

## Key Business Flows

### Viewing Turnover Report
1. User opens POS statistics page
2. `POSStatisticsMgt.FillTurnoverData` is called with base date
3. Queries aggregate sales, costs, and profits per time range
4. Results displayed in a buffer table with current vs. last-year comparison columns
5. Difference % calculated per row

### Entry Statistics
1. User sets filters (store, unit, date, payment method, customer, dimensions)
2. `POSEntryStatistics.Calculate` runs with source record
3. Flowfields compute aggregates per filter combination
4. `OnBeforeCalcFields` event allows custom calculation extensions

## Dependencies

- **POS Core** — `NPR POS Entry`, `NPR POS Entry Sales Line`, `NPR POS Entry Payment Line`
- **POS Posting** — Posted entries with cost/profit data
- **POS Payment** — Payment method configurations for cash summary filtering

## Extension Points

- `OnBeforeCalcFields` integration event in `POSEntryStatistics` — Custom flowfield aggregations
