---
type: reference
tags: [pos, pos-tax-free, np-retail, tables, codeunits, pages, enums, interfaces]
relates:
  - pos/pos-tax-free/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Tax Free/POSTaxFreeProfile.Page.al
  - Application/src/POS Tax Free/POSTaxFreeProfile.Table.al
  - Application/src/POS Tax Free/POSTaxFreeProfiles.Page.al
  - Application/src/POS Tax Free/Integrations/Custom Cash/TaxFreeCC.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Custom Cash/TaxFreeCCParam.Page.al
  - Application/src/POS Tax Free/Integrations/Custom Cash/TaxFreeCCParam.Table.al
  - Application/src/POS Tax Free/Integrations/Custom Cash/TaxFreeCCPrint.Codeunit.al
  - Application/src/POS Tax Free/TaxFreeConsolidation.Page.al
  - Application/src/POS Tax Free/TaxFreeConsolidation.Table.al
  - Application/src/POS Tax Free/TaxFreeExecute.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBBlockedCountry.Table.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBCountries.Page.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBCountry.Table.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2GetBCountries.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2GetBlockedIIN.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2GetCountries.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2InfoCapt.Page.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2InfoCapt.Table.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2Param.Page.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2Param.Table.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2Service.Table.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2ServList.Page.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2ServSel.Page.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBI2TryPrint.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Global Blue I2/TaxFreeGBIINBlacklist.Table.al
  - Application/src/POS Tax Free/TaxFreeGenHandlParam.Page.al
  - Application/src/POS Tax Free/TaxFreeHandlerID.Enum.al
  - Application/src/POS Tax Free/TaxFreeHandlerIF.Interface.al
  - Application/src/POS Tax Free/TaxFreeHandlerInterface.Interface.al
  - Application/src/POS Tax Free/TaxFreeHandlerMgt.Codeunit.al
  - Application/src/POS Tax Free/TaxFreeHandlerParam.Table.al
  - Application/src/POS Tax Free/TaxFreeLastVouchPrint.Codeunit.al
  - Application/src/POS Tax Free/TaxFreeOnRunFunction.Enum.al
  - Application/src/POS Tax Free/TaxFreePOSUnit.Table.al
  - Application/src/POS Tax Free/Integrations/Premier Tax Free Offline/TaxFreePTFOffline.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Premier Tax Free PI/TaxFreePTFPI.Codeunit.al
  - Application/src/POS Tax Free/Integrations/Premier Tax Free PI/TaxFreePTFPITryPrint.Codeunit.al
  - Application/src/POS Tax Free/TaxFreeReceipt.Codeunit.al
  - Application/src/POS Tax Free/TaxFreeRequest.Table.al
  - Application/src/POS Tax Free/TaxFreeRequests.Page.al
  - Application/src/POS Tax Free/TaxFreeVoucher.Page.al
  - Application/src/POS Tax Free/TaxFreeVoucher.Table.al
  - Application/src/POS Tax Free/_public/TaxFreeVoucherOnSale.Codeunit.al
  - Application/src/POS Tax Free/TaxFreeVoucherSaleLink.Table.al
  - Application/src/POS Tax Free/TaxFreeVouchSaleLinks.Page.al
---

