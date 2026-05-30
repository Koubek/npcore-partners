---
type: reference
tags: [np-retail, integration, magento-2, tables, codeunits, pages, enums, xmlports]
relates: [integration/magento-2/overview.md]
updated: 2026-05-09
---

# Magento 2 — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `M2AccountSetup` | B2B account configuration (endpoints, auth, defaults) |
| `M2AccountComTemplate` | Communication templates for account-related messages |
| `M2ContactBuffer` | Temporary buffer for contact data during import |
| `M2ValueBuffer` | Temporary buffer for value-based data |
| `M2PriceCalcBuffer` | Price calculation buffer (fields: customer, item, qty, price) |
| `M2OneTimePassword` | OTP storage (fields: Contact No., Password, Expiry, Used) |
| `M2IntegrationRecord` | Integration record status tracking |
| `AuthenticationLog` | Authentication logs (timestamp, user, success/failure, IP) |

## Codeunits

### "M2ServiceLib"
Core service library. Builds and parses SOAP/XML messages for Magento 2 API communication. Handles authentication tokens, request envelopes, and response parsing.

### "M2SetupMgt"
Manages integration setup — store configuration, API endpoint mapping, authentication profile management.

### "M2AccountManager"
Full B2B account lifecycle: create, read, update, delete operations. Manages customer data transformation between BC and Magento 2 formats.

### "M2AccountLookupMgt"
Account search and lookup — finds accounts by various criteria, supports filtering and pagination.

### "M2CategoryMgt"
Category sync management — pushes category structure from BC to Magento 2.

### "M2BrandMgt"
Brand management — syncs brand definitions between systems.

### "M2PictureMgt"
Product image management — uploads, updates, and deletes product images.

### "M2DemoPictureMgt2"
Demo-oriented picture management for sample data scenarios.

### "M2SaveValues"
Persists value buffer data to target tables during import operations.

### "M2AccountWebService" (Public)
Exposes account management as a web service for Magento 2 to call. Handles inbound account operations.

### "M2BudgetWebService" (Public)
Exposes budget data as a web service. Returns budget dimensions, entries, and summaries.

### "M2POSPriceWebService" (Public)
POS price calculation web service. Accepts customer + item requests and returns calculated prices with B2B discounts.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `M2ContactList` | M2ContactBuffer | Contact buffer list |
| `M2ValueBufferList` | M2ValueBuffer | Value buffer list |
| `M2IntegrationRecords` | M2IntegrationRecord | Integration record monitoring |

## Enums

| Enum | Purpose |
|------|---------|
| `M2AccComTemplateType` | Account communication template type |
| `M2PriceCalcBufferType` | Price calculation buffer type classification |

## XMLPort Details

The module uses a request/response XMLPort pattern for each service operation:

| XMLPort | Direction | Message Type |
|---------|-----------|-------------|
| `M2Authenticate` | Outbound | AuthenticationRequest/AuthenticationResponse |
| `M2GetAccount` | Outbound | GetAccountRequest/GetAccountResponse |
| `M2GetExtendedAccount` | Outbound | ExtendedAccountRequest/Response |
| `M2AddAccount` | Outbound | AddAccountRequest/AddAccountResponse |
| `M2UpdateAccount` | Outbound | UpdateAccountRequest/Response |
| `M2DeleteAccount` | Outbound | DeleteAccountRequest/Response |
| `M2CreateCorporateAcc` | Outbound | CreateCorporateAccountRequest/Response |
| `M2ChangeAccountPassword` | Outbound | ChangePasswordRequest/Response |
| `M2ResetAccountPassword` | Outbound | ResetPasswordRequest/Response |
| `M2AddShiptoAddress` | Outbound | AddAddressRequest/AddAddressResponse |
| `M2UpdateShiptoAddress` | Outbound | UpdateAddressRequest/Response |
| `M2DeleteShiptoAddress` | Outbound | DeleteAddressRequest/Response |
| `M2ShopperRecognition` | Outbound | ShopperRecognitionRequest/Response |
| `M2CustomerItemByPeriod` | Outbound | CustomerItemByPeriodRequest/Response |
| `M2ItemAvailabByPeriod` | Outbound | ItemAvailabilityRequest/Response |
| `M2ItemPriceRequest` | Outbound | ItemPriceRequest/ItemPriceResponse |
| `M2POSSvSalePriceReq` | Outbound | POSServiceSalePriceRequest/Response |
| `M2EstimateDeliveryDate` | Outbound | EstimateDeliveryDateRequest/Response |
| `M2GetBudgetDimValues` | Outbound | GetBudgetDimValuesRequest/Response |
| `M2GetBudgetEntries` | Outbound | GetBudgetEntriesRequest/Response |
| `M2GetSimpleBudget` | Outbound | GetSimpleBudgetRequest/Response |
| `M2ListBudgets` | Outbound | ListBudgetsRequest/ListBudgetsResponse |
| `M2ListMailingGroups` | Outbound | ListMailingGroupsRequest/Response |
| `M2GetWorkingDayCalendar` | Outbound | GetWorkingDayCalendarRequest/Response |
