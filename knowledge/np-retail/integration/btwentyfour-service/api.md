---
type: reference
tags: [integration, btwentyfour, np-retail, tables, codeunits, pages, enums, interfaces]
relates:
  - integration/btwentyfour-service/overview.md
updated: 2026-05-30
source_files:
  - Application/src/BTwentyFour Service/_public/BTFContentType.Enum.al
  - Application/src/BTwentyFour Service/BTFEndPointErrorLog.Table.al
  - Application/src/BTwentyFour Service/_public/BTFEndPointMethod.Enum.al
  - Application/src/BTwentyFour Service/BTFEndPointsErrorLog.Page.al
  - Application/src/BTwentyFour Service/BTFEnvironment.Enum.al
  - Application/src/BTwentyFour Service/Messages/BTFGetInvoices.Codeunit.al
  - Application/src/BTwentyFour Service/Messages/BTFGetOrderResp.Codeunit.al
  - Application/src/BTwentyFour Service/Messages/BTFGetOrders.Codeunit.al
  - Application/src/BTwentyFour Service/Messages/BTFGetPriCat.Codeunit.al
  - Application/src/BTwentyFour Service/Authorization/BTFGetToken.Codeunit.al
  - Application/src/BTwentyFour Service/_public/BTFIEndPoint.Interface.al
  - Application/src/BTwentyFour Service/_public/BTFIFormatResponse.Interface.al
  - Application/src/BTwentyFour Service/_public/BTFJSONResponse.Codeunit.al
  - Application/src/BTwentyFour Service/Messages/BTFMessagesClass.Enum.al
  - Application/src/BTwentyFour Service/_public/BTFMessagesStatus.Enum.al
  - Application/src/BTwentyFour Service/BTFNcImportEntry.Codeunit.al
  - Application/src/BTwentyFour Service/Messages/BTFProcessMessage.Codeunit.al
  - Application/src/BTwentyFour Service/BTFRegisterService.Codeunit.al
  - Application/src/BTwentyFour Service/_public/BTFServiceAPI.Codeunit.al
  - Application/src/BTwentyFour Service/_public/BTFServiceEndpoint.Page.al
  - Application/src/BTwentyFour Service/_public/BTFServiceEndPoint.Table.al
  - Application/src/BTwentyFour Service/_public/BTFServiceEndPoints.Page.al
  - Application/src/BTwentyFour Service/_public/BTFServiceMethod.Enum.al
  - Application/src/BTwentyFour Service/_public/BTFServiceSetup.Page.al
  - Application/src/BTwentyFour Service/_public/BTFServiceSetup.Table.al
  - Application/src/BTwentyFour Service/_public/BTFServiceSetupCard.Page.al
  - Application/src/BTwentyFour Service/_public/BTFXMLResponse.Codeunit.al
---

