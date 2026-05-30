---
type: concept
tags: [np-retail, infrastructure, feature-management]
relates: [np-retail/infrastructure/feature-flags/overview.md, np-retail/infrastructure/feature-management/api.md]
updated: 2026-05-09
---

# Feature Management in NP Retail

The Feature Management module provides the **compile-time enum-based feature toggle** system. Each major NP Retail product area (Retail, Ticket Essential/Advanced/Wallet/Dynamic Price, NaviConnect, Membership, HeyLoyalty, Shopify, Magento, POS features) defines a value in the `NPR Feature` extensible enum.

## Architecture

Each enum value implements the `NPR Feature Management` interface (AddFeature, IsFeatureEnabled, SetFeatureEnabled). The admin-facing `NPR Feature Management` page lets administrators enable/disable features per tenant.

## Interaction With Feature Flags

Feature Management (enum) and Feature Flags (ConfigCat) serve different purposes:
- **Feature Management**: compile-time registered features, per-tenant enable/disable, UI in admin pages
- **Feature Flags**: runtime boolean flags, centrally managed via ConfigCat, no code change needed

Both systems are consumed by checking `IsEnabled()` — either via the `NPR Feature` enum's implementation or the `NPR Feature Flags Public Acc.` codeunit.
