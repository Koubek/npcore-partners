---
type: concept
tags: [np-retail, infrastructure, azure-ad]
relates: [np-retail/infrastructure/key-vault/overview.md, np-retail/infrastructure/environment/overview.md]
updated: 2026-05-09
---

# Azure AD Application Management Module

The Azure AD (Entra ID) Application Management module automates the creation, registration, and permission management of Microsoft Entra ID applications from within Business Central. It uses Microsoft Graph API to manage the entire application lifecycle.

## Purpose

- **Automated App Creation** — Creates Entra ID applications in the tenant via Graph API (`POST /v1.0/applications`)
- **Secret Management** — Generates client secrets with configurable expiry (up to 100 years) via `POST /v1.0/applications/{objectId}/addPassword`
- **Admin Consent** — Grants admin consent to newly created apps via OAuth2 admin consent flow
- **Permission Set Assignment** — Links Entra ID applications to Business Central permission sets (e.g., NPR API permissions)
- **Duplicate Detection** — Searches for existing apps with the same display name before creating new ones
- **Regeneration** — Supports regenerating secrets for existing Entra ID applications

## Architecture

```
User / Setup Code
       ↓
NPR AAD Application Mgt. (6060060)
       ↓
  ┌──────────────────────────────────────┐
  │  Graph API Operations                │
  │  → CreateApplication (POST)          │
  │  → FindExistingApps (GET, $filter)   │
  │  → AddPassword (POST /addPassword)   │
  │  → GetAccessToken (OAuth2)           │
  ├──────────────────────────────────────┤
  │  Consent Management                  │
  │  → OAuth2.RequestClientCredentials   │
  │    AdminPermissions                  │
  ├──────────────────────────────────────┤
  │  BC Registration                     │
  │  → AADApplication.Create             │
  │  → AddPermissionSet                  │
  └──────────────────────────────────────┘
```

## Secret Security

- All secrets are marked `[NonDebuggable]`
- Graph API client credentials (`AzureADAppMgtClientId`, `AzureADAppMgtClientSecret`) are retrieved from Azure Key Vault via the Key Vault module
- Access tokens are cached in memory with expiry-based refresh
- Secrets are base64-decoded from JWT token parts

## Key Design Decisions

- Uses the OAuth2 control add-in (`NPR OAuth ControlAddIn`) for interactive token acquisition with admin consent
- Retries app creation if Graph API is slow to propagate (3 attempts with 20s sleep)
- The `NPR Entra App Permission` table (6150915) is a temporary table used as a permission picker page
- Permission sets are filtered to `NPR API*` pattern when looking up in the setup page
- Compile-time conditional for `OnLookup` trigger (not available on BC17-22)

## Dependencies

- **Azure Key Vault** — For Graph API client credentials
- **Azure AD Tenant** — For tenant ID and OAuth authority URL
- **Base64 Convert**, **Type Helper** — For JWT token parsing
- **Used by** — API module, POS Billing, and any module that needs automatic Entra ID app provisioning
