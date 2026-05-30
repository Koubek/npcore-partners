---
type: reference
tags: [pos, pos-discount, np-retail, tables, codeunits, pages, enums, queries]
relates:
  - pos/pos-discount/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Discount/BenefitLists/BenefitItemsCollection.Enum.al
  - Application/src/POS Discount/CampaignDiscLineList.Page.al
  - Application/src/POS Discount/_public/CampaignDiscount.Page.al
  - Application/src/POS Discount/_public/CampaignDiscountLines.Page.al
  - Application/src/POS Discount/CampaignDiscountList.Page.al
  - Application/src/POS Discount/CampaignItemsPeriod.Query.al
  - Application/src/POS Discount/CustomerDiscountMgt.Codeunit.al
  - Application/src/POS Discount/DiscGroupingType.Enum.al
  - Application/src/POS Discount/DiscountActivities.Page.al
  - Application/src/POS Discount/DiscountCalcArray.Codeunit.al
  - Application/src/POS Discount/DiscountCalcBuffer.Table.al
  - Application/src/POS Discount/DiscountCalcBufferUtils.Codeunit.al
  - Application/src/POS Discount/DiscountFactBox.Page.al
  - Application/src/POS Discount/DiscountPeriodType.Enum.al
  - Application/src/POS Discount/_public/DiscountPriority.Table.al
  - Application/src/POS Discount/_public/DiscountPriorityList.Page.al
  - Application/src/POS Discount/DiscStoreGroup.Table.al
  - Application/src/POS Discount/DiscStoreGroupCard.Page.al
  - Application/src/POS Discount/DiscStoreGroupLine.Table.al
  - Application/src/POS Discount/DiscStoreGroupLines.Page.al
  - Application/src/POS Discount/DiscStoreGroups.Page.al
  - Application/src/POS Discount/DiscStoreGroupUtils.Codeunit.al
  - Application/src/POS Discount/BenefitLists/ItemBenefitListCard.Page.al
  - Application/src/POS Discount/BenefitLists/ItemBenefitListHeader.Table.al
  - Application/src/POS Discount/BenefitLists/ItemBenefitListLine.Table.al
  - Application/src/POS Discount/BenefitLists/ItemBenefitLists.Page.al
  - Application/src/POS Discount/BenefitLists/ItemBenefitListSubform.Page.al
  - Application/src/POS Discount/BenefitLists/ItemBenefListHeadUtils.Codeunit.al
  - Application/src/POS Discount/BenefitLists/ItemBenefListLineUtils.Codeunit.al
  - Application/src/POS Discount/_public/MixDiscountCalcMgt.Codeunit.al
  - Application/src/POS Discount/MixedDiscItemsMix0.Query.al
  - Application/src/POS Discount/MixedDiscItemsMix1.Query.al
  - Application/src/POS Discount/MixedDiscItemsMix2.Query.al
  - Application/src/POS Discount/_public/MixedDiscount.Page.al
  - Application/src/POS Discount/_public/MixedDiscount.Table.al
  - Application/src/POS Discount/MixedDiscountLevel.Table.al
  - Application/src/POS Discount/MixedDiscountLevels.Page.al
  - Application/src/POS Discount/_public/MixedDiscountLine.Table.al
  - Application/src/POS Discount/MixedDiscountLines.Page.al
  - Application/src/POS Discount/MixedDiscountList.Page.al
  - Application/src/POS Discount/MixedDiscountManagement.Codeunit.al
  - Application/src/POS Discount/MixedDiscountPartList.Page.al
  - Application/src/POS Discount/MixedDiscountType.Enum.al
  - Application/src/POS Discount/_public/MixedDiscPrioBuffer.Table.al
  - Application/src/POS Discount/MixedDiscTimeInterv.Page.al
  - Application/src/POS Discount/MixedDiscTimeInterv.Table.al
  - Application/src/POS Discount/_public/PeriodDiscount.Table.al
  - Application/src/POS Discount/PeriodDiscountItems.Query.al
  - Application/src/POS Discount/_public/PeriodDiscountLine.Table.al
  - Application/src/POS Discount/PeriodDiscountManagement.Codeunit.al
  - Application/src/POS Discount/_public/POSSalesDiscCalcMgt.Codeunit.al
  - Application/src/POS Discount/QuantityDiscountCard.Page.al
  - Application/src/POS Discount/QuantityDiscountHeader.Table.al
  - Application/src/POS Discount/QuantityDiscountLine.Page.al
  - Application/src/POS Discount/QuantityDiscountLine.Table.al
  - Application/src/POS Discount/QuantityDiscountList.Page.al
  - Application/src/POS Discount/QuantityDiscountMgt.Codeunit.al
  - Application/src/POS Discount/_public/RetailCampaign.Page.al
  - Application/src/POS Discount/RetailCampaignCalcMgt.Codeunit.al
  - Application/src/POS Discount/_public/RetailCampaignHeader.Table.al
  - Application/src/POS Discount/_public/RetailCampaignItems.Table.al
  - Application/src/POS Discount/_public/RetailCampaignLine.Table.al
  - Application/src/POS Discount/RetailCampaigns.Page.al
  - Application/src/POS Discount/RetailCampaignSubform.Page.al
  - Application/src/POS Discount/RetailCampgnItemSubform.Page.al
  - Application/src/POS Discount/RetailCampgnItemTotals.Query.al
  - Application/src/POS Discount/RetailCmpgnItemEntries.Query.al
  - Application/src/POS Discount/RetailCmpgnItemsMix0.Query.al
  - Application/src/POS Discount/RetailCmpgnItemsMix1.Query.al
  - Application/src/POS Discount/RetailCmpgnItemsMix2.Query.al
  - Application/src/POS Discount/Total Discount/TotalDiscBenefitList.Page.al
  - Application/src/POS Discount/Total Discount/TotalDiscBenefitType.Enum.al
  - Application/src/POS Discount/Total Discount/TotalDiscBenefitUtils.Codeunit.al
  - Application/src/POS Discount/Total Discount/TotalDiscBenItemBuffer.Table.al
  - Application/src/POS Discount/Total Discount/TotalDiscBenValueType.Enum.al
  - Application/src/POS Discount/Total Discount/TotalDiscHeaderUtils.Codeunit.al
  - Application/src/POS Discount/Total Discount/TotalDiscLineUtils.Codeunit.al
  - Application/src/POS Discount/Total Discount/TotalDiscountAmountCalc.Enum.al
  - Application/src/POS Discount/Total Discount/TotalDiscountApplication.Enum.al
  - Application/src/POS Discount/Total Discount/TotalDiscountBenefit.Table.al
  - Application/src/POS Discount/Total Discount/TotalDiscountCard.Page.al
  - Application/src/POS Discount/Total Discount/TotalDiscountHeader.Table.al
  - Application/src/POS Discount/Total Discount/TotalDiscountLine.Table.al
  - Application/src/POS Discount/Total Discount/TotalDiscountLines.Page.al
  - Application/src/POS Discount/Total Discount/TotalDiscountLineType.Enum.al
  - Application/src/POS Discount/Total Discount/TotalDiscountList.Page.al
  - Application/src/POS Discount/Total Discount/TotalDiscountManagement.Codeunit.al
  - Application/src/POS Discount/Total Discount/TotalDiscountStatus.Enum.al
  - Application/src/POS Discount/Total Discount/TotalDiscountSubform.Page.al
  - Application/src/POS Discount/Total Discount/TotalDiscTimeInterv.Page.al
  - Application/src/POS Discount/Total Discount/TotalDiscTimeInterv.Table.al
  - Application/src/POS Discount/Total Discount/TotDiscTimeIntervUtils.Codeunit.al
