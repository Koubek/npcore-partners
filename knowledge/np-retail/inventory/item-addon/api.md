---
type: reference
tags: [inventory, item-addon, np-retail, tables, codeunits, pages, queries]
relates:
  - inventory/item-addon/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Item AddOn/ItemAddonTranslation.Page.al
  - Application/src/Item AddOn/ItemAddonTranslation.Table.al
  - Application/src/Item AddOn/NpIaAddOnCatTrans.Page.al
  - Application/src/Item AddOn/NpIaBeforeInsFunc.Codeunit.al
  - Application/src/Item AddOn/_public/NpIaItemAddOn.Codeunit.al
  - Application/src/Item AddOn/_public/NpIaItemAddOn.Table.al
  - Application/src/Item AddOn/_public/NpIaItemAddOnCard.Page.al
  - Application/src/Item AddOn/NpIaItemAddOnCategories.Page.al
  - Application/src/Item AddOn/NpIaItemAddOnCategory.Table.al
  - Application/src/Item AddOn/NpIaItemAddOnCatTrans.Table.al
  - Application/src/Item AddOn/_public/NpIaItemAddOnLine.Table.al
  - Application/src/Item AddOn/_public/NpIaItemAddOnLineOpt.Page.al
  - Application/src/Item AddOn/NpIaItemAddOnLineOpt.Table.al
  - Application/src/Item AddOn/NpIaItemAddOnLineSetup.Codeunit.al
  - Application/src/Item AddOn/_public/NpIaItemAddOnLineSetup.Page.al
  - Application/src/Item AddOn/NpIaItemAddOnLineSetup.Table.al
  - Application/src/Item AddOn/_public/NPIaItemAddOnLotNos.Page.al
  - Application/src/Item AddOn/NpIaItemAddOnMgt.Codeunit.al
  - Application/src/Item AddOn/_public/NpIaItemAddOns.Page.al
  - Application/src/Item AddOn/_public/NpIaItemAddOnSelVars.Page.al
  - Application/src/Item AddOn/_public/NPIaItemAddOnSerialNos.Page.al
  - Application/src/Item AddOn/_public/NpIaItemAddOnSubform.Page.al
  - Application/src/Item AddOn/NpIaPOSEntryLineBndlAsset.Table.al
  - Application/src/Item AddOn/NpIaPOSEntryLineBundle.Page.al
  - Application/src/Item AddOn/NpIaPOSEntryLineBundleCrd.Page.al
  - Application/src/Item AddOn/NpIaPOSEntryLineBundleId.Table.al
  - Application/src/Item AddOn/NpIaPOSEntryLineBundlePrt.Page.al
  - Application/src/Item AddOn/_public/NpIaPOSEntrySaleLineAddOn.Query.al
  - Application/src/Item AddOn/NpIaPOSEntrySaleLineAddOn.Table.al
  - Application/src/Item AddOn/_public/NpIaSaleLinePOSAddOn.Table.al
---

