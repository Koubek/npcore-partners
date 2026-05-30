---
type: reference
tags: [np-retail, registry, _system]
relates: []
updated: 2026-05-09
---

# NP Retail Object Registry

Cross-module index of all AL objects (tables, codeunits, pages, enums, events) and their defining modules. This is the source of truth for cross-module dependency analysis.

Format per module:

```markdown
## Module Name
- Defines: Tables[...], Codeunits[...], Pages[...], Events[...]
- Extends: Tables[... -> ...]
- References: Tables[... from ...], Codeunits[... from ...]
```

---

## Sentry
- Defines: Tables[6151217], Codeunits[6248497, 6248498, 6184892, 6248502, 6248500, 6184897, 6184896, 6150966, 6150994, 6248499], Pages[6185086], Enums[6248500]
- Extends: —
- References: Tables["NPR POS Unit" from POS], Codeunits["NPR POS JavaScript Interface" from POS, "NPR POS Session" from POS, "NPR POS Front End Management" from POS, "NPR POS Setup" from POS, "Json Text Reader/Writer" from infrastructure, "Tenant Information" from system, "Environment Information" from system, "Azure AD Tenant" from system, "Azure Key Vault Mgt." from infrastructure, "Type Helper" from system, "Regex" from system]

## API
- Defines: Tables[6151254, 6151255], Codeunits[6185051, 6185052, 6185053, 6150730, 6151009, 6150902, 6248565, 6248567], Pages[6184874, 6185107, 6185108, 6185109], Enums[6059812, 6059810, 6059813, 6059924], Interfaces["NPR API Module Resolver", "NPR API Request Handler"], PermissionSets[6014408, 6014416], EnumExtensions[6014420]
- Extends: —
- References: Tables["Aggregate Permission Set" from system], Codeunits["Company Triggers" from system, "Environment Information" from system, "Azure AD Tenant" from system, "Type Helper" from system, "Base64 Convert" from system, "Application System Constants" from system, "Confirm Management" from system, "NPR Json Parser" from commerce, "NPR Azure Key Vault Mgt." from infrastructure, "NPR AAD Application Mgt." from system, "NPR Sentry" from infrastructure, "NPR Sentry Span" from infrastructure, "NPR Sentry Http" from infrastructure, "NPR Feature Flags Management" from infrastructure]

## POS Core
- Defines: Tables[6014405, 6014406, 6014487, 6014621, 6014624, 6150702, 6150725, 6150786], Codeunits[6014428, 6014451, 6014561, 6014575, 6014666, 6060078, 6060079, 6060103, 6060137, 6150636, 6150651, 6150700, 6150701, 6150703, 6150705, 6150706, 6150719, 6150729, 6150735, 6150736, 6150740, 6150741, 6150744, 6150745, 6150747, 6150748, 6150751, 6151032, 6151043, 6151432, 6248379], Pages[6150750, 6150724, 6150731, 6150725, 6014409, 6014622, 6014659], Enums[6014511, 6014448], Interfaces["NPR Framework Interface", "NPR IJsonSerializable", "NPR Font Definition", "NPR Front-End Async Request", "NPR ISubMenu"], Queries[POSCreditSalesCrMemo, POSCreditSalesInvoice, POSTurnover]
- Extends: —
- References: Tables["NPR POS Payment Line" from POS Payment], Codeunits["NPR POS Sentry" from Sentry, "NPR API Request Handler" from API, "NPR POS Payment Line" from POS Payment, "NPR Payment Mgt." from POS Payment]

## POS Payment
- Defines: Tables[6184495, 6184513, 6014403, 6184505, 6184485, 6184486], Codeunits[6059795, 6059796, 6059778, 6151042, 6059793, 6059938, 6151064, 6059939, 6151054, 6059789, 6059790, 6059935, 6014600, 6059860, 6184479, 6060021, 6059884], Pages[6184481], Enums[6014487, 6014507], Interfaces["NPR POS IPaymentWFHandler"]
- Extends: —
- References: Tables["NPR POS Sale" from POS Core, "NPR POS Sale Line" from POS Core, "NPR POS Payment Method" from POS Core, "NPR POS Unit" from POS Core, "NPR POS Workshift Checkpoint" from POS Core, "NPR POS Entry" from POS Core], Codeunits["NPR POS Sale" from POS Core, "NPR POS Sale Line" from POS Core, "NPR POS Payment Line" from POS Core, "NPR POS Front End Management" from POS Core, "NPR POS Session" from POS Core, "NPR POS Setup" from POS Core, "NPR Sentry" from Sentry, "NPR Sentry Span" from Sentry, "NPR HU L Audit Mgt." from HUL]