---

# POS Discount — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6060029 | "NPR Discount Calc. Buffer" | Discount Calc Buffer | "Entry No." | — |
| 6014417 | "NPR Discount Priority" | Discount Priority | "Table ID" | — |
| 6059936 | "NPR Disc. Store Group" | Discount Store Group | "Code" | — |
| 6059938 | "NPR Disc. Store Group Line" | Discount Store Group Line | "Disc. Store Group Code", "POS Store Group Code" | — |
| 6060001 | "NPR Item Benefit List Header" | Item Benefit List Header | Code | — |
| 6060002 | "NPR Item Benefit List Line" | Item Benefit List Line | "List Code", "Line No." | — |
| 6014411 | "NPR Mixed Discount" | Mixed Discount | "Code" | — |
| 6014427 | "NPR Mixed Discount Level" | Mixed Discount Level | "Mixed Discount Code", Quantity | — |
| 6014412 | "NPR Mixed Discount Line" | Mixed Discount Line | "Code", "Disc. Grouping Type", "No.", "Variant Code" | — |
| 6014421 | "NPR Mixed Disc. Prio. Buffer" | Item Amount | Priority, "Unit Price", "Item No.", "Variant Code" | — |
| 6014420 | "NPR Mixed Disc. Time Interv." | Active Time Interval | "Mix Code", "Line No." | — |
| 6014413 | "NPR Period Discount" | Period Discount | "Code" | — |
| 6014414 | "NPR Period Discount Line" | Period Discount Line | "Code", "Item No.", "Variant Code" | — |
| 6014439 | "NPR Quantity Discount Header" | Multiple Price Header | "Item No.", "Main No." | — |
| 6014415 | "NPR Quantity Discount Line" | Multiple Unit Price | "Item No.", "Main no.", Quantity | — |
| 6014610 | "NPR Retail Campaign Header" | Retail Campaign Header | "Code" | — |
| 6014612 | "NPR Retail Campaign Items" | Period Discount Items | "Retail Campaign Code", "Line No." | — |
| 6014611 | "NPR Retail Campaign Line" | Retail Campaign Line | "Campaign Code", "Line No." | — |
| 6059879 | "NPR Total Disc Ben Item Buffer" | Entry No. | "Entry No." | — |
| 6059878 | "NPR Total Discount Benefit" | Total Discount Benefit | "Total Discount Code", "Line No." | — |
| 6059874 | "NPR Total Discount Header" | Total Discount Header | "Code" | — |
| 6059875 | "NPR Total Discount Line" | Total Discount Line | "Total Discount Code", "Line No." | — |
| 6059876 | "NPR Total Disc. Time Interv." | Active Time Interval | "Total Discount Code", "Line No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6014433 | "NPR Customer Discount Mgt." |  | ApplyCustomerDiscount, ApplyDiscountOnLine, ApplyCustomerDiscountOnLine, OnInitDiscountPriority, OnApplyDiscount | — |
| 6151477 | "NPR Discount Calc Array" |  | SetSaleLinePOSBuffer, GetSaleLinePOSBuffer, ClearSaleLinePOSBuffer | — |
| 6151476 | "NPR Discount Calc Buffer Utils" |  | GetLastEntryNo, CopyInfoFromMixDiscountLine, CopyInfoFromPOSSaleLine, FillMixDiscountCaclulationInformation, CopyDiscountBuffer | — |
| 6151124 | "NPR Disc. Store Group Utils" |  | IsStoreValidForDiscount | — |
| 6151339 | "NPR Item Benef List Head Utils" |  | DeleteLines, CheckIfListPartOfActiveTotalDiscount, GetBenefitItemListLinesLastLineNo | — |
| 6151338 | "NPR Item Benef List Line Utils" |  | UpdateItemFields, CheckIfListPartOfActiveTotalDiscount | — |
| 6014681 | "NPR Mix Discount Calc. Mgt." |  | CalculateMixedDiscountLine, CalculateMixedDiscountLine, CalculateMixedDiscountLine, CalculateMinimumMultipleLevelQuantity, GetCalculationTempPosSalesLineId | — |
| 6014416 | "NPR Mixed Discount Management" |  | ApplyMixedDiscounts, ApplyMixDiscounts, UpdateAppliedLinesFromTriggeredLine, FindPotentiallyImpactedMixesAndLines, FindImpactedMixedDiscoutnsAndLines | — |
| 6014415 | "NPR Period Discount Management" |  | ApplyPeriodDiscounts, ApplyDiscountOnLine, ApplyPeriodDiscountOnLine, ShouldUseCustomerVATPostingGroup, ShouldPerformVATConversionWithStoreSetup | — |
| 6014455 | "NPR POS Sales Disc. Calc. Mgt." |  | RecalculateAllSaleLinePOS, OnAfterInsertSaleLinePOS, OnAfterModifySaleLinePOS, OnAfterDeleteSaleLinePOS, OnAfterInsertSaleLinePOSCoupon | InitDiscountPriority, ApplyDiscount, ApplyDiscountTotal |
| 6014432 | "NPR Quantity Discount Mgt." |  | ApplyQuantityDiscounts, GetQuantityDiscounts, GetOrInit, GetNoSeries, OnInitDiscountPriority | — |
| 6014614 | "NPR Retail Campaign Calc. Mgt." |  | CalcCostAmount, CalcProfit, CalcProfitPct, CalcSalesAmount, DrilldownItemEntries | — |
| 6151080 | "NPR Total Disc Benefit Utils" |  | CheckNoEmpty, CheckVariantCodeEmpty, UpdateDescription, CheckValueType, CheckValue | — |
| 6151079 | "NPR Total Disc. Header Utils" |  | DeleteRelatedRecord, DeleteDiscountLines, DeleteTotalBenefits, DeleteTotalDiscountTimeInterval, UpdatePeriodDates | — |
| 6151078 | "NPR Total Disc. Line Utils" |  | UpdateHaderModifyInformation, UpdateLineWithHeaderInformation, UpdateLineNoInformation, CheckIfTotalDiscountEditable, ClearTypeRelatedFields | — |
| 6151077 | "NPR Total Discount Management" |  | GetNoSeries, GetOrInit, GetLowestDiscountPriority, DiscSourceTableId, DiscCalcCodeunitId | — |
| 6151271 | "NPR Tot Disc Time Interv Utils" |  | UpdatePeriodDescription, AppendPeriodDescription, CheckIfTotalDiscountEditable | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6059878 | "NPR Campaign Disc. Line List" | Period Discount Lines | "NPR Period Discount Line" | — |
| 6014453 | "NPR Campaign Discount" | Period Discount | "NPR Period Discount" | — |
| 6014454 | "NPR Campaign Discount Lines" | Period Discount Lines | "NPR Period Discount Line" | — |
| 6014455 | "NPR Campaign Discount List" | Period Discount List | "NPR Period Discount" | — |
| 6059987 | "NPR Discount Activities" | Discount Activities | "NPR Discount Cue" | — |
| 6014614 | "NPR Discount FactBox" | Discount FactBox | "Item" | — |
| 6014407 | "NPR Discount Priority List" | Discount Priority List | "NPR Discount Priority" | — |
| 6150958 | "NPR Disc. Store Group Card" | Discount Store Group | "NPR Disc. Store Group" | — |
| 6150960 | "NPR Disc. Store Group Lines" | Discount Store Group Lines | "NPR Disc. Store Group Line" | — |
| 6150961 | "NPR Disc. Store Groups" | Discount Store Groups | "NPR Disc. Store Group" | — |
| 6151091 | "NPR Item Benefit List Card" | Item Benefit List Card | "NPR Item Benefit List Header" | — |
| 6151093 | "NPR Item Benefit Lists" | Item Benefit Lists | "NPR Item Benefit List Header" | — |
| 6151092 | "NPR Item Benefit List Subform" | Item Benefit List Subform | "NPR Item Benefit List Line" | — |
| 6014450 | "NPR Mixed Discount" | Mix Discount | "NPR Mixed Discount" | — |
| 6014553 | "NPR Mixed Discount Levels" | Mix Discount Levels | "NPR Mixed Discount Level" | — |
| 6014451 | "NPR Mixed Discount Lines" | Mix Discount Lines | "NPR Mixed Discount Line" | — |
| 6014452 | "NPR Mixed Discount List" | Mix Discount List | "NPR Mixed Discount" | — |
| 6014447 | "NPR Mixed Discount Part List" | Mixed Discount Combination Parts | "NPR Mixed Discount" | — |
| 6014448 | "NPR Mixed Disc. Time Interv." | Active Time Intervals | "NPR Mixed Disc. Time Interv." | — |
| 6014466 | "NPR Quantity Discount Card" | Multiple Price Header | "NPR Quantity Discount Header" | — |
| 6014444 | "NPR Quantity Discount Line" | Multiple Unit Price | "NPR Quantity Discount Line" | — |
| 6014467 | "NPR Quantity Discount List" | Quantity Discount List | "NPR Quantity Discount Header" | — |
| 6014611 | "NPR Retail Campaign" | Retail Campaign | "NPR Retail Campaign Header" | — |
| 6014610 | "NPR Retail Campaigns" | Retail Campaigns | "NPR Retail Campaign Header" | — |
| 6014612 | "NPR Retail Campaign Subform" | Discounts | "NPR Retail Campaign Line" | — |
| 6014613 | "NPR Retail Campgn.Item Subform" | Retail Campaign Items | "NPR Retail Campaign Items" | — |
| 6150910 | "NPR Total Disc. Benefit List" | Total Discount Benefit List | "NPR Total Discount Benefit" | — |
| 6150909 | "NPR Total Discount Card" | Total Discount Card | "NPR Total Discount Header" | — |
| 6151083 | "NPR Total Discount Lines" | Total Discount Lines | "NPR Total Discount Line" | — |
| 6150908 | "NPR Total Discount List" | Total Discount List | "NPR Total Discount Header" | — |
| 6150907 | "NPR Total Discount Subform" | NPR Total Discount Subform | "NPR Total Discount Line" | — |
| 6150899 | "NPR Total Disc. Time Interv." | Active Time Intervals | "NPR Total Disc. Time Interv." | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014567 | "NPR Benefit Items Collection" | All | All, No Input Needed, Input Needed |
| 6014412 | "NPR Disc. Grouping Type" | Item | Item, Item Group, Item Disc. Group, Mix Discount |
| 6014557 | "NPR Discount Period Type" |  | Every Day, Weekly |
| 6014411 | "NPR Mixed Discount Type" | Total Amount per Min. Qty. | Total Amount per Min. Qty., Total Discount %, Total Discount Amt. per Min. Qty., Priority Discount per Min. Qty, Multiple Discount Levels |
| 6014559 | "NPR Total Disc. Benefit Type" | Discount | Discount, Item, Item List |
| 6014558 | "NPR Total Disc Ben Value Type" | Percent | Percent, Amount |
| 6014569 | "NPR Total Discount Amount Calc" | Discount Filters | Discount Filters, No Filters |
| 6014571 | "NPR Total Discount Application" | Discount Filters | Discount Filters, No Filters |
| 6014556 | "NPR Total Discount Line Type" | Item | Item, Item Category, Vendor, All |
| 6014555 | "NPR Total Discount Status" | Pending | Pending, Active, Closed |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014612 | "NPR Campaign Items (Period)" | Campaign Items (Period) | — |
| 6014617 | "NPR Mixed Disc. Items Mix 0" | Mixed Disc. Items Mix 0 | — |
| 6014618 | "NPR Mixed Disc. Items Mix 1" | Mixed Disc. Items Mix 1 | — |
| 6014619 | "NPR Mixed Disc. Items Mix 2" | Mixed Disc. Items Mix 2 | — |
| 6014616 | "NPR Period Discount Items" | Period Discount Items | — |
| 6014610 | "NPR Retail Campgn. Item Totals" | Retail Campaign Item Totals | — |
| 6014611 | "NPR Retail Cmpgn. Item Entries" | Retail Campaign Item Entries | — |
| 6014613 | "NPR Retail Cmpgn.Items Mix 0" | Retail Cmpgn.Items Mix 0 | — |
| 6014614 | "NPR Retail Cmpgn. Items Mix 1" | Retail Cmpgn. Items Mix 1 | — |
| 6014615 | "NPR Retail Cmpgn Items Mix 2" | Retail Cmpgn Items Mix 2 | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: BenefitItemsCollection.Enum.al, CampaignDiscLineList.Page.al, CampaignDiscount.Page.al, CampaignDiscountLines.Page.al, CampaignDiscountList.Page.al, CampaignItemsPeriod.Query.al, CustomerDiscountMgt.Codeunit.al, DiscGroupingType.Enum.al, DiscountActivities.Page.al, DiscountCalcArray.Codeunit.al, DiscountCalcBuffer.Table.al, DiscountCalcBufferUtils.Codeunit.al, DiscountFactBox.Page.al, DiscountPeriodType.Enum.al, DiscountPriority.Table.al, DiscountPriorityList.Page.al, DiscStoreGroup.Table.al, DiscStoreGroupCard.Page.al, DiscStoreGroupLine.Table.al, DiscStoreGroupLines.Page.al, DiscStoreGroups.Page.al, DiscStoreGroupUtils.Codeunit.al, ItemBenefitListCard.Page.al, ItemBenefitListHeader.Table.al, ItemBenefitListLine.Table.al, ItemBenefitLists.Page.al, ItemBenefitListSubform.Page.al, ItemBenefListHeadUtils.Codeunit.al, ItemBenefListLineUtils.Codeunit.al, MixDiscountCalcMgt.Codeunit.al, MixedDiscItemsMix0.Query.al, MixedDiscItemsMix1.Query.al, MixedDiscItemsMix2.Query.al, MixedDiscount.Page.al, MixedDiscount.Table.al, MixedDiscountLevel.Table.al, MixedDiscountLevels.Page.al, MixedDiscountLine.Table.al, MixedDiscountLines.Page.al, MixedDiscountList.Page.al, MixedDiscountManagement.Codeunit.al, MixedDiscountPartList.Page.al, MixedDiscountType.Enum.al, MixedDiscPrioBuffer.Table.al, MixedDiscTimeInterv.Page.al, MixedDiscTimeInterv.Table.al, PeriodDiscount.Table.al, PeriodDiscountItems.Query.al, PeriodDiscountLine.Table.al, PeriodDiscountManagement.Codeunit.al, POSSalesDiscCalcMgt.Codeunit.al, QuantityDiscountCard.Page.al, QuantityDiscountHeader.Table.al, QuantityDiscountLine.Page.al, QuantityDiscountLine.Table.al, QuantityDiscountList.Page.al, QuantityDiscountMgt.Codeunit.al, RetailCampaign.Page.al, RetailCampaignCalcMgt.Codeunit.al, RetailCampaignHeader.Table.al, RetailCampaignItems.Table.al, RetailCampaignLine.Table.al, RetailCampaigns.Page.al, RetailCampaignSubform.Page.al, RetailCampgnItemSubform.Page.al, RetailCampgnItemTotals.Query.al, RetailCmpgnItemEntries.Query.al, RetailCmpgnItemsMix0.Query.al, RetailCmpgnItemsMix1.Query.al, RetailCmpgnItemsMix2.Query.al, TotalDiscBenefitList.Page.al, TotalDiscBenefitType.Enum.al, TotalDiscBenefitUtils.Codeunit.al, TotalDiscBenItemBuffer.Table.al, TotalDiscBenValueType.Enum.al, TotalDiscHeaderUtils.Codeunit.al, TotalDiscLineUtils.Codeunit.al, TotalDiscountAmountCalc.Enum.al, TotalDiscountApplication.Enum.al, TotalDiscountBenefit.Table.al, TotalDiscountCard.Page.al, TotalDiscountHeader.Table.al, TotalDiscountLine.Table.al, TotalDiscountLines.Page.al, TotalDiscountLineType.Enum.al, TotalDiscountList.Page.al, TotalDiscountManagement.Codeunit.al, TotalDiscountStatus.Enum.al, TotalDiscountSubform.Page.al, TotalDiscTimeInterv.Page.al, TotalDiscTimeInterv.Table.al, TotDiscTimeIntervUtils.Codeunit.al
