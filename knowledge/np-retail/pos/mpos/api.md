---
type: reference
tags: [pos, mpos, np-retail, tables, codeunits, pages, enums, interfaces]
relates:
  - pos/mpos/overview.md
updated: 2026-05-30
source_files:
  - Application/src/MPOS/MPOSAdmissionAPI.Codeunit.al
  - Application/src/MPOS/DataView/MPOSDataView.Table.al
  - Application/src/MPOS/DataView/MPOSDataViewBarInv.Codeunit.al
  - Application/src/MPOS/_public/MPOSDataViewCategory.Enum.al
  - Application/src/MPOS/_public/MPOSDataViewMgt.Codeunit.al
  - Application/src/MPOS/DataView/MPOSDataViewNaviConnect.Codeunit.al
  - Application/src/MPOS/DataView/MPOSDataViews.Page.al
  - Application/src/MPOS/_public/MPOSDataViewType.Enum.al
  - Application/src/MPOS/MPOSEODReceipts.Page.al
  - Application/src/MPOS/MPOSEODRecipts.Table.al
  - Application/src/MPOS/MPOSHelperFunctions.Codeunit.al
  - Application/src/MPOS/_public/MPOSIDataViewCategory.Interface.al
  - Application/src/MPOS/_public/MPOSIDataViewType.Interface.al
  - Application/src/MPOS/MPOSPaymentIntegration.Enum.al
  - Application/src/MPOS/MPOSProfile.Table.al
  - Application/src/MPOS/MPOSQRCode.Page.al
  - Application/src/MPOS/MPOSQRCode.Table.al
  - Application/src/MPOS/MPOSQRCodeFactBox.Page.al
  - Application/src/MPOS/MPOSQRCodeList.Page.al
  - Application/src/MPOS/MPOSQRCodes.Table.al
  - Application/src/MPOS/MPOSReporthandler.Codeunit.al
  - Application/src/MPOS/_public/MPOSResponseSize.Enum.al
  - Application/src/MPOS/MPOSScannerType.Enum.al
  - Application/src/MPOS/_public/MPOSWebservice.Codeunit.al
  - Application/src/MPOS/PosActions/MposAPI/POSActionMposAPI.Codeunit.al
  - Application/src/MPOS/PosActions/MScanditScan/POSActionMScanditScan.Codeunit.al
  - Application/src/MPOS/PosActions/MScanditFindItem/POSActionMScanFindItem.Codeunit.al
  - Application/src/MPOS/PosActions/MScanditFindItem/POSActionMScanFindItemB.Codeunit.al
  - Application/src/MPOS/PosActions/MScanItemInfo/POSActionMScanItemInfo.Codeunit.al
  - Application/src/MPOS/PosActions/MAppSwitch/POSActionMShopAssistant.Codeunit.al
  - Application/src/MPOS/Dragonglass Mobile Backend/POSPreSearchMethod.Codeunit.al
  - Application/src/MPOS/Dragonglass Mobile Backend/POSSearchMethod.Codeunit.al
  - Application/src/MPOS/Dragonglass Mobile Backend/UpdatePreSearch.AsyncRequest.Codeunit.al
  - Application/src/MPOS/Dragonglass Mobile Backend/UpdateSearch.AsyncRequest.Codeunit.al
---

