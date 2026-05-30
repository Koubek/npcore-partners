---
type: reference
tags: [inventory, coupon, np-retail, tables, codeunits, pages, enums, queries, xmlports]
relates:
  - inventory/coupon/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Coupon/CouponLineApplBuffer.Table.al
  - Application/src/Coupon/NpDcActCoupItemList.Page.al
  - Application/src/Coupon/NpDcApplyExtraItemQty.Codeunit.al
  - Application/src/Coupon/NpDcArchCoupon.Table.al
  - Application/src/Coupon/NpDcArchCouponCard.Page.al
  - Application/src/Coupon/NpDcArchCouponEntries.Page.al
  - Application/src/Coupon/_public/NpDcArchCouponEntry.Codeunit.al
  - Application/src/Coupon/_public/NpDcArchCouponEntry.Query.al
  - Application/src/Coupon/NpDcArchCouponEntry.Table.al
  - Application/src/Coupon/_public/NpDcArchCouponEntryBuff.Table.al
  - Application/src/Coupon/NpDcArchCoupons.Page.al
  - Application/src/Coupon/_public/NpDcCoupon.Table.al
  - Application/src/Coupon/NpDcCouponCard.Page.al
  - Application/src/Coupon/NpDcCouponEntries.Page.al
  - Application/src/Coupon/_public/NpDcCouponEntry.Query.al
  - Application/src/Coupon/NpDcCouponEntry.Table.al
  - Application/src/Coupon/_public/NpDcCouponListItem.Codeunit.al
  - Application/src/Coupon/NpDcCouponListItem.Table.al
  - Application/src/Coupon/_public/NpDcCouponListItemBuf.Table.al
  - Application/src/Coupon/NpDcCouponListItems.Page.al
  - Application/src/Coupon/NpDcCouponManualPost.Codeunit.al
  - Application/src/Coupon/_public/NpDcCouponMgt.Codeunit.al
  - Application/src/Coupon/_public/NpDcCouponMgtFacade.Codeunit.al
  - Application/src/Coupon/_public/NpDcCouponModule.Table.al
  - Application/src/Coupon/_public/NpDcCouponModuleMgt.Codeunit.al
  - Application/src/Coupon/NpDcCouponModules.Page.al
  - Application/src/Coupon/NpDcCoupons.Page.al
  - Application/src/Coupon/NpDcCouponSetup.Page.al
  - Application/src/Coupon/NpDcCouponSetup.Table.al
  - Application/src/Coupon/NpDcCouponState.Enum.al
  - Application/src/Coupon/_public/NpDcCouponType.Codeunit.al
  - Application/src/Coupon/NpDcCouponType.Enum.al
  - Application/src/Coupon/_public/NpDcCouponType.Table.al
  - Application/src/Coupon/_public/NpDcCouponTypeBuffer.Table.al
  - Application/src/Coupon/_public/NpDcCouponTypeCard.Page.al
  - Application/src/Coupon/NpDcCouponTypes.Page.al
  - Application/src/Coupon/NpDcExtCoupon.XmlPort.al
  - Application/src/Coupon/NpDcExtCouponAppl.XmlPort.al
  - Application/src/Coupon/NpDcExtCouponBuffer.Table.al
  - Application/src/Coupon/NpDcExtCouponReserv.Page.al
  - Application/src/Coupon/_public/NpDcExtCouponReserv.Table.al
  - Application/src/Coupon/NpDcExtraCouponItem.Page.al
  - Application/src/Coupon/NpDcExtraCouponItem.Table.al
  - Application/src/Coupon/NpDcExtraItemQty.Page.al
  - Application/src/Coupon/NpDcExtraItemQtySubform.Page.al
  - Application/src/Coupon/NpDcIssOnSaleSetup.Page.al
  - Application/src/Coupon/NpDcIssOnSaleSetup.Table.al
  - Application/src/Coupon/NpDcIssOnSaleSetupLine.Table.al
  - Application/src/Coupon/NpDcIssOnSaleSubform.Page.al
  - Application/src/Coupon/NpDcItemBuffer2.Table.al
  - Application/src/Coupon/NpDcModuleApplyActivity.Codeunit.al
  - Application/src/Coupon/NpDcModuleApplyDefault.Codeunit.al
  - Application/src/Coupon/NpDcModuleApplyGS1.Codeunit.al
  - Application/src/Coupon/NpDcModuleApplyItemList.Codeunit.al
  - Application/src/Coupon/NpDcModuleApplyXtrItem.Codeunit.al
  - Application/src/Coupon/NpDcModuleIssueDefault.Codeunit.al
  - Application/src/Coupon/NpDcModuleIssueGS1.Codeunit.al
  - Application/src/Coupon/NpDcModuleValidateTime.Codeunit.al
  - Application/src/Coupon/NpDcModuleValidDefa.Codeunit.al
  - Application/src/Coupon/NpDcModuleValidItemL_Magento.Codeunit.al
  - Application/src/Coupon/NpDcModuleValidItemL.Codeunit.al
  - Application/src/Coupon/NpDcNonPOSAppMgt.Codeunit.al
  - Application/src/Coupon/_public/NpDcNonPOSCouponWS.Codeunit.al
  - Application/src/Coupon/_public/NpDcSaleLinePOSCoupon.Codeunit.al
  - Application/src/Coupon/NpDcSaleLinePOSCoupon.Table.al
  - Application/src/Coupon/_public/NpDcSaleLinePOSCouponBuff.Table.al
  - Application/src/Coupon/NpDcSaleLinePOSCoupons.Page.al
  - Application/src/Coupon/NpDcSaleLinePOSNewCoupon.Table.al
  - Application/src/Coupon/NpDcValidTimeInterv.Page.al
  - Application/src/Coupon/NpDcValidTimeInterval.Table.al
  - Application/src/Coupon/VerifyCoupon/POSActionCouponVerify.Codeunit.al
  - Application/src/Coupon/VerifyCoupon/POSActionCouponVerifyB.Codeunit.al
  - Application/src/Coupon/ModuleIssueOnSale/POSActionIssueDCOnSale.Codeunit.al
  - Application/src/Coupon/ModuleIssueOnSale/POSActionIssueDCOnSaleB.Codeunit.al
