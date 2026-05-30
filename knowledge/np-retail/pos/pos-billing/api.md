---
type: reference
tags: [np-retail, pos, pos-billing, tables, codeunits, enums, pages]
relates:
  - np-retail/pos/pos-billing/overview.md
updated: 2026-05-09
---

# POS Billing — API Reference

## Enums

| ID | Name | Values | Extensible |
|----|------|--------|------------|
| 6059949 | NPR POS Lic. Billing Lic. Type | _(0), months03(3), months12(12) | false |
| — | NPR POS Lic. Bill. User Status | Active, SuspendedAutomatically, SuspendedManually | — |

## Tables

| ID | Name | Key Fields | Description |
|----|------|------------|-------------|
| — | NPR POS License Billing User | User Security ID, License Type, Status | Per-user license assignment with status tracking |
| — | NPR POS Lic. Billing Allowance | Pool Id, License Type | License allowance per pool (synced from billing API). Fields: Name, Total Licenses, Tenant Id, Environment Name, Company Name, Status, Renewal Month/Day, Period Months, Valid Since/Until, Created/Updated At |

## Codeunits

| ID | Name | SingleInstance | Purpose |
|----|------|---------------|---------|
| 6248524 | NPR POS License Billing Mgt. | Yes | Core license billing logic. Handles API sync, user validation, allowance enforcement |
| — | NPR POS License Billing Feat. | No | Feature flag for license billing |
| — | NPR POS License Billing Upgrd. | No | Upgrade codeunit for schema/data migration |

### NPR POS License Billing Mgt. Key Procedures

| Procedure | Description |
|-----------|-------------|
| `GetAllowedLicenses(): Integer` | *(Obsolete — per-user model)* |
| `GetCustomerPortalUrl(): Text` | Returns URL for buying more licenses |
| `ForceSyncCurrentLicenseAllowanceFromApi(): Boolean` | Force re-sync allowances from billing API |
| `OnActivateLicensedUser(var POSLicBillingUser)` | Validates user activation against allowance limits |
| `GetAllowanceDictionaryPerLicenseType(var SuccessSynced): Dictionary of [Integer, Integer]` | Returns license type → allowance mapping |
| `SyncTenantEnvironmentCompany(ShowErrorMessage)` | Syncs tenant → environment → company hierarchy |
| `ProceedLicenseValidationFromPOS()` | Entry point from POS Session initialization |
| `TrySyncTenantEnvironmentCompany()` | Try-function for hierarchy sync |
| `SyncTenant()` | Check/create tenant in billing API |
| `SyncEnvironment()` | Check/create environment |
| `SyncCompany()` | Check/create company |
| `TenantExists(): Boolean` | Checks via GET /tenants/{id} |
| `CreateTenant()` | POST /tenants with Azure AD domain |
| `EnvironmentExists(): Boolean` | Checks via GET /tenants/{id}/environments/{name} |
| `CreateEnvironment()` | POST /tenants/{id}/environments |
| `CompanyExists(): Boolean` | Checks via GET /tenants/{id}/environments/{env}/companies/{name} |
| `CreateCompany()` | POST /tenants/{id}/environments/{env}/companies |
| `SyncCurrentLicenseAllowanceFromApi(): Boolean` | Refresh + persist + invalidate |
| `PersistLicenseAllowance(var AllowanceTemp)` | Merge API allowances into table |
| `InvalidateLicensedUsers()` | Mark users exceeding allowance as SuspendedAutomatically |
| `ParseLicenseAllowanceJsonToTable(var JsonParser, var AllowanceTemp)` | Parse API JSON response |
| `UpdateLastLogin()` | Update last login timestamp (5-min throttle) |

### Events

| Event | Source | Type | Description |
|-------|--------|------|-------------|
| OnPOSSessionInitialize | POS Session, OnInitialize | EventSubscriber | Triggers license validation from POS start |
| OnAfterValidateStatusEvent | NPR POS License Billing User, AfterValidate Status | EventSubscriber | Validates user activation on status change |

## Pages

| Name | Source Table | Purpose |
|------|-------------|---------|
| — | NPR POS License Billing User (list+card) | User license assignment management |
| — | NPR POS Lic. Billing Allowance (list) | Allowance overview per pool |