# POS Tax Free — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6060005 | "NPR POS Tax Free Profile" | POS Tax Free Profile | "Tax Free Profile" | — |
| 6014592 | "NPR Tax Free CC Param." | Tax Free Custom Cash Parameters | "Tax Free POS Unit Code" | — |
| 6014643 | "NPR Tax Free Consolidation" | Tax Free Consolidation | "Entry No." | — |
| 6014657 | "NPR TaxFree GB BlockedCountry" | Tax Free GB Blocked Country | "Shop Country Code", "Country Code" | — |
| 6014656 | "NPR Tax Free GB Country" | Tax Free GB Country | "Country Code" | — |
| 6014655 | "NPR TaxFree GB I2 Info Capt." | Tax Free GB I2 Info Capture | "Entry No." | — |
| 6014654 | "NPR Tax Free GB I2 Param." | Tax Free GB I2 Parameter | "Tax Free Unit" | — |
| 6014653 | "NPR Tax Free GB I2 Service" | Tax Free GB I2 Service | "Tax Free Unit", "Service ID" | — |
| 6014652 | "NPR Tax Free GB IIN Blacklist" | Tax Free GB IIN Blacklist | "Shop Country Code", "Range Inclusive Start", "Range Exclusive End" | — |
| 6014642 | "NPR Tax Free Handler Param." | Tax Free Handler Parameters | Parameter | — |
| 6014641 | "NPR Tax Free POS Unit" | POS Tax Free POS Unit | "POS Unit No." | — |
| 6014640 | "NPR Tax Free Request" | Tax Free Request | "Entry No." | — |
| 6014477 | "NPR Tax Free Voucher" | Tax Free Voucher | "Entry No." | — |
| 6014644 | "NPR Tax Free Voucher Sale Link" | Tax Free Voucher Sale Link | "Voucher Entry No.", "Sales Ticket No.", "Sales Header No.", "Sales Header Type" | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6014661 | "NPR Tax Free CC" |  | OnIsActiveSaleEligible, OnIsStoredSaleEligible, OnIsValidTerminalIIN, OnLookupHandlerParameter, OnSetUnitParameters | — |
| 6014662 | "NPR Tax Free CC Print" |  | SetExternalVoucherNo, ParsePrinter, ClearPrinterVar, ParseStyle, ParseStyleTag | — |
| 6014434 | "NPR Tax Free Execute" |  | TaxFreeHandlerInterfaceSet, OnRunTaxFreeRequestGetSet, OnRunTaxFreeVoucherGetSet, OnRunHandledGetSet, OnRunIsForeignIINGetSet | — |
| 6014613 | "NPR Tax Free GB I2" |  | ServicePROD, ServiceTEST, InitializeHandler, InitializeHandlerForNAS, DownloadDeskConfiguration | — |
| 6014615 | "NPR TaxFree GBI2 GetBCountries" |  | FindUniqueCountryTaxFreeUnits, IsScheduled, Schedule | — |
| 6014616 | "NPR TaxFree GBI2 GetBlockedIIN" |  | FindUniqueCountryTaxFreeUnits, IsScheduled, Schedule | — |
| 6014617 | "NPR TaxFree GBI2 GetCountries" |  | FindValidTaxFreeUnit, IsScheduled, Schedule | — |
| 6060032 | "NPR Tax Free GBI2 Try Print" |  | PrintVoucher, PrintThermal, PrintThermalLine, PrintPDF | — |
| 6014610 | "NPR Tax Free Handler Mgt." |  | Constructor, SetGenericHandlerParameters, SetParameters, UnitAutoConfigure, UnitTestConnection | — |
| 6014619 | "NPR TaxFree LastVouch.Print" |  | SetVoucher, GetVoucher | — |
| 6014612 | "NPR TaxFree PTF Offline" |  | — | — |
| 6014611 | "NPR Tax Free PTF PI" |  | ServicePROD, ServiceTEST, InitializeHandler, AddParameters, VoucherIssue | — |
| 6060033 | "NPR Tax Free PTFPI Try Print" |  | PrintVoucher, PrintThermalReceipt, PrintThermalLine, PrintPDF | — |
| 6014577 | "NPR Tax Free Receipt" |  | — | — |
| 6184654 | "NPR Tax Free Voucher On Sale" |  | — | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6059966 | "NPR POS Tax Free Profile" | POS Tax Free Profile | "NPR POS Tax Free Profile" | — |
| 6014644 | "NPR POS Tax Free Profiles" | POS Tax Free Profiles | "NPR POS Tax Free Profile" | — |
| 6014619 | "NPR Tax Free CC Param." | Custom Cash Parameters | "NPR Tax Free CC Param." | — |
| 6014571 | "NPR Tax Free Consolidation" | Tax Free Consolidation | "NPR Tax Free Consolidation" | — |
| 6014578 | "NPR Tax Free GB Countries" | Tax Free GB Countries | "NPR Tax Free GB Country" | — |
| 6014573 | "NPR Tax Free GB I2 Info Capt." | Tax Free GB I2 Info Capture | "NPR TaxFree GB I2 Info Capt." | — |
| 6014647 | "NPR Tax Free GB I2 Param." | Tax Free GB I2 Parameters | "NPR Tax Free GB I2 Param." | — |
| 6014577 | "NPR Tax Free GB I2 Serv. List" | Tax Free GB I2 Service List | "NPR Tax Free GB I2 Service" | — |
| 6059948 | "NPR Tax Free GB I2 Serv. Sel." | Tax Free GB I2 Service Select | "NPR Tax Free GB I2 Service" | — |
| 6014646 | "NPR Tax Free Gen. Handl. Param" | Tax Free Handler Parameters | "NPR Tax Free Handler Param." | — |
| 6014645 | "NPR Tax Free Requests" | Tax Free Requests | "NPR Tax Free Request" | — |
| 6014565 | "NPR Tax Free Voucher" | Tax Free Voucher | "NPR Tax Free Voucher" | — |
| 6014572 | "NPR Tax Free Vouch. Sale Links" | Tax Free Voucher Sale Links | "NPR Tax Free Voucher Sale Link" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014418 | "NPR Tax Free Handler ID" |  | PREMIER_PI, GLOBALBLUE_I2, CUSTOM CASH |
| 6014446 | "NPR Tax Free OnRunFunction" |  | FunctionNotSet, UnitAutoConfigure, UnitTestConnection, VoucherIssueFromPOSSale, VoucherVoid, VoucherReissue, VoucherLookup, VoucherPrint |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR Tax Free Handler IF" | OnUnitAutoConfigure, OnUnitTestConnection, OnVoucherIssueFromPOSSale, OnVoucherVoid, OnVoucherReissue |
| "NPR Tax Free Handler Interface" | OnUnitAutoConfigure, OnUnitTestConnection, OnVoucherIssueFromPOSSale, OnVoucherVoid, OnVoucherReissue |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: POSTaxFreeProfile.Page.al, POSTaxFreeProfile.Table.al, POSTaxFreeProfiles.Page.al, TaxFreeCC.Codeunit.al, TaxFreeCCParam.Page.al, TaxFreeCCParam.Table.al, TaxFreeCCPrint.Codeunit.al, TaxFreeConsolidation.Page.al, TaxFreeConsolidation.Table.al, TaxFreeExecute.Codeunit.al, TaxFreeGBBlockedCountry.Table.al, TaxFreeGBCountries.Page.al, TaxFreeGBCountry.Table.al, TaxFreeGBI2.Codeunit.al, TaxFreeGBI2GetBCountries.Codeunit.al, TaxFreeGBI2GetBlockedIIN.Codeunit.al, TaxFreeGBI2GetCountries.Codeunit.al, TaxFreeGBI2InfoCapt.Page.al, TaxFreeGBI2InfoCapt.Table.al, TaxFreeGBI2Param.Page.al, TaxFreeGBI2Param.Table.al, TaxFreeGBI2Service.Table.al, TaxFreeGBI2ServList.Page.al, TaxFreeGBI2ServSel.Page.al, TaxFreeGBI2TryPrint.Codeunit.al, TaxFreeGBIINBlacklist.Table.al, TaxFreeGenHandlParam.Page.al, TaxFreeHandlerID.Enum.al, TaxFreeHandlerIF.Interface.al, TaxFreeHandlerInterface.Interface.al, TaxFreeHandlerMgt.Codeunit.al, TaxFreeHandlerParam.Table.al, TaxFreeLastVouchPrint.Codeunit.al, TaxFreeOnRunFunction.Enum.al, TaxFreePOSUnit.Table.al, TaxFreePTFOffline.Codeunit.al, TaxFreePTFPI.Codeunit.al, TaxFreePTFPITryPrint.Codeunit.al, TaxFreeReceipt.Codeunit.al, TaxFreeRequest.Table.al, TaxFreeRequests.Page.al, TaxFreeVoucher.Page.al, TaxFreeVoucher.Table.al, TaxFreeVoucherOnSale.Codeunit.al, TaxFreeVoucherSaleLink.Table.al, TaxFreeVouchSaleLinks.Page.al
