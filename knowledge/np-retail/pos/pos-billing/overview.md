---
type: concept
tags: [np-retail, pos, pos-billing]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/infrastructure/sentry/overview.md
  - np-retail/infrastructure/api/overview.md
updated: 2026-05-09
---

# POS Billing Module

License billing and user entitlement management for NP Retail POS. Integrates with an external billing API to validate per-user licensing, enforce seat limits, and sync tenant/environment/company hierarchy.

## Architecture

The module manages a three-level hierarchical synchronization with the POS Billing API:
1. **Tenant** — Azure AD tenant ID synced to billing service
2. **Environment** — BC environment (prod only for controlled envs)
3. **Company** — Individual BC company within the environment

### License Types

`NPR POS Lic. Billing Lic. Type` enum (6059949) defines billing periods:
- `_` (0) — Empty/default
- `months03` (3) — 3-month license
- `months12` (12) — 1-year license

### User Statuses

`NPR POS Lic. Bill. User Status` enum defines:
- Active
- SuspendedAutomatically
- SuspendedManually

### Key Flow

1. POS Session initializes → `OnInitialize` event fires
2. `POSLicenseBillingMgt.ProceedLicenseValidationFromPOS()` checks feature flag
3. If SaaS + Production + feature enabled: calls billing API to get current allowances
4. Persists allowances to `NPR POS Lic. Billing Allowance` table
5. Validates current user against `NPR POS License Billing User` table
6. If user not found or suspended → error with instructions

### Allowance Enforcement

When a user is activated (`OnActivateLicensedUser`):
1. Fetches current allowance from API (or cached)
2. Counts active users per license type
3. If count ≥ allowance → error with link to customer portal to buy more

### Feature Guard

The license billing feature is controlled by a feature flag (`POSLicenseBillingFeat`) and can be bypassed with the `POS_BILLING_INTEGRATION_DEV` compiler symbol for testing.

### API Integration

- Base URL: `https://bc-pos-billing-api.npretail.app/api` (production) or `.npretail-prelive.app/api` (dev)
- Auth: Bearer token from Azure Key Vault (`NpPosBillingLicenseApiKey`)
- Endpoints: `/tenants`, `/tenants/{id}/environments`, `/tenants/{id}/environments/{env}/companies`, `/tenants/{id}/environments/{env}/companies/{company}/licenses/current`

## Dependencies

- **POS Core** — POS Session initialization trigger
- **API** — JSON parsing via NPR Json Parser
- **Sentry** — Error logging via `Session.LogMessage`
- **Infrastructure** — Azure AD Tenant, Environment Information, Azure Key Vault
