---
type: reference
tags: [np-retail, pos, pos-discount, tables, codeunits, pages, enums, queries, events]
relates:
  - np-retail/pos/pos-discount/overview.md
updated: 2026-05-09
---

# POS Discount — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6014439 | NPR Quantity Discount Header | Multiple Price Header | Item No. + Main No.; Item No. + Status + Starting Date + Closing Date | Quantity discount header with date/time windows, dimension filters, store group assignment, and status lifecycle |
| — | NPR Quantity Discount Line | — | Main No. + Item No. + Quantity | Quantity discount tier lines with price (VAT-aware) |
| — | NPR Discount Calc. Buffer | — | (temporary) | Calculation buffer for discount processing |
| — | NPR Disc. Store Group | — | Code | Store group definitions for discount scoping |
| — | NPR Disc. Store Group Line | — | Code + Store Code | Store-to-group assignment |
| — | NPR Mixed Discount Level | — | — | Mixed/bundle discount tier levels |
| — | NPR Mixed Disc Time Interv. | — | — | Time intervals for mixed discount validity |

## Enums

| Name | Values | Extensible | Description |
|------|--------|------------|-------------|
| DiscGroupingType | — | — | Discount grouping categorization |
| DiscountPeriodType | — | — | Period-based discount time classification |
| MixedDiscountType | — | Yes | Mixed discount calculation type |

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6014432 | NPR Quantity Discount Mgt. | Quantity discount calculation engine. Subscribes to discount pipeline |
| 6014433 | NPR Customer Discount Mgt. | Customer-specific line discount from Price List Line |
| — | PeriodDiscountManagement | Period-based time-windowed discounts |
| — | MixedDiscountManagement | Mix-and-match bundle discount calculation |
| — | RetailCampaignCalcMgt | Campaign promotion discount engine |
| — | DiscountCalcArray | Array-based discount price calculation |
| — | DiscountCalcBufferUtils | Buffer utility for calc buffer manipulation |
| — | DiscStoreGroupUtils | Store group validation for discount applicability |
| — | CustomerDiscountMgt | Customer discount application |

### Quantity Discount Mgt. (6014432)

| Procedure | Description |
|-----------|-------------|
| `ApplyQuantityDiscounts(SalePOS, var TempSaleLinePOS, Rec, RecalculateAllLines): Boolean` | Apply tiered pricing based on quantity thresholds |
| `GetQuantityDiscounts(var TempSaleLinePOS, var TempHeader, var TempLine, SalePOS)` | Load active quantity discounts with store group filtering |
| `GetOrInit(var DiscountPriority)` | Register discount priority (Priority=4, Cross Line Calculation=true) |
| `GetNoSeries(): Code[20]` | Returns QTY-DISC number series |

### Customer Discount Mgt. (6014433)

| Procedure | Description |
|-----------|-------------|
| `ApplyCustomerDiscount(SalePOS, var TempSaleLinePOS, Rec, RecalculateAllLines)` | Apply customer-specific discounts from Price List Line |
| `ApplyCustomerDiscountOnLine(SalePOS, var TempSaleLinePOS)` | Single-line discount application via `FindSalesLineLineDisc` |

## Events

Both Quantity and Customer discount codeunits subscribe to these events on `NPR POS Sales Disc. Calc. Mgt.`:

| Event | Subscription | Description |
|-------|-------------|-------------|
| `InitDiscountPriority(var DiscountPriority)` | Integration (true) | Register discount priority on startup |
| `ApplyDiscount(DiscountPriority, SalePOS, var TempSaleLinePOS, Rec, xRec, LineOperation, RecalculateAllLines)` | Integration (true) | Execute discount calculation |
| `OnFindActiveSaleLineDiscounts(var tmpDiscountPriority, SalePOS, Rec, xRec, LineOperation)` | Integration (false) | Check if active discounts exist for current sale context |

## Pages

| Name | Source Table | Purpose |
|------|-------------|---------|
| NPR Quantity Discount List | NPR Quantity Discount Header | Quantity discount header list |
| NPR Quantity Discount Card | NPR Quantity Discount Header | Quantity discount header card/edit |
| NPR Quantity Discount Line | NPR Quantity Discount Line | Quantity discount line subpage |
| NPR Campaign Discount List | — | Campaign discount list |
| NPR Campaign Disc. Line List | — | Campaign line items |
| NPR Disc. Store Groups | NPR Disc. Store Group | Store group list |
| NPR Disc. Store Group Card | NPR Disc. Store Group | Store group card |
| NPR Disc. Store Group Lines | NPR Disc. Store Group Line | Store group line subpage |
| NPR Mixed Discount List | — | Mixed discount list |
| NPR Mixed Discount Lines | — | Mixed discount lines |
| NPR Mixed Discount Levels | NPR Mixed Discount Level | Mixed discount tiers |
| NPR Mixed Disc. Time Interv. | NPR Mixed Disc Time Interv. | Time interval configuration |
| NPR Discount FactBox | — | Discount info factbox |
| NPR Discount Activities | — | Discount activity overview |

## Queries

| Name | Purpose |
|------|---------|
| CampaignItemsPeriod | Campaign items by period |
| MixedDiscItemsMix0 | Mixed discount item list (group 0) |
| MixedDiscItemsMix1 | Mixed discount item list (group 1) |
| MixedDiscItemsMix2 | Mixed discount item list (group 2) |
| PeriodDiscountItems | Period discount items |
| RetailCampgnItemTotals | Campaign item totals |
| RetailCmpgnItemEntries | Campaign item entries |
| RetailCmpgnItemsMix0/1/2 | Campaign mix items per group |
