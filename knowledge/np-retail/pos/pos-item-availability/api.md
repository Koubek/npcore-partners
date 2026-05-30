---
type: reference
tags: [np-retail, pos, pos-item-availability, tables, codeunits, pages, queries]
relates:
  - np-retail/pos/pos-item-availability/overview.md
updated: 2026-05-09
---

# POS Item Availability API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6014637 | NPR POS Inventory Profile | Code, Description, Stockout Warning | Defines inventory checking behavior per POS unit. `Stockout Warning` flag gates whether availability UI is shown. |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6059785 | NPR POS Action: Check Avail. | Register(), RunWorkflow() | POS action workflow implementation. Registers with `NPR POS Workflow Config`, executes check via B-variant. |
| 6059783 | NPR POS Item-Check Avail. | DefineScopeAndCheckAvailability(), CheckAvailability_PosSale(), CheckAvailability_PosSaleLine(), CalcAvailableInventory(), SetxDataset() | Core availability engine. Computes inventory per item/variant/location. Fires `OnItemNotAvailable` integration event. |

### NPR POS Item-Check Avail. Methods

| Method | Params | Returns | Description |
|--------|--------|---------|-------------|
| DefineScopeAndCheckAvailability | POSSession, AskConfirmation | Boolean | Entry point from session context. Gets current sale and delegates. |
| CheckAvailability_PosSale | SalePOS, AskConfirmation | Boolean | Checks all item lines in a sale. Uses profile from POS unit. |
| CheckAvailability_PosSaleLine | SaleLinePOS, xSaleLinePOS, AskConfirmation | Boolean | Checks a single line for availability. |
| CalcAvailableInventory | SaleLinePOS, AllOtherLocations | Decimal | Computes: `Inventory - Qty. on Sales Orders - Unposted POS Qty` |
| CalcGrossRequirement | SaleLinePOS | Decimal | Sums quantities across sale lines matching item/variant/location. |
| SetxDataset | POSSession / SalePOS / SaleLinePOS | — | Creates a snapshot of sale line quantities for change detection in scope-based checking. |
| SetIgnoreProfile | Set | — | If true, bypasses profile `Stockout Warning` setting. |
| GetAvailabilityIssuesFound | — | Boolean | Returns whether availability issues were found in last check. |

### Integration Events

`OnItemNotAvailable(PosItemAvailability, Scope, PosInventoryProfile, AskConfirmation, var Handled, var Confirmed)`

Allows subscribers to override the availability failure handling.

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| 6014636 | NPR POS Inventory Profiles | List page for inventory profile configuration |
| 6014640 | NPR POS Item Avail. Check | Dialog showing availability details per item |
| 6014641 | NPR POS Item Avail. Check Det. | Detail lines for the availability check dialog |

## Queries

| Query | Purpose |
|-------|---------|
| NPR Unposted POS Item Entries | Reads sum of base quantities from unposted POS item entries per item/variant/location |
