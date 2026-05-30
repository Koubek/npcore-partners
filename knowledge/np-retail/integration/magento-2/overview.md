---
type: concept
tags: [np-retail, integration, magento-2]
relates: [integration/magento/overview.md, integration/ecommerce/overview.md]
updated: 2026-05-09
---

# Magento 2 — Overview

Magento 2.x integration for NP Retail. Provides B2B-focused API services for customer account management, budgets, pricing, and shopper recognition via SOAP/XML web services.

## Purpose

- B2B customer account management (create, read, update, delete accounts)
- Corporate account management with budget tracking
- Customer shipping address management
- Shopper recognition and authentication
- POS price calculation requests for B2B customers
- Item availability and pricing by period
- Budget dimension values and budget entries retrieval
- Working day calendar integration
- Picture/media management for products
- Brand management
- Category synchronization
- One-time password authentication flow
- Mailing groups management

## Submodules

| Submodule | Purpose |
|-----------|---------|
| **M2 Integration** | Core integration orchestration with child modules: |
| — Area Management | Area-based configuration |
| — Helpers | Utility functions |
| — MSI Integration | Multi-Source Inventory support |
| — Record Change Management | Track changes for delta syncs |

## Key Tables

| Table | Purpose |
|-------|---------|
| `M2AccountSetup` | B2B account setup configuration |
| `M2AccountComTemplate` | Account communication template |
| `M2ContactBuffer` | Contact data buffer for import |
| `M2ValueBuffer` | Value data buffer |
| `M2PriceCalcBuffer` | Price calculation buffer (in _public) |
| `M2OneTimePassword` | One-time password authentication store |
| `M2IntegrationRecord` | Integration record tracking |
| `AuthenticationLog` | Authentication attempt logging |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `M2ServiceLib` | Core service library — XML message building and API communication |
| `M2SetupMgt` | Setup and configuration management |
| `M2AccountManager` | B2B account lifecycle management |
| `M2AccountLookupMgt` | Account lookup and search |
| `M2CategoryMgt` | Category management |
| `M2BrandMgt` | Brand management |
| `M2PictureMgt` | Picture management |
| `M2DemoPictureMgt2` | Demo picture management |
| `M2SaveValues` | Value storage operations |
| `M2AccountWebService` | Account web service API (in _public) |
| `M2BudgetWebService` | Budget web service API (in _public) |
| `M2POSPriceWebService` | POS price query web service (in _public) |

## XMLPorts

| XMLPort | Purpose |
|---------|---------|
| `M2Authenticate` | Customer authentication request |
| `M2GetAccount` | Get account details |
| `M2GetExtendedAccount` | Get extended account info |
| `M2AddAccount` | Create new account |
| `M2UpdateAccount` | Update existing account |
| `M2DeleteAccount` | Delete account |
| `M2CreateCorporateAcc` | Create corporate account |
| `M2ChangeAccountPassword` | Change account password |
| `M2ResetAccountPassword` | Reset account password |
| `M2AddShiptoAddress` | Add ship-to address |
| `M2UpdateShiptoAddress` | Update ship-to address |
| `M2DeleteShiptoAddress` | Delete ship-to address |
| `M2ShopperRecognition` | Shopper recognition request |
| `M2CustomerItemByPeriod` | Customer items by period |
| `M2ItemAvailabByPeriod` | Item availability by period |
| `M2ItemPriceRequest` | Item price request |
| `M2POSSvSalePriceReq` | POS service sale price request |
| `M2EstimateDeliveryDate` | Estimated delivery date request |
| `M2GetBudgetDimValues` | Get budget dimension values |
| `M2GetBudgetEntries` | Get budget entries |
| `M2GetSimpleBudget` | Get simple budget info |
| `M2ListBudgets` | List budgets |
| `M2ListMailingGroups` | List mailing groups |
| `M2GetWorkingDayCalendar` | Get working day calendar |
