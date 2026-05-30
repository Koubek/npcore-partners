---
type: reference
tags: [np-retail, infrastructure, feature-flags, configcat]
relates: [np-retail/infrastructure/feature-flags/overview.md]
updated: 2026-05-09
---

# Feature Flags Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | DataPerCompany | Description |
|----|------|---------|------------|----------------|-------------|
| 6060033 | "NPR Feature Flag" | Feature Flag | Name (clustered) | false | Stores runtime feature flag name/value/variationId from ConfigCat |
| 6060034 | "NPR Feature Flags Setup" | Feature Flag Setup | Primary Key (Code[10]) | false | Tenant identifier (GUID) used to scope ConfigCat queries |

## Codeunits

| ID | Name | Access | Description |
|----|------|--------|-------------|
| 6151495 | "NPR Feature Flags Management" | Internal | Core logic: IsEnabled, environment detection, sync from buffer, schedule/check JQ, init setup |
| 6184675 | "NPR Feature Flags Public Acc." | Public | Public API surface: `IsEnabled(FeatureFlagName: Text[50]): Boolean` |
| 6151498 | "NPR ConfigCat API" | Internal | HTTP client calling ConfigCat proxy, JSON parsing into temp Feature Flag buffer |
| — | "NPR Get Feature Flags JQ" | — | Job Queue codeunit that orchestrates ConfigCat fetch → sync flow |

## Pages

| ID | Name | Caption | PageType | SourceTable | Description |
|----|------|---------|----------|-------------|-------------|
| 6151159 | "NPR Feature Flags" | Feature Flags | List | NPR Feature Flag | Read-only list of all current feature flags (Name, Value, Variation ID) |
| 6151158 | "NPR Feature Flags Setup" | Feature Flags Setup | Card | NPR Feature Flags Setup | Administration page; shows identifier, embedded flag list, "Get Feature Flags" action |
| 6151160 | "NPR Feature Flags Setup Sub" | — | ListPart | NPR Feature Flag | Embedded subpage on the setup card |

## Events

| Event | Publisher | Description |
|-------|-----------|-------------|
| OnAfterLogin (subscribed) | System Initialization / LogInManagement | Starts `NPR Get Feature Flags JQ` in background session on each login |
