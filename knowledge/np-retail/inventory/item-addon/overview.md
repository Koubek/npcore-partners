---
type: concept
tags: [np-retail, inventory, item-addon]
relates: [pos/pos-core/overview.md, pos/pos-payment/overview.md]
updated: 2026-05-09
---

# Item AddOn — Overview

Manages **item add-ons and bundles** — supplementary items (e.g., warranties, accessories, options) that can be attached to a main sale line at the POS. Supports quantity-based and selection-based addons with dynamic pricing, mandatory dependencies, and bundle/wallet integration.

## Purpose

- Define add-on templates (Item AddOn master) with multiple configurable lines
- Each line can be a **fixed-quantity** addon, a **quantity picker** (`plusminus`), or a **select-one** (`radio`) from predefined options
- Lines support per-unit pricing, discount %, date-range availability, and mandatory enforcement
- Integration events allow custom **before-insert logic** (e.g., `UnitPriceFromMaster` for dynamic pricing)
- **Bundle tracking** for posted entries via `POSEntryLineBundleId`/`POSEntryLineBndlAsset` linking to external assets (e.g., tickets)
- **Wallet integration** via `AddToWallet` and `NPR NPDesigner` layout templates
- **Translation support** for addon descriptions and categories via `Item Addon Translation`

## Key Tables (11)

| Table | ID | Purpose |
|-------|----|---------|
| `NPR NpIa Item AddOn` | 6151125 | Add-on master (header) |
| `NPR NpIa Item AddOn Line` | 6151126 | Add-on lines (quantity or select type) |
| `NPR NpIa ItemAddOn Line Opt.` | 6151128 | Select-type line options (item+variant choices) |
| `NPR NpIa ItemAddOn Line Setup` | 6151129 | Per-line setup data (e.g., unit price % from master) |
| `NPR NpIa SaleLinePOS AddOn` | 6151127 | Links POS sale lines to their addon definition |
| `NPR NpIa POSEntrySaleLineAddOn` | 6151141 | Posted entry linking (sale line → addon line) |
| `NPR NpIa POSEntryLineBundleId` | 6151142 | Bundle reference numbers for posted bundles |
| `NPR NpIa POSEntryLineBndlAsset` | 6151143 | Bundle asset links (e.g., tickets) |
| `NPR NpIa Item AddOn Category` | 6151267 | Categorization for addon lines |
| `NPR NpIa ItemAddOn Cat. Trans.` | 6151268 | Category translations |
| `NPR Item Addon Translation` | 6059912 | Generic description translation for addon entities |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR NpIa Item AddOn` | 6059900 | Public facade — entry point for POS integration |
| `NPR NpIa Item AddOn Mgt.` | 6151125 | Internal implementation (POS integration logic) |
| `NPR NpIa Before Ins. Func.` | 6151129 | Before-insert subscribers (e.g., UnitPriceFromMaster) |
| `NPR NpIa Item AddOn Line Setup` | 6059923 | Helper for unit price % from master |

## Integration Points

- Deep POS integration via event subscribers on `NPR POS Sale Line` (OnBeforeDelete, OnAfterDelete, OnBeforeSetQuantity, OnAfterSetQuantity)
- Data source extension for `NPR POS Data Management` — adds `Item AddOn` boolean column to sale line data
- Hook into `NPR POS Create Entry` for serial number propagation
- Line formatting via `NPR POS Ext.: Line Format.` — dependent lines shown in *italic*
- Bundle asset lookup for `NPR TM Ticket` and other external tables
