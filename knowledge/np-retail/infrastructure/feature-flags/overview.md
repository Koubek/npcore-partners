---
type: concept
tags: [np-retail, infrastructure, feature-flags, configcat]
relates: [np-retail/infrastructure/feature-management/overview.md, np-retail/infrastructure/feature-flags/api.md]
updated: 2026-05-09
---

# Feature Flags in NP Retail

NP Retail uses a two-layer feature toggle system: a **Feature Management** layer (compile-time enum-based feature definitions with per-tenant enable/disable) and a **Feature Flags** layer (runtime-configurable boolean flags synced from [ConfigCat](https://configcat.com/), a cloud-hosted feature flag service).

## Architecture

```
ConfigCat Cloud → NPConfigCat Proxy (Azure Function) → NPR ConfigCat API → NPR Feature Flags Management → NPR Feature Flag (table)
     ↑                                                                                                               |
     |                                                                                                               v
NPR Feature (enum-based) ←─── Consumer code calls IsEnabled() ←─── NPR Feature Flags Public Acc. ←─── NPR Feature Flag (table)
```

## Key Concepts

- **ConfigCat integration** via `NPR ConfigCat API` codeunit that calls an Azure-hosted proxy (`npconfigcatproxy.azurewebsites.net`) — the proxy keeps the API key server-side, never exposed to BC.
- **Two environments**: staging (`npcore_staging_npcoreconfig`) for non-production, production (`npcore_production_npcoreconfig`) for SaaS production and OnPrem production.
- **Tenant identification**: each tenant has a GUID identifier stored in `NPR Feature Flags Setup`; SaaS tenants use their AAD Tenant ID, OnPrem tenants use a generated GUID.
- **Automatic scheduling**: on login, a background session starts `NPR Get Feature Flags JQ` which creates a recurring Job Queue Entry to poll ConfigCat.
- **Redundancy handling**: flags from ConfigCat are compared with existing records — only changed values are updated. Flags no longer in the ConfigCat response are deleted.
- **Public API**: `NPR Feature Flags Public Acc.` exposes a single `IsEnabled(FeatureFlagName: Text[50]): Boolean` procedure for any consumer module.
