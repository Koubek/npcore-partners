---
type: reference
tags: [np-retail, pos, pos-info, tables, codeunits, pages, events]
relates:
  - np-retail/pos/pos-info/overview.md
updated: 2026-05-09
---

# POS Info — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150646 | NPR POS Info Lookup | POS Info Lookup | Entry No. (PK) | Temporary lookup buffer for table-type input. Fields: Table No., Primary Key, Field 1-6, RecID |
| — | NPR POS Info Lookup Setup | POS Info Lookup Setup | — | Configuration for table lookup behavior per info code |
| — | NPR POS Info Transaction | POS Info Transaction | Register No. + Sales Ticket No. + Sales Line No. | Stores collected info values per sale line/header. Fields: POS Info Code, POS Info, Line Type, Entry No., Quantity, Net Amount, Gross Amount, Discount Amount, No., Price |
| — | NPR POS Info POS Entry | POS Info POS Entry | POS Entry No. + POS Info Code + Entry No. | Persists info data to posted POS entries |
| — | NPR POS Info Link Table | — | Table ID + Primary Key + POS Info Code | Links info codes to source tables with "When to Use" condition (Always/Positive/Negative) |
| — | NPR POS Info | POS Info | Code | Defines info types: Type (Request Data/Show Message/Write Default), Input Type (Text/Table/SubCode), Input Mandatory, Once per Transaction, Copy from Header, Set POS Sale Line Color to Red |

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6150640 | NPR POS Info Management | Core management — collection, application, persistence, data source extension |

### NPR POS Info Management Key Procedures

| Procedure | Description |
|-----------|-------------|
| `CollectPOSInfo(var Rec: NPR POS Sale Line)` | Collect info on line insert — fires linked info types for Item |
| `ApplyPOSInfo(var Rec: NPR POS Sale Line)` | Apply collected info to sale line |
| `ProcessPOSInfoMenuFunction(pSaleLinePos, pPOSInfoCode, pApplicScope, pClearInfo, UserInputString): Boolean` | Manual info collection via menu action |
| `ProcessPOSInfoText(pSaleLinePos, pSalePos, pPOSInfoCode, pInfoText)` | Process text-based POS info input |
| `DeleteLine(var SaleLinePOS)` | Clean up info when sale line is deleted |
| `RetrieveSavedLines(ToSalePOS, FromSalePOS)` | Transfer info when resuming saved sale |
| `CopyPOSInfoTransFromHeader(SaleLinePos, var POSInfoTransaction): Boolean` | Copy header-level info to new lines |
| `CopyPOSInfo(var SaleLinePOS, POSSaleLine, SaleLineNo)` | Copy info from posted POS entry sale line |
| `GetPOSInfo(POSInfoCode, RegisterNo, SalesTicketNo, LineNo): Text[250]` | Retrieve stored info value |
| `GetPOSInfo(POSInfoCode, RegisterNo, SalesTicketNo): Text[250]` | Retrieve header-level info value |
| `UpsertPOSInfo(POSInfoCode, SalePOSLine, POSInfoText)` | Create or update info for a sale line |
| `UpsertPOSInfo(POSInfoCode, SalePOS, POSInfoText)` | Create or update info for a sale header |
| `DeletePOSInfoTransaction(RegisterNo, SalesTicketNo, SalesLineNo, POSInfoCode, POSInfo)` | Delete specific info entry |
| `FindPOSInfoTransaction(RegisterNo, SalesTicketNo, SalesLineNo, POSInfoCode, POSInfo): Boolean` | Check if info exists |
| `PosInfoInputTextRequired(POSInfo): Boolean` | Check if text input is needed |

### Events

| Event | Source | Description |
|-------|--------|-------------|
| OnBeforeValidateCustomerNoSalePos | NPR POS Sale, Customer No. BeforeValidate | Triggers customer-linked info collection |
| OnAfterInsertPOSEntry | NPR POS Create Entry, OnAfterInsertPOSEntry | Copies info to POS Entry on sale completion |
| OnAfterDeleteSalePOS | NPR POS Sale, OnAfterDelete | Cleans up header-level info on sale delete |
| OnAfterDeleteSaleLinePOS | NPR POS Sale Line, OnAfterDelete | Cleans up line-level info on line delete |
| OnGetLineStyle | NPR POS Ext.: Line Format., OnGetLineStyle | Sets red line color for flagged info |
| OnGetLineFormatting | NPR POS Ext.: Line Format., OnGetLineFormatting | Highlights lines with flagged info |

### Data Source Extension Subscriptions

| Event | Description |
|-------|-------------|
| OnDiscoverDataSourceExtensions | Register POS_INFO extension on Sale/SaleLine data sources |
| OnGetDataSourceExtension | Add columns: POS_INFO.<Code> for each front-end-available info code |
| OnDataSourceExtensionReadData | Populate POS_INFO columns per row from NPR POS Info Transaction |

## Pages

| Name | Source Table | Purpose |
|------|-------------|---------|
| NPR POS Info Lookup | NPR POS Info Lookup | Table lookup page for Request Data - Table type |
| NPR POS Info: Request Text | — | Text input dialog for Request Data - Text type |
| NPR POS Info List | NPR POS Info | Info type definition list |
| NPR POS Info Card | NPR POS Info | Info type definition card |
| NPR POS Info Links | — | Info-to-table link configuration |
| NPR POS Info Subform | — | Transaction info subform |
| NPR POS Info Entry | — | POS entry info display |
| NPR POS Info Lookup Field Setup | NPR POS Info Lookup Setup | Lookup field configuration |
