---
type: reference
tags: [np-retail, inventory, item-addon, tables, codeunits, pages, events, queries]
relates: [inventory/item-addon/overview.md]
updated: 2026-05-09
---

# Item AddOn — API Reference

## Tables

### Table 6151125 "NPR NpIa Item AddOn"

Add-on master. Fields: `No.`, `Description`, `Enabled`, `Comment POS Info Code`, `WalletTemplate`, `Simplified Descriptions on POS`, `NPDesignerTemplateId`, `NPDesignerTemplateLabel`.

Triggers:
- **OnInsert**: Auto-assigns sequential `No.` (000001+)
- **OnDelete**: Cascades delete to lines and line options

### Table 6151126 "NPR NpIa Item AddOn Line"

Add-on line definition. Key fields:

| Field | Type | Purpose |
|-------|------|---------|
| `AddOn No.` | Code[20] | FK to Item AddOn |
| `Line No.` | Integer | Line identifier |
| `Category Code` | Code[20] | FK to Category |
| `Sort Key` | Integer | Ordering |
| `Type` | Option | `Quantity` or `Select` |
| `Item No.` | Code[20] | Base item (for Quantity type) |
| `Variant Code` | Code[10] | Variant |
| `Description`, `Description 2` | Text | Display text |
| `Unit Price` | Decimal | Override price |
| `Use Unit Price` | Option | `Non-Zero` / `Always` |
| `Discount %` | Decimal | Line discount |
| `DiscountAmount` | Decimal | Flat discount |
| `Comment Enabled` | Boolean | Allow free-text comment |
| `Quantity` | Decimal | Default/requested qty |
| `Fixed Quantity` | Boolean | Non-editable qty (switch UI) |
| `Per Unit` | Boolean | Multiply qty by master line qty |
| `Mandatory` | Boolean | Cannot be removed |
| `IncludeFromDate` / `IncludeUntilDate` | Date | Availability window |
| `AddToWallet` | Boolean | Wallet integration flag |
| `Before Insert Codeunit ID` | Integer | Plugin for custom pricing logic |
| `Before Insert Function` | Text[250] | Function name in plugin codeunit |
| `Copy Serial No.` | Boolean | Copy serial from master line |
| `Serial No.` / `Lot No.` | Code | Pre-assigned tracking |

**Triggers:**
- OnValidate(`Type`): Clears Item No. when switching to Select
- OnValidate(`Item No.`): Sets Unit Price and Description from Item; forces `Type=Quantity`
- OnDelete: Cascades to translations and line options
- OnInsert/Modify: Ensures `Item No.` is set for Quantity type

### Table 6151128 "NPR NpIa ItemAddOn Line Opt."

Select-type line options. Key fields: `AddOn No.`, `AddOn Line No.`, `Line No.`, `Item No.`, `Variant Code`, `Description`, `Description 2`, `Quantity`, `Fixed Quantity`, `Use Unit Price`, `Unit Price`, `Discount %`, `Per Unit`.

OnValidate(`Item No.`): Fills Unit Price, Description from Item. OnDelete: Cleans up translations.

### Table 6151129 "NPR NpIa ItemAddOn Line Setup"

Per-line setup data. Fields: `AddOn No.`, `AddOn Line No.`, `Unit Price % from Master` (Decimal, 0-5 decimal places).

### Table 6151127 "NPR NpIa SaleLinePOS AddOn"

Links active POS sale lines to addon definitions. Fields: `Register No.`, `Sales Ticket No.`, `Sale Type`, `Sale Date`, `Sale Line No.`, `Line No.`, `Applies-to Line No.`, `AddOn No.`, `AddOn Line No.`, `Fixed Quantity`, `Per Unit`, `DiscountPercent`, `DiscountAmount`, `Mandatory`, `Copy Serial No.`, `AddToWallet`, `AddOnItemNo`.

### Table 6151141 "NPR NpIa POSEntrySaleLineAddOn"

Posted entry linking. Fields: `POSEntrySaleLineId` (Guid), `PosEntrySaleLineNo`, `AppliesToSaleLineId`, `AppliesToSaleLineNo`, `AddOnNo`, `AddOnLineNo`, `AddToWallet`, `AddOnItemNo`.