## POS Action
- Defines: Codeunits[6014691, 6150737, 6150854]
- Extends: —
- References: Tables["NPR POS Action" from POS Core], Codeunits["NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core]

## POS Background Tasks
- Defines: Codeunits[6059869], Interfaces["NPR POS Background Task"]
- Extends: —
- References: Codeunits["NPR Sentry" from Sentry, "NPR Sentry Span" from Sentry]

## POS Billing
- Defines: Enums[6059949], Codeunits[6248524]
- Extends: —
- References: Codeunits["Azure AD Tenant" from system, "Environment Information" from system, "Type Helper" from system, "NPR Json Parser" from commerce, "NPR Azure Key Vault Mgt." from infrastructure, "Azure AD User Management" from system]

## POS Compliance
- Defines: Tables[6150637], Codeunits[6150619], Enums["NPR POS Audit Notification"]
- Extends: —
- References: Tables["NPR POS Unit" from POS Core, "NPR POS Entry" from POS Core], Codeunits["NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core, "NPR POS Setup" from POS Core, "NPR POS Sale" from POS Core]

## POS Cross Reference
- Defines: Tables[6014660], Codeunits[6014620]
- Extends: —
- References: Codeunits["NPR RegEx" from system]

## POS Data Source
- Defines: Tables[6150708], Codeunits[6150790]
- Extends: —
- References: Codeunits["NPR POS Data Management", "NPR POS View" from POS Core, "NPR POS Setup" from POS Core, "NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core]

## POS Discount
- Defines: Tables[6014439], Codeunits[6014432, 6014433], Enums[DiscGroupingType, DiscountPeriodType, MixedDiscountType], Queries[CampaignItemsPeriod, MixedDiscItemsMix0, MixedDiscItemsMix1, MixedDiscItemsMix2, PeriodDiscountItems, RetailCampgnItemTotals, RetailCmpgnItemEntries, RetailCmpgnItemsMix0, RetailCmpgnItemsMix1, RetailCmpgnItemsMix2]
- Extends: —
- References: Tables["NPR POS Sale" from POS Core, "NPR POS Sale Line" from POS Core], Codeunits["NPR POS Sales Disc. Calc. Mgt." from POS Core, "NPR Sentry" from Sentry, "NPR Sentry Span" from Sentry]

## POS Info
- Defines: Tables[6150646], Codeunits[6150640]
- Extends: —
- References: Tables["NPR POS Sale" from POS Core, "NPR POS Sale Line" from POS Core, "NPR POS Entry" from POS Core], Codeunits["NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core, "NPR POS Sale" from POS Core, "NPR POS Data Management" from POS Data Source]

## POS Input Box
- Defines: Tables[6060108], Pages[6060096]
- Extends: —
- References: Tables["NPR POS Action" from POS Core, "NPR POS View" from POS Core]

## POS Inventory Set
- Defines: Pages["RISRetailInvSetSub"]
- Extends: —
- References: —

## POS Item Availability
- Defines: Tables[6014637], Codeunits[6059785, 6059783], Pages[6014636, 6014640, 6014641], Queries[UnpostedPOSItemEntries]
- Extends: —
- References: Tables["NPR POS Sale", "NPR POS Sale Line" from POS Core], Codeunits["NPR POS Session", "NPR POS Sale", "NPR POS Sale Line", "NPR POS Front End Management", "NPR POS Setup" from POS Core, "NPR POS Workflow Config" from POS Action, "Item-Check Avail." from inventory]

## POS Parked Sale
- Defines: Tables[6151002], Codeunits[6151006], Pages[6151001, 6151004, 6151003, 6151005]
- Extends: —
- References: Tables["NPR POS Sale", "NPR POS Sale Line" from POS Core], Codeunits["NPR POS Session", "NPR POS Sale", "NPR POS Create Entry" from POS Core, "NPR POS Action: SavePOSSvSl B", "NPR POS Action: LoadPOSSvSl B" from POS Action]

## POS Payment Denomination
- Defines: Tables[6014546, 6150638], Codeunits[6059915], Pages[6014547], Enums["NPR Denomination Type", "NPR Denomination Target"]
- Extends: —
- References: Tables["NPR POS Payment Method" from POS Core, "NPR POS Workshift Checkpoint" from POS Core, "NPR POS Payment Bin Checkp." from POS Posting], Codeunits["NPR POS Payment Bin Checkpoint" from POS Posting]

## POS Posting
- Defines: Tables[6014694, 6059797], Codeunits[6150637, 6150627], Pages[], Enums["NPR POS Pmt. Method Item Type"], Queries[POSEntrySalesLine, POSEntryPaymentLine, WorkshiftPaymentCheckpoint]
- Extends: —
- References: Tables["NPR POS Sale", "NPR POS Sale Line", "NPR POS Entry" from POS Core], Codeunits["NPR POS Session", "NPR POS Sale", "NPR POS Create Entry" from POS Core, "NPR Denomination Mgt." from POS Payment Denomination, "General Ledger Setup" from system, "Dimension Management" from system]

## POS RMA
- Defines: —
- Extends: —
- References: —

## POS Resume Sale
- Defines: Tables[6014418], Codeunits[6150739, 6150743], Pages[]
- Extends: —
- References: Tables["NPR POS Sale" from POS Core, "NPR POS Saved Sale Entry" from POS Parked Sale], Codeunits["NPR POS Session", "NPR POS Create Entry" from POS Core, "NPR POS Saved Sale Mgt." from POS Parked Sale]

## POS Sales Document
- Defines: Tables[6150632, 6151253], Codeunits[6014425, 6014562], Pages[], Enums["PostSalesPostingType", "SalesDocFunctionToRun"]
- Extends: —
- References: Tables["NPR POS Setup" from POS Core, "NPR POS Entry" from POS Core], Codeunits["NPR POS Session" from POS Core, "Sales-Post Prepayments" from system, "Sales Header", "Sales Line" from system]

## POS Security
- Defines: Tables[6014601], Pages[6014602, 6014603]
- Extends: —
- References: —

## POS Service
- Defines: —
- Extends: —
- References: —

## POS Setup
- Defines: Pages[6150707, 6150708]
- Extends: —
- References: Tables["NPR POS Setup", "NPR POS Action" from POS Core], Codeunits["NPR POS Action Management", "NPR POS Action Param. Mgt." from POS Core]

## POS Statistics
- Defines: Tables[6014620], Codeunits[6059818], Pages[], Queries[POSTurnover, POSCreditSalesInvoice, POSCreditSalesCrMemo, POSSalespersonStats, POSSingleStatistics, CashSummary, POSEntryStats, POSSLDiscAmtType, ItemSalesPostings, RetailHeadlineSales]
- Extends: —
- References: Tables["NPR POS Entry", "NPR POS Entry Sales Line", "NPR POS Entry Payment Line" from POS Core], Codeunits["NPR POS Unit" from POS Core, "NPR POS Payment Method" from POS Payment]

## POS Store
- Defines: Tables[6014685, 6014686], Pages[6014687, 6014688, 6014689]
- Extends: —
- References: Tables["NPR POS Store" from POS Core, "NPR Disc. Store Group", "NPR Disc. Store Group Line" from POS Discount, "NPR NpDc Coupon" from commerce, "NPR NpDc Coupon Type" from commerce]

## POS Payment Bin
- Defines: Tables[6150617], Codeunits[6059843, 6150641], Pages[], Queries["NPR POS Bin Entry Calc."]
- Extends: —
- References: Tables["NPR POS Unit" from POS Core, "NPR POS Store" from POS Core, "NPR POS Sale" from POS Core, "NPR POS Entry" from POS Core], Codeunits["NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core, "NPR POS Audit Log Mgt." from POS Compliance, "NPR Sentry" from Sentry]

## POS Tax Calculation
- Defines: Tables[6014570], Codeunits[6014634], Pages[], Enums[6150756, 6150757], Interfaces["NPR POS ITaxCalc"]
- Extends: —
- References: Tables["NPR POS Sale Line" from POS Core], Codeunits["NPR POS Normal Tax", "NPR POS Full Tax", "NPR POS Sales Tax", "NPR No Taxable VAT", "NPR POS Sale Tax Calc."]

## POS Tax Free
- Defines: Tables[], Codeunits[6014610, 6014434], Pages[], Enums[], Interfaces["NPR Tax Free Handler IF", "NPR Tax Free Handler Interface"]
- Extends: —
- References: Tables["NPR POS Sale" from POS Core, "NPR POS Unit" from POS Core], Codeunits["NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core, "NPR POS Setup" from POS Core]

## POS Translation
- Defines: Codeunits[6014679]
- Extends: —
- References: Tables["NPR POS Sale" from POS Core, "NPR POS Sale Line" from POS Core, "Item Translation" from system], Codeunits["Data Type Management" from system]

## POS Unit
- Defines: Tables[6014684, 6151176, 6150631], Pages[]
- Extends: —
- References: Tables["NPR POS Unit" from POS Core, "Job" from system, "Salesperson/Purchaser" from system]

## POS View
- Defines: Tables[6150710, 6059793, 6060098], Codeunits[6059925], Pages[]
- Extends: —
- References: Tables["NPR POS Unit" from POS Core], Codeunits["NPR POS Front End Management" from POS Core, "NPR POS JavaScript Interface" from POS Core, "NPR POS UI Management" from POS Core, "NPR POS Action Management" from POS Core, "NPR POS Session" from POS Core, "NPR POS Setup" from POS Core, "NPR Json Helper" from commerce, "Type Helper" from system, "NPR Azure Key Vault Mgt." from infrastructure]

## POS Costumer Input
- Defines: Tables[6059810, 6151193], Pages[], Enums[6014519, 6014561]
- Extends: —
- References: Tables["NPR POS Entry" from POS Core]

## MPOS
- Defines: Tables[6150657], Codeunits[6059984], Pages[], Enums[]
- Extends: —
- References: —

## Mobile Emergency POS
- Defines: Tables[6150955], Codeunits[6248184], Pages[], Enums[]
- Extends: —
- References: Tables["NPR POS Unit" from POS Core, "NPR POS Payment Method" from POS Payment], Codeunits["Web Service Management" from system, "Environment Information" from system, "Azure AD Tenant" from system, "General Ledger Setup" from system]

## Environment
- Defines: Tables[6059806], Codeunits[6060025], Pages[6150762], Enums[6014516]
- Extends: —
- References: Codeunits["Environment Information" from system, "Active Session" from system]

## Key Vault
- Defines: Codeunits[6014494, 6150930], Pages[6150806]
- Extends: —
- References: Codeunits["App Key Vault Secret Provider" from system, "In Memory Secret Provider" from system]

## Azure Function Management
- Defines: Tables[6151574], Codeunits[6151570, 6151571, 6151572], Pages[]
- Extends: —
- References: Tables["NPR POS Unit" from POS Core], Codeunits["Base64 Convert" from system, "NPR Barcode Lookup Mgt." from commerce]

## Azure AD Application Management
- Defines: Tables[6150915 (Temporary)], Codeunits[6060060]
- Extends: —
- References: Tables["AAD Application" from system, "Access Control" from system, "Aggregate Permission Set" from system], Codeunits["Azure AD Tenant" from system, "NPR Azure Key Vault Mgt." from infrastructure, "Base64 Convert" from system, "Type Helper" from system, "OAuth2" from system, "Graph Mgt - General Tools" from system, "AAD Application Interface" from system]

## CloudflareMedia
- Defines: Tables[6151234], Codeunits[6248556, 6248557], Pages[], Enums[6059922, 6059923], Interfaces["NPR CloudflareMigrationInterface"]
- Extends: —
- References: Codeunits["Environment Information" from system, "Azure AD Tenant" from system, "Cryptography Management" from system, "Type Helper" from system, "Base64 Convert" from system]

## Cognitive Services
- Defines: Tables[6059955, 6059957, 6059958, 6059959, 6059960], Codeunits[6059955], Pages[], Enums[6014441, 6014443]
- Extends: —
- References: Codeunits["Image Helpers" from system]

## DataStructures
- Defines: Codeunits[6059769, 6150898]
- Extends: —
- References: —

## Json
- Defines: Codeunits[6184982, 6059994, 6150648]
- Extends: —
- References: Codeunits["Data Type Management" from system, "Base64 Convert" from system]

## Endpoint
- Defines: Tables[6014674, 6014675], Codeunits[6014675, 6014680], Pages[], XMLports[]
- Extends: —
- References: —

## Feature Flags
- Defines: Tables[6060033, 6060034], Codeunits[6151495, 6184675, 6151498], Pages[6151159, 6151158, 6151160]
- Extends: —
- References: Codeunits["NPR Job Queue Management" from Job Queue, "Environment Information" from system, "Azure AD Tenant" from system, "Base64 Convert" from system, "Confirm Management" from system, "JSON Management" from system]

## Feature Management
- Defines: Tables[6060019], Enums[6014577], Pages[6151094], Interfaces["NPR Feature Management"]
- Extends: —
- References: Codeunits["Application Area Mgmt. Facade" from system]

## File Transfer
- Defines: Tables[6059868], Codeunits[6151611, 6151394], Pages[]
- Extends: —
- References: Codeunits["NPR Azure Key Vault Mgt." from infrastructure, "Base64 Convert" from system]

## BC Health Check
- Defines: Codeunits[6248444, 6248440]
- Extends: —
- References: Tables["Company Information" from system], Codeunits["Web Service Management" from system]

## Job Queue
- Defines: Tables[], Codeunits[6014663], Pages[], Enums[], PermissionSets["NPR Ext JQ Refresher"]
- Extends: —
- References: Tables["Job Queue Entry" from system, "Job Queue Log Entry" from system], Codeunits["NPR Nc Task List Processing" from commerce, "NPR Nc Import List Processing" from commerce, "NPR Feature Flags Management" from Feature Flags, "NPR Monitored Job Queue Mgt." from Job Queue, "Environment Information" from system, "Type Helper" from system, "Session" from system, "Job Queue Dispatcher" from system]

## Reimbursement
- Defines: Tables[6151102, 6151105], Codeunits[6151101, 6151102], Pages[], Enums[]
- Extends: —
- References: Tables["Company" from system], Codeunits["Data Type Management" from system, "Filter Page Builder" from system]

## Replication
- Defines: Tables[6014589], Codeunits[6014589, 6059774], Pages[], Enums[], Interfaces["NPR Replication IEndpoint Meth", "NPR Rep. WS IFunctions"], XmlPorts[], Reports[]
- Extends: —
- References: Tables["NPR Nc Import Type", "NPR Nc Import Entry" from commerce], Codeunits["NPR Nc Import List Processing" from commerce, "NPR Job Queue Param. Str. Mgt." from Job Queue, "NPR Job Queue Management" from Job Queue, "Temp Blob" from system, "Web Request Helper" from system, "Base64 Convert" from system, "Cryptography Management" from system]

## Base Url
- Defines: Codeunits[6151319]
- Extends: —
- References: —

---

## Commerce — NP Designer
- Defines: Codeunits[6248190, "NPR NPDesignerManifestWebHook"], Tables[6151022, "NPR NPDesignerManifest", "NPR NPDesignerManifestLine", "NPR NPDesignerTemplates"], Pages["NPR NPDesignerSetupCard", "NPR NPDesignerTemplateList"]
- Extends: —
- References: Codeunits["Cryptography Management" from system]

## Commerce — Description Control
- Defines: Tables[6059969]
- Extends: —
- References: —
- **Obsolete** (2023-06-28)

## Commerce — Customer Phone Lookup
- Defines: Codeunits[6014437, "TDCPhoneLookup"], Tables["NPR Phone Lookup Buffer"], Pages["NPR Phone Number Lookup", "PhoneNolookup"]
- Extends: —
- References: Tables[Contact, Customer, Vendor, "NPR I-Comm", "NPR MM Member Info Capture"], Codeunits["Contact Business Relation"]

## Commerce — Digital Notification
- Defines: Codeunits[6150963, "DigitalOrderNotifMgt"], Tables["NPR Digital Notification Setup", "NPR Digital Notification Entry", "DigitalDocHeaderBuffer", "DigitalDocLineBuffer"], Pages["DigitalNotificationSetup", "DigitalNotifEntries"], Enums["NPR Digital Document Type"]
- Extends: —
- References: Codeunits["NPR NP Email", "NPR Job Queue Management"]

## Commerce — Digital Receipt
- Defines: Tables["DigitalRcptSetup", "DigitalReceiptSetup", "POSReceiptProfile", "POSSaleDigReceiptEntry", "POSSaleDigitalReceiptEntry"], Codeunits["FiskalyAPI"], Pages["DigitalReceiptSetup", "POSReceiptProfile", "POSReceiptProfiles", "POSSaleDigReceiptEntry", "POSSaleDigitalRcptEntries", "PDFDigitalReceiptViewer"], Enums["ShowQRCodeOn"]
- Extends: —
- References: —

## Commerce — Dimensions
- Defines: Tables[6014430, "PopupDimFilter", "PopUpDimPOSUnitFilter", "POSPaymViewEventSetup", "POSPaymViewLogEntry"], Codeunits["POSEndSaleDimSaleStat", "POSPaymViewEventMgt"], Pages["DimensionValueList", "LineDimensions", "PopupDimFilter", "PopUpDimPOSUnitFilter", "DimSelectMulwFilter", "POSPaymViewEventSetup", "POSPaymViewLogEntries"], Enums["DimPopupFilterType"]
- Extends: —
- References: Tables["NPR POS Sale", "NPR POS Sale Line" from POS Core], Codeunits["DimensionManagement" from system]

## Commerce — Attributes
- Defines: Tables[6014556, "NPR Attribute Translation"], Codeunits["AttItemSearch"], Pages["Attributes", "AttributeCard", "AttributeIDs", "AttributeValues", "AttributeValueLookup", "AttributeTranslations", "NPAttributesFactBox"], Queries["AttributeCodeWhereUsed", "AttributeKeys"]
- Extends: —
- References: —

## Commerce — Group Codes
- Defines: Tables[6059803], Codeunits["GroupCodeUtils"], Pages["NPR Group Codes"]
- Extends: —
- References: —

## Commerce — Distribution
- Defines: Tables["NPR Distrib. Group", "NPR Distrib. Group Members", "NPR Distribution Headers", "NPR Distribution Lines", "NPR Distribution Map"], Codeunits[6151051], Pages["DistribGroupList", "DistribGroup", "DistribGroupMemberList", "DistribGroupMemberCard", "DistribGrpMembListpart", "DistribMatrix", "DistributionPlans", "DistributionPlan", "DistributionHeaders", "DistributionOrders", "DistributionLines"]
- Extends: —
- References: Tables["NPR Item Hierarchy", "NPR Item Hierarchy Line" from inventory, "NPR Retail Repl. Demand Line", "NPR Retail Replenishment Setup" from inventory], Codeunits["Item", "Stockkeeping Unit", "Purchase Line", "Transfer Header", "Transfer Line"]

## Accounts — User Accounts
- Defines: Tables["NPR User Account"], Codeunits["UserAccountMgtImpl"], Pages["UserAccounts"]
- Extends: —
- References: —

## Accounts — Billing
- Defines: Codeunits["EventBillingClient", "BillingDataSenderJQ", "BillingDataCheck"], Enums["BillingEventType", "BillingQueueStatus"]
- Extends: —
- References: —

## Accounts — Member Module
- Defines: Tables["NPR MM Member Info Capture", "NPR MM Membership Entry", "NPR MM Membership Entry Link", "NPR MM Member Card", "NPR MM Member Communication", "NPR MM Loyalty Journal", "NPR MM Loyalty Journal Line Tag", "NPR MM Loyalty Tag", "NPR MM Point Entry Tag", "NPR MM Member Point Entry Tag", "NPR MM Member Notific Entry", "NPR MM Member Notific Setup", "NPR MM Language", "NPR MM Admission Scanner Stations", "NPR MM Admission Service Entry", "NPR MM Admission Service Log", "NPR MM Admission Service Setup", "NPR MM Members Alter Group", "NPR MM Members Alter Line", "NPR MM Membership Auto Renew", "NPR MM Member Arrival Log Entry", "NPR MM Membership Lim Setup", "NPR MM Member Comm Setup", "NPR MM Foreign Members Setup", "NPR MM Members Points Summary"], Codeunits["MMMemberRetailIntegr", "MMMembershipMgtInternal", "MMMemberPOSUI", "MMGDPRManagement", "MMMemberWebServiceMgr", "MMMemberTicketManager", "MMMemberLimMgr", "MMAlterationJnlMgmt", "MMForeignMembersMgr", "MMMembershipAutoRenew", "MMImportMembers", "MMAttemptMemberArrival", "MMMemberCreateDemoData"], Pages["MMCreateMembership", "MMEditMembershipEntries", "MMMembershipKiosk", "MMMembershipLoyaltyJnl", "MMMemberCaptureList", "MMMemberRemoteSearch", "MMMembersAutoRenewList", "MMAdmissionServiceLog", "MMForeignMembersSetup"], Enums["NPR MM Member Unique Identity"], Queries["MMMemberCardNotific"], Reports["MMMemberEvaluation"]
- Extends: —
- References: Tables[Contact, Customer], Codeunits["NPR POS Session" from POS Core]

## Accounts — Intercompany
- Defines: Codeunits["MapIncomItemLines", "PremapIncomItemLines", "PremapIncomingPurchDoc", "ICMapICRBarcodes"]
- Extends: —
- References: —

## Accounts — GDPR
- Defines: Tables["NPR GDPR Setup", "NPR GDPR Agreement", "NPR GDPR Agreement Version", "NPR GDPR Consent Log", "NPR GDPR Anonymization Request", "NPR Customer to Anonymize", "NPR Customer GDPR Log Entries", "NPR Customer GDPR Setup"], Codeunits["NPR GDPR Management"], Pages["GDPRSetup", "GDPRAgreementList", "GDPRAgreementCard", "GDPRAgreementVersions", "GDPRConsentLog", "GDPRAnonymizationReq", "CustomerstoAnonList", "CustomerGDPRLogEntries", "CustomerGDPRSetup"]
- Extends: —
- References: Tables[Customer, Contact]

## Accounts — Rapid Start Base Data
- Defines: Tables["AutoRapidstartImportLog", "BackgroundPackageImport"], Codeunits["RapidStartBaseDataMgt", "ImportBaseNPRData", "BackgroundPackageImp", "ImportPlaywrightNPRData", "PckgeTableNameModifier"], Pages["RapidStartBaseDataImp"]
- Extends: —
- References: —

## Accounts — Auxiliary Tables
- Defines: Tables["AuxGLAccount", "AuxGLEntry"], Codeunits["AuxTablesEventSubs"], Pages["AuxItemLedgerEntries", "AuxValueEntries", "AuxConfTemplateSubform"]
- Extends: —
- References: —

## Accounts — Application Area
- Defines: Codeunits["EnableApplicationAreas"]
- Extends: —
- References: Codeunits["Application Area Mgmt. Facade" from system]

---

## Inventory
- Defines: TableExtensions[6014404], PageExtensions[6014406]
- Extends: Tables["Inventory Setup"]
- References: —

## Inventory Cost Adjmt
- Defines: Codeunits[6014683, 6014684]
- Extends: —
- References: Tables["Inventory Setup", "Sales & Receivables Setup", "Job Queue Entry"], Codeunits["NPR Job Queue Management", "NPR Job Queue Param. Str. Mgt."]

## Item AddOn
- Defines: Tables[6151125, 6151126, 6151127, 6151128, 6151129, 6151141, 6151142, 6151143, 6151267, 6151268, 6059912], Codeunits[6059900, 6151125, 6151129, 6059923], Pages[6150931, 6248192, 6248193, 6185036, 6185037, 6185038], Queries["NPR NpIaPOSEntrySaleLineAddOn"]
- Extends: —
- References: Tables["NPR POS Sale Line", "NPR POS Sale", "NPR POS Entry Sales Line", "Item", "Item Variant", "NPR POS Info", "NPR POS Info Transaction", "NPR TM Ticket", "Language"], Codeunits["NPR POS Session", "NPR POS Sale", "NPR POS Sale Line", "NPR POS Front End Management", "NPR POS Data Management", "NPR POS Create Entry", "NPR POS Sales Disc. Calc. Mgt.", "NPR POS Action: Delete POS Line", "NPR POS Ext.: Line Format.", "NPR POS HTML Disp. Prof.", "NPR POS Proxy - Display", "NPR TM Ticket Retail Mgt.", "NPR AttractionWalletCreate", "NPR NPDesigner", "NPR Json Helper", "Event Subscription"]

## Item Catalog
- Defines: Tables[6060061, 6060063], Codeunits[6060061, 6060062, 6060063, 6060064], Pages[6060061]
- Extends: —
- References: Tables["Nonstock Item", Item, Vendor, "NPR Nc Import Entry", "NPR Attribute", "NPR Attribute Key", "NPR Attribute Value Set", "Purchase Line", "Item Reference", "CSV Buffer", "Unit of Measure", "Item Category", "Manufacturer", "Config. Template Header", "Config. Template Line"], Codeunits["File Management", "Temp Blob", "Data Compression", "NPR Job Queue Param. Str. Mgt.", "Catalog Item Management", "Config. Template Management"]

## Item Category
- Defines: Tables[6059807], Codeunits[6014456], PageExtensions[6014400, 6014446], Queries[6014426, 6014425]
- Extends: Pages["Item Category Card", "Item Categories"]
- References: Tables["Item Category", "Item", "Default Dimension", "Config. Template Header", "Config. Template Line", "VAT Posting Setup", "Item Ledger Entry", "NPR POS Entry Sales Line", "Number Sequence"], Codeunits["Config. Template Management", "Confirm Management", "Dimension Management", "Item Category Management"]

## Item Hierarchy
- Defines: Tables[6151050, 6151051, 6151052], Codeunits[6151050], Pages["NPR Item HierarchyCard", "NPR Item HierarchyList", "NPR Item HierarchyLines", "NPR Item HierarchyListpart"]
- Extends: —
- References: Tables["NPR Retail Campaign Header", "NPR Retail Campaign Line", "NPR Period Discount Line", "NPR Mixed Discount Line", "NPR Retail Repl. Demand Line", "NPR Distribution Setup", "Item", "Item Variant", "AllObjWithCaption"], Codeunits["Item Hierarchy Management"]

## Item Reference
- Defines: TableExtensions[6014440], PageExtensions[6014410, 6014411]
- Extends: Tables["Item Reference"], Pages["Item Reference Entries", "Item Reference List"]
- References: —

## Item Status
- Defines: Tables[6060054], Codeunits[6060055], Pages[6060056]
- Extends: —
- References: Tables["Item", "Sales Line", "Purchase Line"], Codeunits["Item Jnl.-Check Line"]

## Item Worksheet
- Defines: Tables[6060052, 6060053, 6060055, 6060057], Codeunits[6060045, 6060049], Pages[ItemWorksheetTemplates, RegistItemWorkshPage, ItemWorkshAttrFactBox, ItemWorkshFieldSetup, ItemWorkshFieldChanges, ItemWorkshFieldMapping, ItemWorkshMissingSetup, ItemWorkshVrtyMapping, ItemWorkshVrtySubpage, ItemWorkshVrtyValues, ItemWorkshSetupSubpage, ItemWorksExcelColumn, ItemWkshTemplate, ItemWorkshTemplate], XmlPorts[ItemWorkshImportExport, ItemWkshtLineWebImp]
- Extends: —
- References: Tables["NPR Nc Import Entry"], Codeunits["NPR Nc Import List IProcess"]

## Replenishment
- Defines: Tables[6014474, 6151062], Codeunits[6151052], Pages["Item Repl. by Store Matrix", "Retail Replenishment SKU List", "Retail Replenishment Setup", "Ret Repl Transfer Mapp."]
- Extends: —
- References: Tables["NPR Item Hierarchy Line", "NPR Distrib. Group Members", "NPR Distribution Setup", "NPR Retail Repl. Demand Line", "NPR Period Discount Line", "Item", "Stockkeeping Unit"], Codeunits["NPR Retail Campaign Header"]

## Accessories
- Defines: Tables[6014506, 6014507, 6014508], Codeunits[6014506], Pages["NPR Accessory List", "NPR Accessory Unfold Worksheet", "NPR Accessory Unfold Entry", "NPR Accessory Unfold Entries", "POSAccessoryAddOnSlct"]
- Extends: —
- References: Tables["Item", "Item Ledger Entry", "NPR POS Entry Sales Line"], Codeunits["Item Jnl.-Post Line"]

## Coupon
- Defines: Tables[6151599], Codeunits[6151599], Pages["NPR NpDc Coupons", "NPR NpDc Coupon Card", "NPR NpDc Coupon Entries", "NPR NpDc Coupon List Items", "NPR NpDc Coupon Types", "NPR NpDc Arch Coupons", "NPR NpDc Arch Coupon Card", "NPR NpDc Arch Coupon Entries", "NPR NpDc Coupon Setup", "NPR NpDc Act Coup Item List", "NPR NpDc Iss On Sale Setup", "NPR NpDc Iss On Sale Subform", "NPR NpDc Extra Coupon Item", "NPR NpDc Extra Item Qty", "NPR NpDc Extra Item Qty Subform", "NPR NpDc Coupon Modules", "NPR NpDc Ext Coupon Reserv"], Enums[6014462], XmlPorts[6151599, 6151599]
- Extends: —
- References: —

---

## Ecommerce
- Defines: Tables[NpEcStore, NpEcDocument, NpEcCustomerMapping], Codeunits[NpEcWebservice, NpEcSalesDocImpMgt, NpEcPurchDocImportMgt, NpEcSOrderImportCreate, NpEcSOrderImportPost, NpEcSOrderLookup, NpEcSOrderImpDelete, NpEcPInvoiceImpCreate, NpEcPInvoiceLook], Pages[NpEcStores, NpEcStoreCard, NpEcCustomerMapping], XmlPorts[NpEcSalesOrderImport, NpEcPurchInvoiceImport]
- Extends: —
- References: —

## Magento
- Defines: Tables[MagentoSetup, MagentoWebsite, MagentoStore, MagentoStoreItem, MagentoAttribute, MagentoAttributeSet, MagentoCategory, MagentoCategoryLink, MagentoBrand, MagentoDisplayConfig, MagentoDisplayGroup, MagentoCustomerMapping, MagentoContactShipToAdr, MagentoContactPmtMeth, MagentoContactShptMeth, MagentoOrderStatus, MagentoPaymentMapping, MagentoShipmentMapping, MagentoPicture, MagentoPictureLink, MagentoProductRelation, MagentoPaymentGateway, MagentoPaymentLine, MagentoInvCompany, MagentoItemAttr, MagentoItemAttrValue, MagentoCustomOption, MagentoItemCustomOption, MagentoItmCstmOptValue, MagentoCustomerGroup, MagentoAttrLabel, MagentoAttrSetValue, MagentoPostOnImportSetup, MagentoGenSetupBuffer, ExternalPaymentTypeID, PayByLinkSetup], Codeunits[MagentoMgt, MagentoSetupMgt, MagentoGenSetupMgt, MagentoFeature, MagentoFunctions, MagentoWebservice, MagentoItemMgt, MagentoCategoryMgt, MagentoChartMgt, MagentoPictureMgt, MagentoAttrSetMgt, MagentoNpXmlSetupMgt, MagentoNpXmlValueMgt, MagentoNpXmlTriggerMgt, MagentoNpXmlExtItem, MagentoNpXmlExclVat, MagentoNpXmlFIK, MagentoNpXmlFirstname, MagentoNpXmlLastname, MagentoNpXmlGenChildMgt, MagentoNpXmlQtyIncr, MagentoNpXmlStockQty, MagentoNpXmlStockStatus, MagentoNpxmlItemCrossRef, MagentoSelectFiltMgt, MagentoSalesOrderMgt, MagentoLookupSalesOrder, MagentoImpRetOrder, MagentoLookupRetOrder, MagentoOrderStatusMgt, MagentoPmtMgt, MagentoPostPaymentLine, PaymentLineMgt, MagentoProjAvailBalan, MagentoNcTaskCardMgt, MagentoInvNpXmlValue, DefaultPayByLink, UnknownPayByLink], Pages[MagentoSetup, MagentoGenSetupBuffer, MagentoDisplayConfig, MagentoWebsites, MagentoStores, MagentoStoreItems, MagentoStoreItemsCard, MagentoCategories, MagentoCategoryCard, MagentoCategoryList, MagentoCategoryLinks, MagentoChildCategories, MagentoAttributes, MagentoAttrList, MagentoAttributeGroup, MagentoAttributeSets, MagentoAttributeSetList, MagentoBrands, MagentoBrandCard, MagentoCustomerMapping, MagentoCustomerGroups, MagentoInvCompanies, MagentoOrderStatus, MagentoPaymentGateways, MagentoContPmtMethods, MagentoContShipToList, MagentoContShptMethods, MagentoPictures, MagentoItemAttr, MagentoItemAttrValues, MagentoItemPictList, MagentoItemPictFactbox, MagentoItemCOPreview, MagentoProductRelations, MagentoCustomOptionList, MagentoCustomOptionCard, MagentoCustomOptSubform, MagentoItemCstmOptions, MagentoItmCstmOptValue, MagentoDragDropPicAddin, MagentoAttrLabels, MagentoAttrSetValues, MagentoPaymentMapping, MagentoShipmentMapping, MagentoPaymentLineList, MagentoAttrGroupList, PayByLinkSetupCard, PayByLinkDialog], Enums[MagentoOrderStatus, MagentoPaymentType, MagentoApiUsernameType, MagentoCustUpdateMode, MagentoCustomerMapping, MagentoContactShipToAdr, MagDisplayConfigType, MagDisConfSalesType, MagProdRelationType, MagShipmentFeeType, MagentoItemCustomType, MagentoItemAttrValue, MagentoMiniaturePicture, MagentoPictureType, MagentoPicVarietyType, MagGiftVoucherActiv, MagCustOptPriceType, EmailRetailVouchersto, MagentoStoreItemVisibility], Interfaces[PayByLink.Interface], XmlPorts[MagentoAvailInvExp, MagentoDocumentExport, MagentoInvSetApi, ImportMagentoDescription]
- Extends: —
- References: —

## Magento 2
- Defines: Tables[M2AccountSetup, M2AccountComTemplate, M2ContactBuffer, M2ValueBuffer, M2PriceCalcBuffer, M2OneTimePassword, M2IntegrationRecord, AuthenticationLog], Codeunits[M2ServiceLib, M2SetupMgt, M2AccountManager, M2AccountLookupMgt, M2CategoryMgt, M2BrandMgt, M2PictureMgt, M2DemoPictureMgt2, M2SaveValues, M2AccountWebService, M2BudgetWebService, M2POSPriceWebService], Pages[M2ContactList, M2ValueBufferList, M2IntegrationRecords], Enums[M2AccComTemplateType, M2PriceCalcBufferType], XmlPorts[M2Authenticate, M2GetAccount, M2GetExtendedAccount, M2AddAccount, M2UpdateAccount, M2DeleteAccount, M2CreateCorporateAcc, M2ChangeAccountPassword, M2ResetAccountPassword, M2AddShiptoAddress, M2UpdateShiptoAddress, M2DeleteShiptoAddress, M2ShopperRecognition, M2CustomerItemByPeriod, M2ItemAvailabByPeriod, M2ItemPriceRequest, M2POSSvSalePriceReq, M2EstimateDeliveryDate, M2GetBudgetDimValues, M2GetBudgetEntries, M2GetSimpleBudget, M2ListBudgets, M2ListMailingGroups, M2GetWorkingDayCalendar]
- Extends: —
- References: —

## Adyen Reconciliation
- Defines: Tables[AdyenSetup, AdyenMerchantSetup, AdyenMerchantAccount, MerchantCurrencySetup, AdyenReconciliationHdr, AdyenReconciliationLine, AdyenReconciliationLog, AdyenReconciliationCue, AdyenReconLine, AdyenReconLineRelation, AdyenReconsLineRelation, AdyenWebhook, AdyenWebhookSetup, AdyenWebhookLog, AdyenWebhookEventCode, AFRecWebhookRequest], Codeunits[AdyenManagement, AdyenRecReportProcess, AdyenProcessReportReady, AdyenEFTTransPosting, AdyenFeePosting, AdyenTransMatching, AdyenTrMatchingSession, AdyenMissingTransPost, AdyenWebhookProcessing, AdyenTryWebhookProcess, AdyenRecreateRecDoc, AdyenSkipPostCheck, AdyenReconUpgrade, AdyenIntegrationEvents, AFRecAPIRequest], Pages[AdyenSetup, AdyenMerchantSetup, AdyenMerchantAccounts, MerchantCurrencySetup, AdyenReconciliation, AdyenReconciliationList, AdyenReconciliationLines, AdyenReconLineRelation, AdyenReconciliationLogs, AdyenReconciliationCue, AdyenRecActivities, AdyenWebhooks, AdyenWebhookSetupList, AdyenWebhookSetupCard, AdyenWebhookEventCodes, AdyenWebhookLogs, AdyenWHRequestFactbox, AFRecWebhookRequests], Enums[AdyenEnvironmentType, AdyenRecHeaderStatus, AdyenRecLineStatus, AdyenRecLogStatus, AdyenRecLogType, AdyenRecTransType, AdyenReconAmountType, AdyenReportType, AdyenReportProcStatus, AdyenPostingGLAccounts, AdyenMerchantFilterType, AdyenTransRecTable, AdyenWebhookType, AdyenWebhookStatus, AdyenWebhookRequestType, AdyenWebhookEventCode, AdyenWebhookLogType, AdyenWWSSecurityType, MerchantAccount], Reports[AdyenOnPremWebhookInput, AdyenSimulateWebhookReq]
- Extends: —
- References: —

## BTwentyFour Service
- Defines: Tables[BTFServiceSetup, BTFServiceEndPoint, BTFEndPointErrorLog], Codeunits[BTFServiceAPI, BTFRegisterService, BTFNcImportEntry, BTFGetToken, BTFProcessMessage, BTFGetOrders, BTFGetOrderResp, BTFGetInvoices, BTFGetPriCat, BTFJSONResponse, BTFXMLResponse], Pages[BTFServiceSetup, BTFServiceSetupCard, BTFServiceEndPoints, BTFServiceEndpoint, BTFEndPointsErrorLog], Enums[BTFEnvironment, BTFContentType, BTFEndPointMethod, BTFServiceMethod, BTFMessagesStatus, BTFMessagesClass], Interfaces[BTFIEndPoint, BTFIFormatResponse]
- Extends: —
- References: —

## Entria Integration
- Defines: Tables[EntriaIntegrationSetup, EntriaStore, EntriaStoreSyncState], Codeunits[EntriaIntegrationMgt, EntriaAPIHandler, EntriaOrderImpl, EntriaOrderImportJQ, EntriaOrderProcessor], Pages[EntriaIntegrationSetup, EntriaStores, EntriaStoreCard]
- Extends: —
- References: —

## PrintNode
- Defines: Tables[PrintNodeSetup, PrintNodePrinter], Codeunits[PrintNodeMgt, PrintNodeAPIMgt], Pages[PrintNodeSetup, PrintNodePrinterList, PrintNodePrinterSettings]
- Extends: —
- References: —

## Pacsoft
- Defines: Tables[PacsoftSetup, PacsoftPackageCode, PacsoftCustomsItemRows, PacsoftShipmentDocument, PacsoftShipmDocServ], Codeunits[PacsoftManagement], Pages[PacsoftPackageCodes, PacsoftCustomsItemRows, PacsoftShipmDocServ], XmlPorts[PacsoftResponse, PacsoftShipmentDocument]
- Extends: —
- References: —

## Consignor
- Defines: Tables[ConsignorEntry], Codeunits[ConsignorMgt, ConsignorTracking, ConsignorExtMgt]
- Extends: —
- References: —

## Attraction — AttractionWallet
- Defines: Tables[6150937, 6150967, 6150968, 6151146, 6150930, 6150931, 6150933, 6150932], Codeunits[6185062, 6185076, 6185077, 6185068], Enums["NPR WalletPrintType", "NPR WalletLineType", "NPR WalletRole"], Queries["AttractionWalletAssetHist", "AttractionWalletAssets", "AttractionWalletExtRef", "FindAttractionWallets"], Pages["TMPWallet", "TMPAssetHeader", "TMPAssetHeaderRef", "TMPAssetLine", "TMPAssetLineRef"]
- Extends: —
- References: Tables["NPR POS Sale", "NPR POS Sale Line" from POS Core, "NPR NpIa SaleLinePOS AddOn" from Item AddOn], Codeunits["NPR POS Sale" from POS Core, "NPR POS Session" from POS Core, "NPR POS Front End Management" from POS Core, "NPR Sentry" from Sentry, "NPR NpDc Coupon Mgt." from Coupon, "NPR TM Ticket Request Manager" from item-addon, "NPR MM MembershipMgtInternal" from member-module]

## Attraction — External POS Sale
- Defines: Tables[6014606, 6014605, 6150988, "ExternalPOSSaleBuf"], Codeunits[6014637, 6014642, 6248233, 6014625, 6248188, 6014648, "ExternalPOSSalePub", "ExtSaleConvertJQ", "ExtSaleEmailJQ", "ExtSaleSMSJQ"], Pages["NPR External POS Sale Card", "NPR External POS Sales", "NPR External POS Sale Subform", "NPR External POS Sale Pay Sub"]
- Extends: —
- References: Tables["NPR POS Unit", "NPR POS Store" from POS Core, "NPR POS Entry" from POS Core, "NPR Nc Import Entry" from commerce], Codeunits["NPR POS Create Entry" from POS Core, "NPR POS Sale" from POS Core, "NPR EFT Transaction Request" from pos-payment, "NPR EFT Adyen Response Parser" from pos-payment, "NPR EFT Payment Mapping" from pos-payment, "NPR Nc Import List IProcess" from commerce, "NPR Nc Import List IUpdate" from commerce, "NPR Nc Import List ILookup" from commerce]

## Attraction — Retail Item Journal
- Defines: Codeunits[6014421], Pages["NPR Retail Item Reclass Journal"]
- Extends: —
- References: Tables[Item, "Item Reference" from inventory], Codeunits["Unit of Measure Management" from system]

## Localization — Localizations
- Defines: Tables["BGVisionLocalSetup", "HUEInvoiceLocalSetup", "RSLocalisationSetup", "RSBankAccLedgerEntry", "RSCustomerPostingGroup", "RSPurchaseHeader", "RSSalesHeader", "RSVATPostingSetup", "RSVendorPostingGroup", "RSRLocalizationSetup"], Codeunits["BGVISIONLocalMgt", "BGVISIONLocalSubs", "RSLocalisationMgt", "RSLocalisationSubs", "RSRLocalizationMgt"], Pages["BGVISIONLocalSetup", "HUEInvoiceLocalSetup", "RSLocalisationSetup", "RSAppAreaSetup", "RSRLocalizationSetup", "RSRetailAppAreaSetup"], Enums["RSRLocalizationCountry"], Reports["CRONivelationDocument", "CRORetPurchPriceCalc", "CRORetTransRecCalc", "RSCustomerOpenEntries", "RSVendorOpenEntries"]
- Extends: —
- References: —

## Demo
- Defines: Codeunits[6059866]
- Extends: —
- References: Tables["NPR MPOS QR Codes" from MPOS, "NPR Magento Payment Gateway" from magento, "NPR PG Adyen Setup" from adyen, "NPR NpCs Store" from integration], Codeunits["NPR Web Service Auth. Helper" from infrastructure]

## Data Package
- Defines: Tables[6014598], Codeunits[6014628, 6014629], Pages["NPR Managed Package Lookup"]
- Extends: —
- References: Tables["AllObjWithCaption" from system], Codeunits["Temp Blob" from system, "NPR Convert Helper" from infrastructure, "NPR RP Template Header" from integration]