# MPOS — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6014672 | "NPR MPOS Data View" | MPOS Data View | "Data View Type", "Data View Category", "Data View Code" | — |
| 6059963 | "NPR MPOS EOD Recipts" | MPOS EOD Recipts | "No." | — |
| 6150657 | "NPR MPOS Profile" | MPOS Profile | "Code" | — |
| 6059964 | "NPR MPOS QR Code" | MPOS QR Code | "User ID", Company, "Cash Register Id" | — |
| 6014673 | "NPR MPOS QR Codes" | MPOS QR Code | "User ID", Company | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6014493 | "NPR MPOS Admission API" |  | ActionCode, ActionVersion, OnDiscoverAction, OnAction, BuildJSONParams | — |
| 6059825 | "NPR MPOS Data View - Bar. Inv." |  | Preveiw, GetViews, GetView | — |
| 6059827 | "NPR MPOS Data View Mgt." |  | LookUpDataView, GetViews, GetViews, GetView, Preview | — |
| 6059826 | "NPR MPOS Data View NaviConnect" |  | LookupCode, IsActive, ProcessView, GetViews | — |
| 6059984 | "NPR MPOS Helper Functions" |  | GetUsername, GetDatabaseName, GetTenantID, FindMySession, BuildJSONParams | — |
| 6059976 | "NPR MPOS Report handler" |  | ExecutionHandler, ExecutionHandlerWithVars, SendReportToLocalOS, GetXmlParameters, BuildJSONParams | — |
| 6059965 | "NPR MPOS Webservice" |  | OnBeforeInsertWebServiceAggregate, GetCompanyLogo, GetCompanyInfo, InitMPOSWebService, MPOSWebServiceCodeunitId | — |
| 6060073 | "NPR POS Action: Mpos API" |  | Register, RunWorkflow, GetActionScript | — |
| 6150998 | "NPR POS Action MScandit Scan" |  | Register, RunWorkflow, GetActionScript | — |
| 6150996 | "NPR POS Action MScanFind Item" |  | Register, RunWorkflow, GetScanditRequest, GetActionScript | — |
| 6151025 | "NPR POS Action MScanFind ItemB" |  | FindItemBarcodeFromSalesLine | — |
| 6150995 | "NPR POS Action MScan Item Info" |  | Register, RunWorkflow, GetActionScript | — |
| 6248420 | "NPR POS Action MShopAssistant" |  | Register, RunWorkflow, GetActionScript | — |
| 6014563 | "NPR POS PreSearch Method" |  | OnPreSearch, PreSearchItem | — |
| 6014564 | "NPR POS Search Method" |  | OnPreSearch, IsMatch, SearchItem | — |
| 6014566 | "NPR Front-End: UpdatePreSearch" |  | SetResults, GetJson, GetContent | — |
| 6014567 | "NPR Front-End: UpdateSearch" |  | SetHasMore, SetResults, GetJson, GetContent | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6059870 | "NPR MPOS Data Views" | MPOS Data Views | "NPR MPOS Data View" | — |
| 6059962 | "NPR MPOS EOD Receipts" | MPOS EOD Receips | "NPR MPOS EOD Recipts" | — |
| 6185056 | "NPR MPOS QR Code" | Scanner Type | "NPR MPOS QR Codes" | — |
| 6059963 | "NPR MPOS QR Code FactBox" | MPOS QR Code FactBox | "NPR MPOS QR Codes" | — |
| 6059964 | "NPR MPOS QR Code List" | MPOS QR Code List | "NPR MPOS QR Codes" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014495 | "NPR MPOS Data View Category" |   |  , Barcode Inventory |
| 6014494 | "NPR MPOS Data View Type" | NaviConnect | NaviConnect |
| 6059899 | "NPR MPOS Payment Integration" | None | None, TapToPay, LocalTerminal |
| 6014496 | "NPR MPOS Response Size" |   |  , Small, Medium, Large |
| 6059896 | "NPR MPOS Scanner Type" | None | None, Camera, Zebra, Honeywell, ZebraDataWedge, HID |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR MPOS IDataViewCategory" | Preveiw, GetViews, GetView |
| "NPR MPOS IDataViewType" | LookupCode, IsActive, ProcessView, GetViews |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: MPOSAdmissionAPI.Codeunit.al, MPOSDataView.Table.al, MPOSDataViewBarInv.Codeunit.al, MPOSDataViewCategory.Enum.al, MPOSDataViewMgt.Codeunit.al, MPOSDataViewNaviConnect.Codeunit.al, MPOSDataViews.Page.al, MPOSDataViewType.Enum.al, MPOSEODReceipts.Page.al, MPOSEODRecipts.Table.al, MPOSHelperFunctions.Codeunit.al, MPOSIDataViewCategory.Interface.al, MPOSIDataViewType.Interface.al, MPOSPaymentIntegration.Enum.al, MPOSProfile.Table.al, MPOSQRCode.Page.al, MPOSQRCode.Table.al, MPOSQRCodeFactBox.Page.al, MPOSQRCodeList.Page.al, MPOSQRCodes.Table.al, MPOSReporthandler.Codeunit.al, MPOSResponseSize.Enum.al, MPOSScannerType.Enum.al, MPOSWebservice.Codeunit.al, POSActionMposAPI.Codeunit.al, POSActionMScanditScan.Codeunit.al, POSActionMScanFindItem.Codeunit.al, POSActionMScanFindItemB.Codeunit.al, POSActionMScanItemInfo.Codeunit.al, POSActionMShopAssistant.Codeunit.al, POSPreSearchMethod.Codeunit.al, POSSearchMethod.Codeunit.al, UpdatePreSearch.AsyncRequest.Codeunit.al, UpdateSearch.AsyncRequest.Codeunit.al