### Table 6151142 "NPR NpIa POSEntryLineBundleId"

Posted bundle reference. Fields: `POSEntrySaleLineId`, `Bundle` (Integer), `ReferenceNumber` (Text[50]).

### Table 6151143 "NPR NpIa POSEntryLineBndlAsset"

Posted bundle assets. Fields: `POSEntrySaleLineId`, `Bundle`, `AssetTableId`, `AssetSystemId`, `AppliesToSaleLineId`.

### Table 6151267 "NPR NpIa Item AddOn Category"

Add-on categorization. Fields: `Code`, `Sort Key`. OnInsert: auto-assigns Sort Key (+10000). OnDelete: cascades to translations.

### Table 6151268 "NPR NpIa ItemAddOn Cat. Trans."

Category translation. Fields: `Category Code`, `Language Code`, `Title`, `Description`.

### Table 6059912 "NPR Item Addon Translation"

Generic translation table. Fields: `External Table SystemId` (Guid), `Language Code`, `Description`.

## Codeunits

### Codeunit 6059900 "NPR NpIa Item AddOn" (Public Facade)

Entry point for POS integration. Provides:
- `InsertPOSAddOnLines(ItemAddOn, SelectedAddOnLines, POSSession, AppliesToLineNo, CompulsoryAddOn): Boolean`
- `InsertMandatoryPOSAddOnLinesSilent(...): Boolean`
- `GetUnitPricePctFromMaster(AddOnNo, AddOnLineNo): Decimal`
- `UnitPriceFromMasterRunSetup(AddOnNo, AddOnLineNo)`
- `BeforeInsertPOSAddOnLine(SalePOS, AppliesToLineNo, var NpIaItemAddOnLine)` — fires integration event
- `FilterItemAddOnLine`, `FilterAttachedItemAddonLines`, `FilterSaleLinePOS2ItemAddOnPOSLine`, `CopyItemAddOnLinesToTempBeforeInsert`

**Integration Events (all with `false, false`):**
| Event | Purpose |
|-------|---------|
| `OnBeforeInsertPOSAddOnLine` | Custom pricing/modification before line insert |
| `OnCheckIfHasSetupBeforeInsertSetup` | Query if line has setup data |
| `OnRunBeforeInsertSetup` | Open setup dialog for line |
| `OnFilterAttachedItemAddonLines` | Custom filtering of attached addon lines |
| `OnFilterSaleLinePOS2ItemAddOnPOSLine` | Custom filtering of addon→sale line link |
| `OnFilterItemAddOnLine` | Custom filtering of available addon lines |
| `OnCopyItemAddOnLinesToTempBeforeInsert` | Custom copy logic |

### Codeunit 6151125 "NPR NpIa Item AddOn Mgt." (Internal)

Core implementation. Key procedures:
- `GenerateItemAddOnConfigJson(...): JsonObject` — builds UI config JSON for POS frontend
- `InsertPOSAddOnLines(...): Boolean` — parses user selections, inserts addon lines
- `InsertMandatoryPOSAddOnLines(...): Boolean` — auto-inserts mandatory lines
- `InsertPOSAddOnLine(...): Boolean` — single line insert with discount, serial, lot no.
- `FindItemAddOn(var SaleLinePOS, var ItemAddOn): Boolean` — resolves addon from sale line
- `UserInterfaceIsRequired(...): Boolean` — determines if POS should show selection UI
- `CopyItemAddOnLinesToTemp`, `FilterAttachedItemAddonLines`, `FilterSaleLinePOS2ItemAddOnPOSLine`

