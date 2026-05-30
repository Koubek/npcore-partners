---
type: concept
tags: [np-retail, integration, ecommerce]
relates: [integration/magento/overview.md, integration/magento-2/overview.md]
updated: 2026-05-09
---

# Ecommerce — Overview

Generic ecommerce platform integration for NP Retail. Handles bidirectional order and invoice data exchange between NP Retail (Business Central) and external ecommerce systems.

## Purpose

- Import sales orders from ecommerce platforms into NP Retail
- Import purchase invoices from ecommerce platforms
- Look up and manage order/invoice status
- Customer mapping between BC and ecommerce platforms
- Configurable store definitions for multi-store setups

## Key Tables

| Table | Purpose |
|-------|---------|
| `NpEcStore` | Store configuration (endpoint, auth, mappings) |
| `NpEcDocument` | Document tracking for imported orders/invoices |
| `NpEcCustomerMapping` | Maps ecommerce customers to BC customers |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NpEcWebservice` | Public API for ecommerce web service calls |
| `NpEcSalesDocImpMgt` | Sales document import management |
| `NpEcPurchDocImportMgt` | Purchase document import management |
| `NpEcSOrderImportCreate` | Sales order import creation logic |
| `NpEcSOrderImportPost` | Sales order import posting logic |
| `NpEcSOrderLookup` | Sales order lookup in ecommerce system |
| `NpEcSOrderImpDelete` | Sales order import deletion cleanup |
| `NpEcPInvoiceImpCreate` | Purchase invoice import creation |
| `NpEcPInvoiceLook` | Purchase invoice lookup |

## XMLPorts

| XMLPort | Purpose |
|---------|---------|
| `NpEcSalesOrderImport` | Sales order import XML schema |
| `NpEcPurchInvoiceImport` | Purchase invoice import XML schema |

## Key Pages

| Page | Purpose |
|------|---------|
| `NpEcStores` | List of configured ecommerce stores |
| `NpEcStoreCard` | Store detail card for setup |
| `NpEcCustomerMapping` | Customer mapping configuration |
