---
type: reference
tags: [np-retail, infrastructure, environment]
relates: [np-retail/infrastructure/environment/overview.md]
updated: 2026-05-09
---

# Environment Module — API Reference

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6014516 | "NPR Environment Type" | NPR Environment Type | PROD (0), DEMO (1), SANDBOX (2) | Classifies the current company environment for feature gating |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6059806 | "NPR Environment Information" | NPR Environment Information | Code (Code[10], clustered) | Stores the verified environment state per company — code, type (PROD/DEMO/SANDBOX), verified flag, database name, company name, tenant name, template flag |

## Pages

| ID | Name | Caption | Type | UsageCategory | Description |
|----|------|---------|------|---------------|-------------|
| 6150762 | "NPR Environment Information" | NP Retail Environment Information | Card | Administration | Read/write card page for managing environment type, verification, template flag, and viewing captured DB/tenant/company metadata. Non-extensible. Has AboutText explaining the three environment types |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised / Subscribed |
|----|------|---------|---------------|---------------------------|
| 6060025 | "NPR Environment Mgt." | NPR Environment Mgt. | IsProd, IsDemo, IsTest, CheckEnvironment, CheckIfEmpty, CheckIfTemplate, CheckIfVerified, HandleEnvironmentChange, PromptDataScrub, DisableNpXmlTransfer, CancelJobQueueEntries | Subscribes to: `System Initialization.OnAfterInitialization` (BC17-19) or `System Initialization.OnAfterLogin` (BC20+) |

## Key Procedures Detail

### NPR Environment Mgt. (6060025)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `IsProd` | — | Boolean | Returns true if environment type = PROD and verified. Delegates to `EnvironmentInformation.IsProduction()` in SaaS |
| `IsDemo` | — | Boolean | Returns true if environment type = DEMO and verified. In SaaS, delegates to `EnvironmentInformation.IsSandbox()` |
| `IsTest` | — | Boolean | Returns true if environment type = SANDBOX and verified. In SaaS, returns `not IsProduction()` |