**Events subscribed (10+):**
| Event | Purpose |
|-------|---------|
| `Table NPR POS Sale Line - OnBeforeDeleteEvent` | Prevent delete of mandatory addon lines |
| `Codeunit NPR POSAction: Delete POS Line - OnBeforeDeleteSaleLinePOS` | Confirm delete with dependent lines |
| `Table NPR POS Sale Line - OnAfterDeleteEvent` | Cascade delete to addon link records and dependent sale lines |
| `Codeunit NPR POS Data Management - OnDiscoverDataSourceExtensions` | Register `ItemAddOn` data source extension |
| `Codeunit NPR POS Data Management - OnGetDataSourceExtension` | Define column schema |
| `Codeunit NPR POS Data Management - OnDataSourceExtensionReadData` | Read addon boolean for sale lines |
| `Codeunit NPR POS Create Entry - OnBeforeInsertPOSSalesLine` | Propagate serial numbers |
| `Codeunit NPR POS Sale Line - OnBeforeSetQuantity` | Block quantity changes on fixed/mandatory lines |
| `Codeunit NPR POS Sale Line - OnAfterSetQuantity` | Recalculate dependent line qty (per-unit lines) |
| `Codeunit NPR POS Ext.: Line Format. - OnGetLineStyle` | Set italic style for dependent lines |
| `Codeunit NPR POS Ext.: Line Format. - OnGetLineFormat` | Set indentation (obsolete) |

### Codeunit 6151129 "NPR NpIa Before Ins. Func."

Implements `UnitPriceFromMaster` — calculates addon price as a percentage of the master line's unit price. Subscribes to:
- `OnBeforeInsertPOSAddOnLine`
- `OnCheckIfHasSetupBeforeInsertSetup`
- `OnRunBeforeInsertSetup`
- `Table NPR NpIa Item AddOn Line - OnBeforeDeleteEvent`

### Codeunit 6059923 "NPR NpIa Item AddOn Line Setup"

Helper for `UnitPrice % from Master` field. Provides Get/Delete/Setup run.

## Pages

| Page | ID | Type | Source Table |
|------|----|------|-------------|
| NPR NpIa Item AddOns | (in _public) | List | NPR NpIa Item AddOn |
| NPR NpIa Item AddOnCard | (in _public) | Card | NPR NpIa Item AddOn |
| NPR NpIa Item AddOnSubform | (in _public) | ListPart | NPR NpIa Item AddOn Line |
| NPR NpIa Item AddOnSelVars | (in _public) | - | - |
| NPR NpIa ItemAddOn LineOpt | (in _public) | List | NPR NpIa ItemAddOn Line Opt. |
| NPR NpIa ItemAddOn LineSetup | (in _public) | Card | NPR NpIa ItemAddOn Line Setup |
| NPR Item Addon Translation | 6150931 | List | NPR Item Addon Translation |
| NPR NpIa Item AddOn Categories | 6248192 | List | NPR NpIa Item AddOn Category |
| NPR NpIa AddOn Cat. Trans. | 6248193 | List | NPR NpIa ItemAddOn Cat. Trans. |
| NPR NpIa POSEntryLineBundle | 6185036 | List | NPR NpIa POSEntryLineBundleId |
| NPR NpIa POSEntryLineBundleCrd | 6185037 | Card | NPR NpIa POSEntryLineBundleId |
| NPR NpIa POSEntryLineBundlePrt | 6185038 | ListPart | NPR NpIa POSEntryLineBndlAsset |
| NPIaItemAddOnSerialNos | (in _public) | - | - |
| NPIaItemAddOnLotNos | (in _public) | - | - |

## Queries

| Query | Source | Purpose |
|-------|--------|---------|
| NPR NpIaPOSEntrySaleLineAddOn | NPR NpIa POSEntrySaleLineAddOn | Posted addon line linkage |

## POS Integration Flow

1. **Item scanned** → POS checks `Item."NPR Item AddOn No."` → resolves `ItemAddOn` record
2. **UI config** → `GenerateItemAddOnConfigJson()` builds JSON with lines, options, quantities for frontend
3. **User selection** → POS returns JSON token with chosen values
4. **Line insertion** → `InsertPOSAddOnLines()` parses selection, calls `BeforeInsertPOSAddOnLine` (integration event), inserts sale lines + link records
5. **Posting** → `OnBeforeInsertPOSSalesLine` propagates serial numbers; bundle info written to bundle/asset tables
6. **Deletion** → Cascade rules prevent deletion of mandatory lines; confirmation for manual delete
