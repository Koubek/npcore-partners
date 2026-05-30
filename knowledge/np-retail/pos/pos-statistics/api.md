---
type: reference
tags: [np-retail, pos, pos-statistics, tables, codeunits, pages, queries]
relates:
  - np-retail/pos/pos-statistics/overview.md
updated: 2026-05-09
---

# POS Statistics API Reference

## Tables

| Table # | Name | Type | Key Fields | Description |
|---------|------|------|-----------|-------------|
| 6014620 | NPR POS Entry Statistics | Temporary | Source System Id, Source Table Id | Aggregation of POS entries with flowfield-based calculations: payment amounts, direct/credit/debit/balancing sale amounts (excl. and incl. tax). Flow filters: POS Unit, Document, Date, Global Dimension 1/2, Payment Method, Salesperson, POS Store, Customer. |
| — | NPR Cash Summary Buffer | Temporary | Entry No., POS Unit No., Payment Bin No., Payment Method Code | Cash summary aggregation per unit/bin/method. |
| — | NPR POS Single Stats Buffer | Temporary | Entry No., Document No., POS Unit No. | Per-entry statistics: sales amount, cost, profit %, discount, tax, quantity. |
| — | NPR POS Turnover Calc. Buffer | Temporary | Entry No., IsHeader, Description, This Year, Last Year | Turnover comparison rows with formatted text values. |
| — | NPR POS Salesperson St Buffer | Temporary | Entry No., Name, Sales (LCY), Discount Amount, Profit (LCY) | Salesperson ranking data. |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6059818 | NPR POS Statistics Mgt. | FillSingleStatsBuffer(), FillCurrentStatsBuffer(), FillTurnoverData(), FillSalePersonTop20(), FillCashSummary(), TryGetPOSEntry() | Core statistics engine for turnover, salesperson, and cash summary reporting. |
| — | NPR POS Entry Statistics Mgt. | Calculate(), InsertRecord() | Entry-level statistics calculation with filter propagation from source records. |

### NPR POS Statistics Mgt. Methods

| Method | Description |
|--------|-------------|
| FillSingleStatsBuffer(var POSSingleStatsBuffer, var POSEntry) | Computes per-entry stats: cost from either posted actuals (query) or unit cost, profit %, sales amount. |
| FillCurrentStatsBuffer(var POSCurrentStatsBuffer, var POSSale, AlwaysUseUnitCost) | Computes real-time stats from active sale lines. Gets cost from item card (Last Direct Cost or Unit Cost). |
| FillTurnoverData(var POSTurnoverCalcBuffer, BaseDate, POSStoreCode, POSUnitNo) | Fills 8 time-range blocks (day, week, last week, month, last month, year, last year) with net/cost/profit/% data. |
| FillSalePersonTop20(var SalespersonStatsBuffer, FromDate, ToDate) | Queries and ranks top 20 salespeople. Computes discount %, profit %. |
| FillCashSummary(var CashSummaryBuffer temporary) | Aggregates cash amounts per POS unit/bin from last FLOAT entry point. |
| CalculateTransactionAmount() | Returns total cash transaction amount from last FLOAT. |

### NPR POS Entry Statistics Methods

| Method | Description |
|--------|-------------|
| Calculate(Source: Variant) | Main entry point. Extracts filters from source record, propagates to flowfields, fires OnBeforeCalcFields, calculates flowfields. |
| InsertRecord(Source: Variant) | Inserts a new entry statistics record with Source SystemId and Source Table ID. |
| GetPageId() | Returns the statistics page ID. |

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| — | NPR POS Entry Statistics | Entry-level statistics page with filterable aggregation |
| — | NPR POS Current Sale Stats | Real-time statistics for the active sale |
| — | NPR POS Single Sale Statistics | Statistics for a single posted entry |
| — | NPR POS Salesperson Top 20 | Salesperson ranking page |
| — | NPR Cash Summary | Cash transaction summary per POS unit |
| — | NPR POS Cash Summary Buffer | Cash summary buffer view |

## Queries

| Query | Description |
|-------|-------------|
| NPR POS Turnover | Aggregates direct sale amounts and costs by posting date |
| NPR POS Credit Sales Invoice | Credit sale invoice amounts and costs |
| NPR POS Credit Sales Cr. Memo | Credit sale credit memo amounts and costs |
| NPR POS Single Statistics | Per-entry actual cost and sales amounts |
| NPR POS Salesperson Stats | Salesperson-level aggregation: sales, discount, cost |
| NPR Cash Summary | Cash transaction amounts per unit/bin/method |
| NPR POS Entry Stats | Entry-level statistics aggregation |
| NPR POS SL Disc Amt. Type | Sales line discount amounts by discount type |
| NPR Item Sales Postings | Item sales posting data |
| NPR Retail Headline Sales | Headline sales figures |
