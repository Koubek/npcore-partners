---
type: reference
tags: [infrastructure, reimbursement, np-retail, tables, codeunits, pages, enums]
relates:
  - infrastructure/reimbursement/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Reimbursement/NpRiAccountType.Enum.al
  - Application/src/Reimbursement/NpRiCollectCustLedgers.Codeunit.al
  - Application/src/Reimbursement/NpRiCollectGLEntries.Codeunit.al
  - Application/src/Reimbursement/NpRiCollectLoyPoints.Codeunit.al
  - Application/src/Reimbursement/NpRiCollVendorLedgers.Codeunit.al
  - Application/src/Reimbursement/_public/NpRiDataCollectionMgt.Codeunit.al
  - Application/src/Reimbursement/NpRiParties.Page.al
  - Application/src/Reimbursement/_public/NpRiParty.Table.al
  - Application/src/Reimbursement/_public/NpRiPartyType.Table.al
  - Application/src/Reimbursement/NpRiPartyTypes.Page.al
  - Application/src/Reimbursement/NpRiProvisionSetup.Page.al
  - Application/src/Reimbursement/NpRiProvisionSetup.Table.al
  - Application/src/Reimbursement/NpRiPurchDocDiscSetup.Page.al
  - Application/src/Reimbursement/NpRiPurchDocDiscSetup.Table.al
  - Application/src/Reimbursement/_public/NpRiReimbursement.Table.al
  - Application/src/Reimbursement/_public/NpRiReimbursementEntry.Table.al
  - Application/src/Reimbursement/_public/NpRiReimbursementMgt.Codeunit.al
  - Application/src/Reimbursement/_public/NpRiReimbursementModule.Table.al
  - Application/src/Reimbursement/_public/NpRiReimbursements.Page.al
  - Application/src/Reimbursement/_public/NpRiReimbursementTempl.Page.al
  - Application/src/Reimbursement/_public/NpRiReimbursementTempl.Table.al
  - Application/src/Reimbursement/_public/NpRiReimbursEntries.Page.al
  - Application/src/Reimbursement/NpRiReimburseProvision.Codeunit.al
  - Application/src/Reimbursement/NpRiReimbursModules.Page.al
  - Application/src/Reimbursement/NpRiReimPurchDocDisc.Codeunit.al
  - Application/src/Reimbursement/NpRiReimSalesInv.Codeunit.al
  - Application/src/Reimbursement/NpRiSalesInvSetup.Page.al
  - Application/src/Reimbursement/NpRiSalesInvSetup.Table.al
  - Application/src/Reimbursement/NpRiSalesInvSetupLine.Table.al
  - Application/src/Reimbursement/_public/NpRiSetupMgt.Codeunit.al
  - Application/src/Reimbursement/NpRiSInvSetupSubpage.Page.al
  - Application/src/Reimbursement/NpRiTaskQueueMgt.Codeunit.al
---