---

# Coupon — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6150839 | "NPR Coupon Line Appl Buffer" |  | "Entry No." | — |
| 6151597 | "NPR NpDc Arch. Coupon" | Archived Coupon | "No." | — |
| 6151598 | "NPR NpDc Arch.Coupon Entry" | Archived Coupon Entry | "Entry No." | — |
| 6059891 | "NPR NpDc ArchCouponEntryBuff" | Entry No. | "Entry No." | — |
| 6151591 | "NPR NpDc Coupon" | Coupon | "No." | — |
| 6151592 | "NPR NpDc Coupon Entry" | Coupon Entry | "Entry No." | — |
| 6151596 | "NPR NpDc Coupon List Item" | Coupon List Item | "Coupon Type", "Line No." | — |
| 6151219 | "NPR NpDc Coupon List Item Buf" | Coupon Type | "Coupon Type", "Line No." | — |
| 6151594 | "NPR NpDc Coupon Module" | Coupon Module | Type, "Code" | — |
| 6151599 | "NPR NpDc Coupon Setup" | Coupon Setup | "Primary Key" | — |
| 6151590 | "NPR NpDc Coupon Type" | Coupon Type | "Code" | — |
| 6151218 | "NPR NpDc Coupon Type Buffer" | Code | "Code" | — |
| 6151606 | "NPR NpDc Ext. Coupon Buffer" | NpDc Ext. Coupon Buffer | "Document No.", "Line No." | — |
| 6151605 | "NPR NpDc Ext. Coupon Reserv." | NpDc Ext. Coupon Reservation | "External Document No.", "Line No." | — |
| 6151595 | "NPR NpDc Extra Coupon Item" | Extra Coupon Item | "Coupon Type", "Line No." | — |
| 6151601 | "NPR NpDc Iss.OnSale Setup" | Issue On-Sale Setup | "Coupon Type" | — |
| 6151602 | "NPR NpDc Iss.OnSale Setup Line" | Issue On-Sale Setup Line | "Coupon Type", "Line No." | — |
| 6014502 | "NPR NpDc Item Buffer 2" | Discount Item Buffer | "Item No.", "Variant Code", "Item Category Code", "Item Disc. Group", "Unit Price", "Discount Type", "Discount Code", "Discount %" | — |
| 6151593 | "NPR NpDc SaleLinePOS Coupon" | Sale Line POS Coupon | "Register No.", "Sales Ticket No.", "Sale Type", "Sale Date", "Sale Line No.", "Line No." | — |
| 6151224 | "NPR NpDc SaleLinePOSCouponBuff" | POS Unit No. | "Register No.", "Sales Ticket No.", "Sale Type", "Sale Date", "Sale Line No.", "Line No." | — |
| 6151603 | "NPR NpDc SaleLinePOS NewCoupon" | NpDc Sale Line POS New Coupon | "Register No.", "Sales Ticket No.", "Sale Type", "Sale Date", "Sale Line No.", "Line No." | — |
| 6151600 | "NPR NpDc Valid Time Interval" | Extra Coupon Item | "Coupon Type", "Line No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6151601 | "NPR NpDc Apply: Extra ItemQty." |  | ApplyDiscount, CalcDiscountAmount, CalcExtraItemQty, CalcExtraItemQtyLot, CalcPOSSalesQty | — |
| 6150972 | "NPR NpDc ArchCouponEntry" |  | SetView, GetBySystemId, FindSet, FindFirst, FindLast | — |
| 6248505 | "NPR NpDc Coupon List Item" |  | SetView, GetBySystemId, FindSet, FindFirst, FindLast | — |
| 6248586 | "NPR NpDc Coupon Manual Post" |  | POSSaleLineOnBeforeDeletePOSSaleLine | — |
| 6151590 | "NPR NpDc Coupon Mgt." |  | ResetInUseQty, IssueCoupons, InitialEntryExists, InsertInitialEntry, ValidateCoupon | — |
| 6248345 | "NPR NpDc Coupon Mgt. Facade" |  | ScanCoupon, IfSerialNoRequired, FindCouponType, FindExtraCouponItem | — |
| 6151591 | "NPR NpDc Coupon Module Mgt." |  | OnInitCouponModules, OnHasIssueCouponSetup, OnSetupIssueCoupon, OnRunIssueCoupon, OnHasValidateCouponSetup | OnInitCouponModules, OnHasIssueCouponSetup, OnSetupIssueCoupon |
| 6248503 | "NPR NpDc Coupon Type" |  | SetView, GetBySystemId, FindSet, FindFirst, FindLast | — |
| 6151609 | "NPR Np Dc Module ApplyActivity" |  | ApplyDiscount, ApplyCouponDiscount, ApplyCouponSettingsToPOSSalesLines, ApplyCoupontDiscountPercent, ApplyCouponDiscountAmount | — |
| 6151594 | "NPR NpDc Module Apply: Default" |  | ApplyDiscount, ApplyDiscountLine, ApplyDiscountAdjustment, CalcAppliedDiscountTotal, CalcAppliedDiscount | — |
| 6060085 | "NPR NpDc Module Apply GS1" |  | OnInitCouponModules, OnHasApplyDiscountSetup, OnSetupApplyDiscount, OnRunApplyDiscount, CurrCodeunitId | — |
| 6151596 | "NPR NpDc Module Apply ItemList" |  | ApplyDiscount, ApplyDiscountListItem, ApplyDiscountItemList, ApplyDiscountListItemPct, ApplyDiscountItemListPercent | — |
| 6151595 | "NPR NpDc ModuleApply: Xtr Item" |  | ApplyDiscount, OnBeforeDeletePOSSaleLine, CalcDiscountAmount, OnBeforeDeleteCouponType, OnInitCouponModules | — |
| 6151592 | "NPR NpDc Module Issue: Default" |  | IssueCoupons, IssueCoupon, PrintCoupons, OnInitCouponModules, OnHasIssueCouponsSetup | — |
| 6060028 | "NPR NpDc Module Issue GS1" |  | OnInitCouponModules, CurrCodeunitId, ModuleCode, NPRNpDcCouponModuleMgtOnBeforeValidateCoupon, GetGS1CouponType | — |
| 6151599 | "NPR NpDc Module Validate: Time" |  | ValidateCoupon, IsValidTimeInterval, IsValidDay, OnInitCouponModules, OnHasValidateCouponSetup | — |
| 6151593 | "NPR NpDc ModuleValid.: Defa." |  | ValidateCoupon, OnInitCouponModules, OnHasValidateCouponSetup, OnSetupValidateCoupon, OnRunValidateCoupon | — |
| 6014480 | "NPR NpDc Mod. Val. Item L. M." |  | ValidateCoupon, ValidateCouponLot, ValidateCouponQuantity, ValidateCouponExists, OnInitCouponModules | — |
| 6151597 | "NPR NpDc Module Valid. Item L." |  | ValidateCoupon, ValidateCouponLot, ValidateCouponQuantity, ValidateCouponExists, OnInitCouponModules | — |
| 6151603 | "NPR NpDc Non-POS App. Mgt." |  | ApplyDiscount, ApplyDiscount_OnRun, CheckCoupons, ReserveCoupons, CancelCouponReservations | — |
| 6151602 | "NPR NpDc Non-POS Coupon WS" |  | ApplyCouponDiscount, CheckCoupons, ReserveCoupons, CancelCouponReservations | — |
| 6248506 | "NPR NpDc SaleLinePOSCoupon" |  | SetView, GetBySystemId, FindSet, FindFirst, FindLast | — |
| 6059889 | "NPR POS Action: Coupon Verify" |  | Register, GetActionScript, RunWorkflow, VerifyCoupon | — |
| 6059985 | "NPR POSAction: Coupon Verify B" |  | VerifyCoupon | — |
| 6151600 | "NPR POSAction Issue DC OnSale" |  | Register, RunWorkflow, OnActionCouponTypeInput, OnActionIssueCoupon, OnBeforeInsertWorkflowStep | — |
| 6060004 | "NPR POSAction Issue DC OnSaleB" |  | OnAfterEndSale, AddNewSaleCoupons, OnAfterDeletePOSSaleLine, OnAfterSetQuantity, IssueCoupon | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6151270 | "NPR NpDc Act. Coup. Item List" | Activity Coupon Item List | "NPR NpDc Coupon List Item" | — |
| 6151600 | "NPR NpDc Arch. Coupon Card" | Archived Coupon Card | "NPR NpDc Arch. Coupon" | — |
| 6151601 | "NPR NpDc Arch.Coupon Entries" | Archived Coupon Entries | "NPR NpDc Arch.Coupon Entry" | — |
| 6151599 | "NPR NpDc Arch. Coupons" | Archived Coupons | "NPR NpDc Arch. Coupon" | — |
| 6151592 | "NPR NpDc Coupon Card" | Coupon Card | "NPR NpDc Coupon" | — |
| 6151594 | "NPR NpDc Coupon Entries" | Coupon Entries | "NPR NpDc Coupon Entry" | — |
| 6151597 | "NPR NpDc Coupon List Items" | Coupon List Items | "NPR NpDc Coupon List Item" | — |
| 6151595 | "NPR NpDc Coupon Modules" | Coupon Modules | "NPR NpDc Coupon Module" | — |
| 6151593 | "NPR NpDc Coupons" | Coupons | "NPR NpDc Coupon" | — |
| 6151602 | "NPR NpDc Coupon Setup" | Coupon Setup | "NPR NpDc Coupon Setup" | — |
| 6151590 | "NPR NpDc Coupon Type Card" | Coupon Type Card | "NPR NpDc Coupon Type" | — |
| 6151591 | "NPR NpDc Coupon Types" | Coupon Types | "NPR NpDc Coupon Type" | — |
| 6151608 | "NPR NpDc Ext. Coupon Reserv." | External Coupon Reservations | "NPR NpDc Ext. Coupon Reserv." | — |
| 6151596 | "NPR NpDc Extra Coupon Item" | Extra Coupon Item | "NPR NpDc Extra Coupon Item" | — |
| 6151606 | "NPR NpDc Extra Item Qty." | Extra Coupon Item | "NPR NpDc Extra Coupon Item" | — |
| 6151607 | "NPR NpDc ExtraItemQty. Subform" | Coupon List Items | "NPR NpDc Coupon List Item" | — |
| 6151604 | "NPR NpDc Iss.OnSale Setup" | Issue On-Sale Setup | "NPR NpDc Iss.OnSale Setup" | — |
| 6151605 | "NPR NpDc Iss.OnSale Subform" | Issue On-Sale Subform | "NPR NpDc Iss.OnSale Setup Line" | — |
| 6151598 | "NPR NpDc SaleLinePOS Coupons" | Sale Line POS Coupons | "NPR NpDc SaleLinePOS Coupon" | — |
| 6151603 | "NPR NpDc Valid Time Interv." | Valid Time Intervals | "NPR NpDc Valid Time Interval" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014595 | "NPR NpDc CouponState" | Active | ACTIVE, NOT_YET_VALID, EXPIRED, CONSUMED, EXHAUSTED, RESERVED, MAX_PER_SALE_EXCEEDED, TYPE_DISABLED |
| 6014462 | "NPR NpDc Coupon Type" | Item | Item, Item Categories, Item Disc. Group, Magento Brand |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014496 | "NPR NpDc Arch.Coupon Entry" | Archived Coupon Entry | — |
| 6014495 | "NPR NpDc Coupon Entry" | Coupon Entry | — |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6151591 | "NPR NpDc Ext. Coupon" | NpDc Coupon | — |
| 6151590 | "NPR NpDc Ext. Coupon Appl." | NpDc Coupon Application | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: CouponLineApplBuffer.Table.al, NpDcActCoupItemList.Page.al, NpDcApplyExtraItemQty.Codeunit.al, NpDcArchCoupon.Table.al, NpDcArchCouponCard.Page.al, NpDcArchCouponEntries.Page.al, NpDcArchCouponEntry.Codeunit.al, NpDcArchCouponEntry.Query.al, NpDcArchCouponEntry.Table.al, NpDcArchCouponEntryBuff.Table.al, NpDcArchCoupons.Page.al, NpDcCoupon.Table.al, NpDcCouponCard.Page.al, NpDcCouponEntries.Page.al, NpDcCouponEntry.Query.al, NpDcCouponEntry.Table.al, NpDcCouponListItem.Codeunit.al, NpDcCouponListItem.Table.al, NpDcCouponListItemBuf.Table.al, NpDcCouponListItems.Page.al, NpDcCouponManualPost.Codeunit.al, NpDcCouponMgt.Codeunit.al, NpDcCouponMgtFacade.Codeunit.al, NpDcCouponModule.Table.al, NpDcCouponModuleMgt.Codeunit.al, NpDcCouponModules.Page.al, NpDcCoupons.Page.al, NpDcCouponSetup.Page.al, NpDcCouponSetup.Table.al, NpDcCouponState.Enum.al, NpDcCouponType.Codeunit.al, NpDcCouponType.Enum.al, NpDcCouponType.Table.al, NpDcCouponTypeBuffer.Table.al, NpDcCouponTypeCard.Page.al, NpDcCouponTypes.Page.al, NpDcExtCoupon.XmlPort.al, NpDcExtCouponAppl.XmlPort.al, NpDcExtCouponBuffer.Table.al, NpDcExtCouponReserv.Page.al, NpDcExtCouponReserv.Table.al, NpDcExtraCouponItem.Page.al, NpDcExtraCouponItem.Table.al, NpDcExtraItemQty.Page.al, NpDcExtraItemQtySubform.Page.al, NpDcIssOnSaleSetup.Page.al, NpDcIssOnSaleSetup.Table.al, NpDcIssOnSaleSetupLine.Table.al, NpDcIssOnSaleSubform.Page.al, NpDcItemBuffer2.Table.al, NpDcModuleApplyActivity.Codeunit.al, NpDcModuleApplyDefault.Codeunit.al, NpDcModuleApplyGS1.Codeunit.al, NpDcModuleApplyItemList.Codeunit.al, NpDcModuleApplyXtrItem.Codeunit.al, NpDcModuleIssueDefault.Codeunit.al, NpDcModuleIssueGS1.Codeunit.al, NpDcModuleValidateTime.Codeunit.al, NpDcModuleValidDefa.Codeunit.al, NpDcModuleValidItemL_Magento.Codeunit.al, NpDcModuleValidItemL.Codeunit.al, NpDcNonPOSAppMgt.Codeunit.al, NpDcNonPOSCouponWS.Codeunit.al, NpDcSaleLinePOSCoupon.Codeunit.al, NpDcSaleLinePOSCoupon.Table.al, NpDcSaleLinePOSCouponBuff.Table.al, NpDcSaleLinePOSCoupons.Page.al, NpDcSaleLinePOSNewCoupon.Table.al, NpDcValidTimeInterv.Page.al, NpDcValidTimeInterval.Table.al, POSActionCouponVerify.Codeunit.al, POSActionCouponVerifyB.Codeunit.al, POSActionIssueDCOnSale.Codeunit.al, POSActionIssueDCOnSaleB.Codeunit.al
