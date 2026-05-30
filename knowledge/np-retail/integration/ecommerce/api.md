---
type: reference
tags: [np-retail, integration, ecommerce, tables, codeunits, pages, xmlports]
relates: [integration/ecommerce/overview.md]
updated: 2026-05-09
---

# Ecommerce — API Reference

## Tables

### "NpEcStore"
Store configuration master. Fields include endpoint URLs, authentication credentials, default mappings, and status flags for each configured ecommerce store.

### "NpEcDocument"
Tracks imported documents (sales orders, purchase invoices). Links external ecommerce documents to their BC counterparts. Fields include `External Document No.`, `BC Document No.`, `Document Type`, `Status`, `Import Date/Time`.

### "NpEcCustomerMapping"
Maps ecommerce customer identifiers to BC Customer No. Fields: `Ecommerce Customer ID`, `BC Customer No.`, `Store Code`, `Last Sync Date`.

## Codeunits

### "NpEcWebservice" (Public)
Entry point for external web service calls from ecommerce platforms. Handles authentication, request routing, and response formatting.

### "NpEcSalesDocImpMgt"
Manages the import lifecycle of sales documents: fetch from ecommerce system, validate, transform to BC sales orders.

### "NpEcPurchDocImportMgt"
Manages the import lifecycle of purchase documents: fetch from ecommerce system, validate, transform to BC purchase invoices.

### "NpEcSOrderImportCreate"
Creates BC sales orders from imported ecommerce sales order data. Handles line-item mapping, pricing, and customer resolution.

### "NpEcSOrderImportPost"
Posts completed sales orders in BC after successful validation.

### "NpEcSOrderLookup"
Looks up order status and details in the ecommerce system from within BC.

### "NpEcSOrderImpDelete"
Cleans up failed or cancelled import records and associated temporary data.

### "NpEcPInvoiceImpCreate"
Creates BC purchase invoices from imported ecommerce purchase invoice data.

### "NpEcPInvoiceLook"
Looks up purchase invoice status in the ecommerce system.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `NpEcStores` | NpEcStore | List of ecommerce stores |
| `NpEcStoreCard` | NpEcStore | Store detail card |
| `NpEcCustomerMapping` | NpEcCustomerMapping | Customer mapping entries |

## XMLPorts

| XMLPort | Purpose |
|---------|---------|
| `NpEcSalesOrderImport` | Defines XML schema for importing sales orders from ecommerce platforms |
| `NpEcPurchInvoiceImport` | Defines XML schema for importing purchase invoices from ecommerce platforms |