# BTwentyFour Service — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6014524 | "NPR BTF EndPoint Error Log" | BTwentyFour Error Log | "Entry No." | — |
| 6014523 | "NPR BTF Service EndPoint" | BTwentyFour Service EndPoint | "Service Code", "EndPoint ID" | — |
| 6014522 | "NPR BTF Service Setup" | BTwentyFour Service Setup | Code | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6014645 | "NPR BTF GetInvoices" |  | Update, Update, ShowSetup, ShowErrorLog, SendRequest | — |
| 6014650 | "NPR BTF GetOrderResp" |  | Update, Update, ShowSetup, ShowErrorLog, SendRequest | — |
| 6014644 | "NPR BTF GetOrders" |  | Update, Update, ShowSetup, ShowErrorLog, SendRequest | — |
| 6014652 | "NPR BTF GetPriCat" |  | Update, Update, ShowSetup, ShowErrorLog, SendRequest | — |
| 6014643 | "NPR BTF GetToken" |  | SendRequest, GetDefaultFileName, GetToken, CheckServiceSetup, CheckServiceEndPoint | — |
| 6014647 | "NPR BTF JSON Response" |  | FormatInternalError, FoundErrorInResponse, GetErrorDescription, GetToken, FoundToken | — |
| 6014649 | "NPR BTF Nc Import Entry" |  | RunProcessImportEntry, ProcessImportEntry, PreProcessingCheck | — |
| 6014651 | "NPR BTF ProcessMessage" |  | SendRequest, ProcessMessage, CheckServiceSetup, CheckServiceEndPoint, GetDefaultFileName | — |
| 6014640 | "NPR BTF Register Service" |  | OnRegisterService, RegisterServiceWithEndPoints, GetServiceCode, OnAfterRegisterService, OnRegisterServiceEndPoint | — |
| 6014641 | "NPR BTF Service API" |  | VerifyServiceURL, RemoveLastSlashFromPath, ImportContentOnline, ProcessContent, ProcessContentOffline | — |
| 6014646 | "NPR BTF XML Response" |  | FormatInternalError, FoundErrorInResponse, GetErrorDescription, GetToken, FoundToken | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6059923 | "NPR BTF EndPoints Error Log" | BTwentyFour EndPoints Error Log | "NPR BTF EndPoint Error Log" | — |
| 6059924 | "NPR BTF Service Endpoint" | BTwentyFour Service EndPoint | "NPR BTF Service EndPoint" | — |
| 6059921 | "NPR BTF Service EndPoints" | BTwentyFour Service EndPoints | "NPR BTF Service EndPoint" | — |
| 6059920 | "NPR BTF Service Setup" | BTwentyFour Service Setup | "NPR BTF Service Setup" | — |
| 6059922 | "NPR BTF Service Setup Card" | Service Setup Card | "NPR BTF Service Setup" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014409 | "NPR BTF Content Type" | application/json | application/json, application/xml |
| 6014407 | "NPR BTF EndPoint Method" | Get Token | Get Token, Get Orders, Get Invoices, Process Message, Get Order Response, Get Price Catalogue |
| 6014416 | "NPR BTF Environment" | sandbox | sandbox, production |
| 6014413 | "NPR BTF Messages Class" | Price Catalog | pricat, order, orderresponse, despatchadvice, invoice, salesreport, inventoryreport, orderchange |
| 6014650 | "NPR BTF Messages Status" | Awaiting delivery | Awaiting delivery, Delivering, Delivered |
| 6014408 | "NPR BTF Service Method" | GET | GET, POST, PUT, PATCH, DELETE |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR BTF IEndPoint" | SendRequest, GetDefaultFileName, ProcessImportedContent, ProcessImportedContentOffline, GetImportListUpdateHandler |
| "NPR BTF IFormatResponse" | FormatInternalError, FoundErrorInResponse, GetErrorDescription, GetToken, FoundToken |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: BTFContentType.Enum.al, BTFEndPointErrorLog.Table.al, BTFEndPointMethod.Enum.al, BTFEndPointsErrorLog.Page.al, BTFEnvironment.Enum.al, BTFGetInvoices.Codeunit.al, BTFGetOrderResp.Codeunit.al, BTFGetOrders.Codeunit.al, BTFGetPriCat.Codeunit.al, BTFGetToken.Codeunit.al, BTFIEndPoint.Interface.al, BTFIFormatResponse.Interface.al, BTFJSONResponse.Codeunit.al, BTFMessagesClass.Enum.al, BTFMessagesStatus.Enum.al, BTFNcImportEntry.Codeunit.al, BTFProcessMessage.Codeunit.al, BTFRegisterService.Codeunit.al, BTFServiceAPI.Codeunit.al, BTFServiceEndpoint.Page.al, BTFServiceEndPoint.Table.al, BTFServiceEndPoints.Page.al, BTFServiceMethod.Enum.al, BTFServiceSetup.Page.al, BTFServiceSetup.Table.al, BTFServiceSetupCard.Page.al, BTFXMLResponse.Codeunit.al
