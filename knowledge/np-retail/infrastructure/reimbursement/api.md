---
type: reference
tags: [np-retail, infrastructure, reimbursement]
relates: [np-retail/infrastructure/reimbursement/overview.md]
updated: 2026-05-09
---

# Reimbursement Module — API Reference

## Tables (Public)

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6151102 | "NPR NpRi Reimbursement" | Reimbursement | Party Type, Party No., Template Code | Main reimbursement record: tracks collection/reimbursement dates, balance via FlowField, deactivation flag, date range filters |
| 6151105 | "NPR NpRi Party" | Reimbursement Party | Party Type, No. | Party definition with schedule (Reimburse every, Next Posting Date Calculation), polymorphic lookup via Table No. |
| — | "NPR NpRi Party Type" | Party Type | Code | Party type definitions with default schedule values and target table mapping |
| — | "NPR NpRi Reimbursement Template" | Reimbursement Template | Code | Template defining data collection module, reimbursement module, posting description, data collection filters (XML) |
| — | "NPR NpRi Reimbursement Entry" | Reimbursement Entry | Party Type, Party No., Template Code, Entry Type, Open, Posting Date | Individual entry: Data Collection, Manual Application, or Reimbursement type, with Amount, Remaining Amount, Open/Closed tracking |
| — | "NPR NpRi Reimbursement Module" | Reimbursement Module | Code | Registered reimbursement module definitions |
| — | "NPR NpRi Provision Setup" | Provision Setup | — | Configuration for provision-based reimbursement |
| — | "NPR NpRi Purch. Doc. Disc. Setup" | Purchase Doc Discount Setup | — | Configuration for purchase document discount reimbursement |
| — | "NPR NpRi Sales Inv. Setup" | Sales Invoice Setup | — | Configuration for sales invoice reimbursement |
| — | "NPR NpRi Sales Inv. Setup Line" | Sales Invoice Setup Line | — | Line details for sales invoice reimbursement setup |

## Codeunits

| ID | Name | Access | Description |
|----|------|--------|-------------|
| 6151101 | "NPR NpRi Data Collection Mgt." | Internal | Data collection engine: RunDataCollections, RunDataCollection, InsertEntry, InitEntry, request page management, filter persistence as XML |
| 6151102 | "NPR NpRi Reimbursement Mgt." | Internal | Reimbursement engine: RunReimbursements, RunReimbursement, ManualApplyEntries, CancelManualApplication, CalculateApplyEntry |
| — | "NPR NpRi Collect Cust. Ledgers" | — | Collects outstanding customer ledger entries |
| — | "NPR NpRi Collect Vendor Ledgers" | — | Collects outstanding vendor ledger entries |
| — | "NPR NpRi Collect GL Entries" | — | Collects general ledger entries |
| — | "NPR NpRi Collect Loy. Points" | — | Collects loyalty point balances |
| — | "NPR NpRi Reimburse Purch. Doc. Disc." | — | Creates reimbursements for purchase document discounts |
| — | "NPR NpRi Reimburse Sales Inv." | — | Creates reimbursements for sales invoices |
| — | "NPR NpRi Reimburse Provision" | — | Handles provision-based reimbursement |
| — | "NPR NpRi Task Queue Mgt." | — | Manages task queue scheduling for reimbursement jobs |
| — | "NPR NpRi Setup Mgt." | Public | Setup management for the reimbursement module |

## Pages (Public)

| ID | Name | PageType | SourceTable | Description |
|----|------|----------|-------------|-------------|
| — | "NPR NpRi Parties" | List | NPR NpRi Party | Party list page |
| — | "NPR NpRi Party Types" | List | NPR NpRi Party Type | Party type configuration |
| — | "NPR NpRi Reimbursements" | List | NPR NpRi Reimbursement | Reimbursement list |
| — | "NPR NpRi Reimbursement Entries" | List | NPR NpRi Reimbursement Entry | Reimbursement entries list |
| — | "NPR NpRi Reimbursement Templates" | List | NPR NpRi Reimbursement Templ. | Template configuration |
| — | "NPR NpRi Reimbursement Modules" | List | NPR NpRi Reimbursement Module | Registered module list |
| — | "NPR NpRi Provision Setup" | Card | NPR NpRi Provision Setup | Provision setup card |
| — | "NPR NpRi Purch. Doc. Disc. Setup" | Card | NPR NpRi PurchDocDiscSetup | Purchase discount setup |
| — | "NPR NpRi Sales Inv. Setup" | Card | NPR NpRi SalesInvSetup | Sales invoice setup |
| — | "NPR NpRi Sales Inv. Setup Subpage" | ListPart | NPR NpRi SalesInvSetupLine | Setup line subpage |

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| — | "NPR NpRi Account Type" | Account Type | — | Distinguishes account types for reimbursement entries |