# Reimbursement — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6151105 | "NPR NpRi Party" | Reimbursement Party | "Party Type", "No." | — |
| 6151104 | "NPR NpRi Party Type" | Reimbursement Party Type | "Code" | — |
| 6151106 | "NPR NpRi Provision Setup" | Provision Reimbursement Setup | "Template Code" | — |
| 6151107 | "NPR NpRi Purch.Doc.Disc. Setup" | Purchase Document Discount Reimbursement Setup | "Template Code" | — |
| 6151102 | "NPR NpRi Reimbursement" | Reimbursement | "Party Type", "Party No.", "Template Code" | — |
| 6151103 | "NPR NpRi Reimbursement Entry" | Reimbursement Entry | "Entry No." | — |
| 6151100 | "NPR NpRi Reimbursement Module" | Reimbursement Module | "Code" | — |
| 6151101 | "NPR NpRi Reimbursement Templ." | Reimbursement Template | "Code" | — |
| 6151110 | "NPR NpRi Sales Inv. Setup" | Sales Invoice Reimbursement Setup | "Template Code" | — |
| 6151111 | "NPR NpRi Sales Inv. Setup Line" | Sales Invoice Reimbursement Setup Line | "Template Code", "Line No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6151104 | "NPR NpRi Collect Cust. Ledgers" |  | DiscoverCustomerLedgers, CustomerLedgerCode, HasTemplateFilters, SetupTemplateFilters, OnSetupPartyTypeTableNoLookup | — |
| 6151109 | "NPR NpRi Collect G/L Entries" |  | DiscoverGLEntries, ModuleCode, HasTemplateFilters, SetupTemplateFilters, OnSetupPartyTypeTableNoLookup | — |
| 6151108 | "NPR NpRi Collect Loy. Points" |  | DiscoverMemberLoyaltyPoints, MemberLoyaltyPointsCode, HasTemplateFilters, SetupTemplateFilters, OnSetupPartyTypeTableNoLookup | — |
| 6151103 | "NPR NpRi Coll. Vendor Ledgers" |  | DiscoverVendorLedgers, VendorLedgerCode, HasTemplateFilters, SetupTemplateFilters, OnSetupPartyTypeTableNoLookup | — |
| 6151101 | "NPR NpRi Data Collection Mgt." |  | HasTemplateFilters, SetupTemplateFilters, AddRequestField, RunRequestPage, InitRequestPage | HasTemplateFilters, SetupTemplateFilters |
| 6151102 | "NPR NpRi Reimbursement Mgt." |  | HasTemplateParameters, SetupTemplateParameters, ManualApplyEntries, CreateManualApplicationEntry, UpdateManualApplicationEntry | HasTemplateParameters, SetupTemplateParameters |
| 6151105 | "NPR NpRi Reimburse Provision" |  | DiscoverProvision, ProvisionCode, OnBeforeDeleteTemplate, HasTemplateParameters, SetupTemplateParameters | — |
| 6151107 | "NPR NpRi Reim. Purch.Doc.Disc." |  | DiscoverPurchDocDiscCode, PurchDocDiscCode, OnBeforeDeleteTemplate, HasTemplateParameters, SetupTemplateParameters | — |
| 6151110 | "NPR NpRi Reim. Sales Inv." |  | DiscoverSalesInv, ModuleCode, OnBeforeDeleteTemplate, HasTemplateParameters, SetupTemplateParameters | — |
| 6151100 | "NPR NpRi Setup Mgt." |  | DiscoverModules, SetupPartyTypeTableNoLookup, ShowEntrySource | DiscoverModules, SetupPartyTypeTableNoLookup |
| 6151106 | "NPR NpRi Task Queue Mgt." |  | ParamRunDataCollections, ParamRunReimbursements, RunDataCollections, RunReimbursements | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6151105 | "NPR NpRi Parties" | Reimbursement Parties | "NPR NpRi Party" | — |
| 6151104 | "NPR NpRi Party Types" | Reimbursement Party Types | "NPR NpRi Party Type" | — |
| 6151106 | "NPR NpRi Provision Setup" | Reimbursement Provision Setup | "NPR NpRi Provision Setup" | — |
| 6151107 | "NPR NpRi Purch.Doc.Disc. Setup" | Purchase Document Discount Reimbursement Setup | "NPR NpRi Purch.Doc.Disc. Setup" | — |
| 6151102 | "NPR NpRi Reimbursements" | Reimbursements | "NPR NpRi Reimbursement" | — |
| 6151101 | "NPR NpRi Reimbursement Templ." | Reimbursement Templates | "NPR NpRi Reimbursement Templ." | — |
| 6151103 | "NPR NpRi Reimburs. Entries" | Reimbursement Entries | "NPR NpRi Reimbursement Entry" | — |
| 6151100 | "NPR NpRi Reimburs. Modules" | Reimbursement Modules | "NPR NpRi Reimbursement Module" | — |
| 6151110 | "NPR NpRi Sales Inv. Setup" | Sales Invoice Reimbursement Setup | "NPR NpRi Sales Inv. Setup" | — |
| 6151111 | "NPR NpRi S. Inv. SetupSubpage" | Lines | "NPR NpRi Sales Inv. Setup Line" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6151100 | "NPR NpRi Account Type" | G/L Account | G/L Account, Customer, Vendor, Bank Account, Fixed Asset, IC Partner, Membership |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: NpRiAccountType.Enum.al, NpRiCollectCustLedgers.Codeunit.al, NpRiCollectGLEntries.Codeunit.al, NpRiCollectLoyPoints.Codeunit.al, NpRiCollVendorLedgers.Codeunit.al, NpRiDataCollectionMgt.Codeunit.al, NpRiParties.Page.al, NpRiParty.Table.al, NpRiPartyType.Table.al, NpRiPartyTypes.Page.al, NpRiProvisionSetup.Page.al, NpRiProvisionSetup.Table.al, NpRiPurchDocDiscSetup.Page.al, NpRiPurchDocDiscSetup.Table.al, NpRiReimbursement.Table.al, NpRiReimbursementEntry.Table.al, NpRiReimbursementMgt.Codeunit.al, NpRiReimbursementModule.Table.al, NpRiReimbursements.Page.al, NpRiReimbursementTempl.Page.al, NpRiReimbursementTempl.Table.al, NpRiReimbursEntries.Page.al, NpRiReimburseProvision.Codeunit.al, NpRiReimbursModules.Page.al, NpRiReimPurchDocDisc.Codeunit.al, NpRiReimSalesInv.Codeunit.al, NpRiSalesInvSetup.Page.al, NpRiSalesInvSetup.Table.al, NpRiSalesInvSetupLine.Table.al, NpRiSetupMgt.Codeunit.al, NpRiSInvSetupSubpage.Page.al, NpRiTaskQueueMgt.Codeunit.al