# Item Add On — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6059912 | "NPR Item Addon Translation" | Item Addon Translation | "External Table SystemId", "Language Code" | — |
| 6151125 | "NPR NpIa Item AddOn" | Item AddOn | "No." | — |
| 6151267 | "NPR NpIa Item AddOn Category" | Item AddOn Category | "Code" | — |
| 6151268 | "NPR NpIa ItemAddOn Cat. Trans." | Item AddOn Category Translation | "Category Code", "Language Code" | — |
| 6151126 | "NPR NpIa Item AddOn Line" | Item AddOn Line | "AddOn No.", "Line No." | — |
| 6151128 | "NPR NpIa ItemAddOn Line Opt." | Item AddOn Line Option | "AddOn No.", "AddOn Line No.", "Line No." | — |
| 6151129 | "NPR NpIa ItemAddOn Line Setup" | Item AddOn Line Option | "AddOn No.", "AddOn Line No." | — |
| 6151143 | "NPR NpIa POSEntryLineBndlAsset" | POS Entry Sale Line No. | POSEntrySaleLineId, Bundle, AssetTableId, AssetSystemId | — |
| 6151142 | "NPR NpIa POSEntryLineBundleId" | Item AddOn POS Entry Sale Line Bundle Id | POSEntrySaleLineId, Bundle | — |
| 6151141 | "NPR NpIa POSEntrySaleLineAddOn" | Item AddOn POS Entry Sale Line AddOn | POSEntrySaleLineId | — |
| 6151127 | "NPR NpIa SaleLinePOS AddOn" | Sale Line POS AddOn | "Register No.", "Sales Ticket No.", "Sale Type", "Sale Date", "Sale Line No.", "Line No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6151129 | "NPR NpIa Before Ins. Func." |  | UnitPriceFromMaster, UnitPriceFromMasterHasSetup, UnitPriceFromMasterRunSetup, OnBeforeDeleteAddOnLine, CurrCodeunitId | — |
| 6059900 | "NPR NpIa Item AddOn" |  | InsertPOSAddOnLines, InsertMandatoryPOSAddOnLinesSilent, GetUnitPricePctFromMaster, UnitPriceFromMasterRunSetup, DeleteSetup | — |
| 6059923 | "NPR NpIa Item AddOn Line Setup" |  | GetUnitPricePctFromMaster, UnitPriceFromMasterRunSetup, DeleteSetup | — |
| 6151125 | "NPR NpIa Item AddOn Mgt." |  | OnBeforeDeletePOSSaleLine, OnBeforeManualDeletePOSSaleLine, OnAfterDeletePOSSaleLine, DataSourceExtensionName, OnDiscover | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6150931 | "NPR Item Addon Translation" | Item Addon Translation | "NPR Item Addon Translation" | — |
| 6248193 | "NPR NpIa AddOn Cat. Trans." | Item AddOn Category Translations | "NPR NpIa ItemAddOn Cat. Trans." | — |
| 6151126 | "NPR NpIa Item AddOn Card" | Item AddOn Card | "NPR NpIa Item AddOn" | — |
| 6248192 | "NPR NpIa Item AddOn Categories" | Item AddOn Categories | "NPR NpIa Item AddOn Category" | — |
| 6151128 | "NPR NpIa ItemAddOn Line Opt." | Item AddOn Line Options | "NPR NpIa ItemAddOn Line Opt." | — |
| 6151129 | "NPR NpIa ItemAddOn Line Setup" | Item AddOn Line Setup | "NPR NpIa ItemAddOn Line Setup" | — |
| 6151475 | "NPR NpIa ItemAddOn Lot Nos." | Insert Lot No. | "NPR NpIa Item AddOn Line" | — |
| 6151125 | "NPR NpIa Item AddOns" | Item AddOns | "NPR NpIa Item AddOn" | — |
| 6151119 | "NPR NpIa ItemAddOn Sel. Vars." | Select Variants | "NPR NpIa Item AddOn Line" | — |
| 6150613 | "NPR NpIa ItemAddOn Serial Nos." | Select Serial No. | "NPR NpIa Item AddOn Line" | — |
| 6151127 | "NPR NpIa Item AddOn Subform" | Lines | "NPR NpIa Item AddOn Line" | — |
| 6185036 | "NPR NpIa POSEntryLineBundle" | Item AddOn POS Entry Sale Line Bundles | "NPR NpIa POSEntryLineBundleId" | — |
| 6185037 | "NPR NpIa POSEntryLineBundleCrd" | Item AddOn POS Entry Sale Line Bundle | "NPR NpIa POSEntryLineBundleId" | — |
| 6185038 | "NPR NpIa POSEntryLineBundlePrt" | Item AddOn POS Entry Sale Line Bundle Assets | "NPR NpIa POSEntryLineBndlAsset" | — |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014497 | "NPR NpIa POSEntrySaleLineAddOn" |  | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: ItemAddonTranslation.Page.al, ItemAddonTranslation.Table.al, NpIaAddOnCatTrans.Page.al, NpIaBeforeInsFunc.Codeunit.al, NpIaItemAddOn.Codeunit.al, NpIaItemAddOn.Table.al, NpIaItemAddOnCard.Page.al, NpIaItemAddOnCategories.Page.al, NpIaItemAddOnCategory.Table.al, NpIaItemAddOnCatTrans.Table.al, NpIaItemAddOnLine.Table.al, NpIaItemAddOnLineOpt.Page.al, NpIaItemAddOnLineOpt.Table.al, NpIaItemAddOnLineSetup.Codeunit.al, NpIaItemAddOnLineSetup.Page.al, NpIaItemAddOnLineSetup.Table.al, NPIaItemAddOnLotNos.Page.al, NpIaItemAddOnMgt.Codeunit.al, NpIaItemAddOns.Page.al, NpIaItemAddOnSelVars.Page.al, NPIaItemAddOnSerialNos.Page.al, NpIaItemAddOnSubform.Page.al, NpIaPOSEntryLineBndlAsset.Table.al, NpIaPOSEntryLineBundle.Page.al, NpIaPOSEntryLineBundleCrd.Page.al, NpIaPOSEntryLineBundleId.Table.al, NpIaPOSEntryLineBundlePrt.Page.al, NpIaPOSEntrySaleLineAddOn.Query.al, NpIaPOSEntrySaleLineAddOn.Table.al, NpIaSaleLinePOSAddOn.Table.al
