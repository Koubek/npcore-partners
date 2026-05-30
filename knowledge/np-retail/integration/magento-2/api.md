---
type: reference
tags: [integration, magento-2, np-retail, tables, codeunits, pages, enums, xmlports]
relates:
  - integration/magento-2/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Magento 2/AuthenticationLog.Table.al
  - Application/src/Magento 2/M2AccComTemplateType.Enum.al
  - Application/src/Magento 2/M2AccountComTemplate.Table.al
  - Application/src/Magento 2/M2AccountLookupMgt.Codeunit.al
  - Application/src/Magento 2/M2AccountManager.Codeunit.al
  - Application/src/Magento 2/M2AccountSetup.Table.al
  - Application/src/Magento 2/_public/M2AccountWebService.Codeunit.al
  - Application/src/Magento 2/M2AddAccount.XmlPort.al
  - Application/src/Magento 2/M2AddShiptoAddress.XmlPort.al
  - Application/src/Magento 2/M2Authenticate.XmlPort.al
  - Application/src/Magento 2/M2BrandMgt.Codeunit.al
  - Application/src/Magento 2/_public/M2BudgetWebService.Codeunit.al
  - Application/src/Magento 2/M2CategoryMgt.Codeunit.al
  - Application/src/Magento 2/M2ChangeAccountPassword.XmlPort.al
  - Application/src/Magento 2/M2ContactBuffer.Table.al
  - Application/src/Magento 2/M2ContactList.Page.al
  - Application/src/Magento 2/M2CreateCorporateAcc.XmlPort.al
  - Application/src/Magento 2/M2CustomerItemByPeriod.XmlPort.al
  - Application/src/Magento 2/M2DeleteAccount.XmlPort.al
  - Application/src/Magento 2/M2DeleteShiptoAddress.XmlPort.al
  - Application/src/Magento 2/M2DemoPictureMgt2.Codeunit.al
  - Application/src/Magento 2/M2EstimateDeliveryDate.XmlPort.al
  - Application/src/Magento 2/M2GetAccount.XmlPort.al
  - Application/src/Magento 2/M2GetBudgetDimValues.XmlPort.al
  - Application/src/Magento 2/M2GetBudgetEntries.XmlPort.al
  - Application/src/Magento 2/M2GetExtendedAccount.XmlPort.al
  - Application/src/Magento 2/M2GetSimpleBudget.XmlPort.al
  - Application/src/Magento 2/M2GetWorkingDayCalendar.XmlPort.al
  - Application/src/Magento 2/M2 Integration/Area Management/M2IntegrationArea.Enum.al
  - Application/src/Magento 2/M2 Integration/Area Management/M2IntegrationAreaMgt.Codeunit.al
  - Application/src/Magento 2/M2 Integration/MSI Integration/_public/M2IntegrationEvents.Codeunit.al
  - Application/src/Magento 2/M2 Integration/Helpers/M2IntegrationItemHelper.Codeunit.al
  - Application/src/Magento 2/M2 Integration/M2IntegrationRecord.Table.al
  - Application/src/Magento 2/M2 Integration/M2IntegrationRecords.Page.al
  - Application/src/Magento 2/M2ItemAvailabByPeriod.XmlPort.al
  - Application/src/Magento 2/M2ItemPriceRequest.XmlPort.al
  - Application/src/Magento 2/M2ListBudgets.XmlPort.al
  - Application/src/Magento 2/M2ListMailingGroups.XmlPort.al
  - Application/src/Magento 2/M2 Integration/MSI Integration/M2MSIIntegrationMgt.Codeunit.al
  - Application/src/Magento 2/M2 Integration/MSI Integration/_public/M2MSIRequest.Table.al
  - Application/src/Magento 2/M2 Integration/MSI Integration/M2MSITaskMgt.Codeunit.al
  - Application/src/Magento 2/M2OneTimePassword.Table.al
  - Application/src/Magento 2/M2PictureMgt.Codeunit.al
  - Application/src/Magento 2/_public/M2POSPriceWebService.Codeunit.al
  - Application/src/Magento 2/M2POSSvSalePriceReq.XmlPort.al
  - Application/src/Magento 2/_public/M2PriceCalcBuffer.Table.al
  - Application/src/Magento 2/M2PriceCalcBufferType.Enum.al
  - Application/src/Magento 2/M2 Integration/Record Change Management/M2RecordChangeLog.Table.al
  - Application/src/Magento 2/M2 Integration/Record Change Management/M2RecordChangeMgt.Codeunit.al
  - Application/src/Magento 2/M2ResetAccountPassword.XmlPort.al
  - Application/src/Magento 2/M2SaveValues.Codeunit.al
  - Application/src/Magento 2/M2ServiceLib.Codeunit.al
  - Application/src/Magento 2/M2SetupMgt.Codeunit.al
  - Application/src/Magento 2/M2ShopperRecognition.XmlPort.al
  - Application/src/Magento 2/M2UpdateAccount.XmlPort.al
  - Application/src/Magento 2/M2UpdateShiptoAddress.XmlPort.al
  - Application/src/Magento 2/M2ValueBuffer.Table.al
  - Application/src/Magento 2/M2ValueBufferList.Page.al
---

# Magento 2 — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6151153 | "NPR Authentication Log" | Authentication Log | "Entry No." | — |
| 6151152 | "NPR M2 Account Com. Template" | Account Com. Template | "Entry No." | — |
| 6151150 | "NPR M2 Account Setup" | Account Setup | "Code" | — |
| 6014572 | "NPR M2 Contact Buffer" | Magento Contact Buffer | "Entry No." | — |
| 6059854 | "NPR M2 Integration Record" | Table No. | "Table No.", "Integration Area" | — |
| 6059863 | "NPR M2 MSI Request" |  | "Item No.", "Variant Code", "Magento Source" | — |
| 6151151 | "NPR M2 One Time Password" | One Time Password | "Entry No." | — |
| 6151145 | "NPR M2 Price Calc. Buffer" | Sales Price Buffer | "Item No.", "Source Type", "Source Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity", "Request ID" | — |
| 6059856 | "NPR M2 Record Change Log" | Entry No. | "Entry No." | — |
| 6151443 | "NPR M2 Value Buffer" | M2 Value Buffer | Value | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6151463 | "NPR M2 Account Lookup Mgt." |  | LookupDisplayGroup, SetupDisplayGroups, ValidateDisplayGroup, LookupShippingGroup, SetupShippingGroups | — |
| 6151151 | "NPR M2 Account Manager" |  | InitM2AccountWebService, SetFunction, AuthenticatePassword, ChangePassword, ResetPassword | — |
| 6151150 | "NPR M2 Account WebService" |  | AuthenticateAccountPassword, RequestPasswordReset, ChangeAccountPassword, GetAccountDetails, UpdateAccount | — |
| 6151465 | "NPR M2 Brand Mgt." |  | UpdateBrands, ScheduleUpdateBrands, RemoveBrand, SetupM2Brands, CurrCodeunitId | — |
| 6151152 | "NPR M2 Budget WebService" |  | GetBudgetDimensionValues, GetBudgetData, GetSimpleBudgetData | — |
| 6151464 | "NPR M2 Category Mgt." |  | UpdateCategories, ScheduleUpdateCategories, RemoveCategory, SetupM2Categories, CurrCodeunitId | — |
| 6014446 | "NPR M2 Demo Picture Mgt2" |  | GetM2DemoPictureUrl, CurrCodeunitId | — |
| 6150974 | "NPR M2 Integration Area Mgt." |  | AreaIsEnabled, EnableArea, EnableMsiIntegration | — |
| 6151386 | "NPR M2 Integration Events" |  | CallOnAfterUpdateMsiDataOnBeforeInsertTasks, CallOnBeforeFillTempMSIRequest, OnAfterUpdateMsiDataOnBeforeInsertTasks, OnBeforeFillTempMSIRequest | — |
| 6150989 | "NPR M2 Integration Item Helper" |  | Sku2ItemNoVariant, IsMagentoItem | — |
| 6150969 | "NPR M2 MSI Integration Mgt." |  | UpdateMsiData, UpdateMsiDataSalesLine, UpdateMsiDataItemLedgerEntry, UpdateMsiDataRecordChanges, CreateMsiRequest | — |
| 6150985 | "NPR M2 MSI Task Mgt." |  | PrepareRequest, SendRequest, TrySendRequest, InitializeHttpClient, CalcStockQty | — |
| 6151462 | "NPR M2 Picture Mgt." |  | DragDropPicture, SendMagentoPicture, OnDragDropPicture, GetM2PictureUrl, GetMagentoType | — |
| 6151145 | "NPR M2 POS Price WebService" |  | POSQuote, TryPosQuoteRequest, GetTotalDiscountBenefitItemsForSale, ItemPrice, TryItemPriceRequest | — |
| 6150976 | "NPR M2 Record Change Mgt." |  | HandleItemChange, HandleItemDeletion, HandleSalesLineDeletion | — |
| 6059834 | "NPR M2 Save Values" |  | ShowContactBuffer, OnBeforeOnDelete, ClearMagentoContact | — |
| 6151153 | "NPR M2 Service Lib." |  | GetEstimatedDeliveryDate, GetNextWorkDay, GetCalendarCode | — |
| 6151460 | "NPR M2 Setup Mgt." |  | CreateStores, CreateRootItemGroup, SetDefaultItemGroupRoots, SetupNpXmlTemplates, SetupPaymentMethodMapping | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6014458 | "NPR M2 Contact List" | Magento Contact List | "NPR M2 Contact Buffer" | — |
| 6150843 | "NPR M2 Integration Records" |  | "NPR M2 Integration Record" | — |
| 6151486 | "NPR M2 Value Buffer List" | M2 Values | "NPR M2 Value Buffer" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014440 | "NPR M2 Acc. Com. Template Type" |   | NA, WELCOME, PW_RESET |
| 6014534 | "NPR M2 Integration Area" | Multi Source Inventory Integration | MSI Stock Data |
| 6014439 | "NPR M2 Price Calc. Buffer Type" | Unit Price | Unit Price, Customer, Customer Price Group, All Customers, Campaign, Item Discount, Item Discount Group, Customer Discount Group |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6151157 | "NPR M2 Add Account" | Add Account | — |
| 6151154 | "NPR M2 Add Shipto Address" | Add Shipto Address | — |
| 6151150 | "NPR M2 Authenticate" | Authenticate | — |
| 6151149 | "NPR M2 Change Account Password" | Change Account Password | — |
| 6151153 | "NPR M2 Create Corporate Acc." | Create Corporate Account | — |
| 6151148 | "NPR M2 Customer Item By Period" | Customer Item By Period | — |
| 6151158 | "NPR M2 Delete Account" | Delete Account | — |
| 6151159 | "NPR M2 Delete Shipto Address" | Delete Shipto Address | — |
| 6151138 | "NPR M2 Estimate Delivery Date" | Estimate Delivery Date | — |
| 6151152 | "NPR M2 Get Account" | Get Account | — |
| 6151141 | "NPR M2 Get Budget Dim. Values" | Get Budget Dimension Values | — |
| 6151142 | "NPR M2 Get Budget Entries" | Get Budget Entries | — |
| 6151144 | "NPR M2 Get Extended Account" | Get Account | — |
| 6151143 | "NPR M2 Get Simple Budget" | Get Simple Budget | — |
| 6151137 | "NPR M2 Get WorkingDay Calendar" | Get WorkingDay Calendar | — |
| 6151147 | "NPR M2 Item Availab. By Period" | Item Availability By Period | — |
| 6151146 | "NPR M2 Item Price Request" | Item Price Request | — |
| 6151140 | "NPR M2 List Budgets" | List Budgets | — |
| 6151139 | "NPR M2 List Mailing Groups" | List Mailing Groups | — |
| 6151145 | "NPR M2 POS Sv. Sale Price Req." | POS Price Quote | — |
| 6151151 | "NPR M2 Reset Account Password" | Reset Account Password | — |
| 6184507 | "NPR M2 Shopper Recognition" | M2 Shopper Recognition | — |
| 6151156 | "NPR M2 Update Account" | Update Account | — |
| 6151155 | "NPR M2 Update Shipto Address" | Add Shipto Address | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AuthenticationLog.Table.al, M2AccComTemplateType.Enum.al, M2AccountComTemplate.Table.al, M2AccountLookupMgt.Codeunit.al, M2AccountManager.Codeunit.al, M2AccountSetup.Table.al, M2AccountWebService.Codeunit.al, M2AddAccount.XmlPort.al, M2AddShiptoAddress.XmlPort.al, M2Authenticate.XmlPort.al, M2BrandMgt.Codeunit.al, M2BudgetWebService.Codeunit.al, M2CategoryMgt.Codeunit.al, M2ChangeAccountPassword.XmlPort.al, M2ContactBuffer.Table.al, M2ContactList.Page.al, M2CreateCorporateAcc.XmlPort.al, M2CustomerItemByPeriod.XmlPort.al, M2DeleteAccount.XmlPort.al, M2DeleteShiptoAddress.XmlPort.al, M2DemoPictureMgt2.Codeunit.al, M2EstimateDeliveryDate.XmlPort.al, M2GetAccount.XmlPort.al, M2GetBudgetDimValues.XmlPort.al, M2GetBudgetEntries.XmlPort.al, M2GetExtendedAccount.XmlPort.al, M2GetSimpleBudget.XmlPort.al, M2GetWorkingDayCalendar.XmlPort.al, M2IntegrationArea.Enum.al, M2IntegrationAreaMgt.Codeunit.al, M2IntegrationEvents.Codeunit.al, M2IntegrationItemHelper.Codeunit.al, M2IntegrationRecord.Table.al, M2IntegrationRecords.Page.al, M2ItemAvailabByPeriod.XmlPort.al, M2ItemPriceRequest.XmlPort.al, M2ListBudgets.XmlPort.al, M2ListMailingGroups.XmlPort.al, M2MSIIntegrationMgt.Codeunit.al, M2MSIRequest.Table.al, M2MSITaskMgt.Codeunit.al, M2OneTimePassword.Table.al, M2PictureMgt.Codeunit.al, M2POSPriceWebService.Codeunit.al, M2POSSvSalePriceReq.XmlPort.al, M2PriceCalcBuffer.Table.al, M2PriceCalcBufferType.Enum.al, M2RecordChangeLog.Table.al, M2RecordChangeMgt.Codeunit.al, M2ResetAccountPassword.XmlPort.al, M2SaveValues.Codeunit.al, M2ServiceLib.Codeunit.al, M2SetupMgt.Codeunit.al, M2ShopperRecognition.XmlPort.al, M2UpdateAccount.XmlPort.al, M2UpdateShiptoAddress.XmlPort.al, M2ValueBuffer.Table.al, M2ValueBufferList.Page.al
