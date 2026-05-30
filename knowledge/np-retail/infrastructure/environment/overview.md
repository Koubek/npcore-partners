---
type: concept
tags: [np-retail, infrastructure, environment]
relates: [np-retail/infrastructure/key-vault/overview.md, np-retail/infrastructure/api/overview.md]
updated: 2026-05-09
---

# Environment Information Module

The Environment module provides a runtime environment classification and verification system for NP Retail on Business Central. It distinguishes between Production, Demo, and Sandbox/Test/Development environments to control feature behavior, external integrations, and data safety.

## Purpose

- **Environment Classification** — Classifies each company as PROD, DEMO, or SANDBOX via the `NPR Environment Type` enum (6014516)
- **Change Detection** — Automatically detects when a company is restored, copied, or moved (via database/tenant/company name changes) and invalidates the verification
- **Integration Gating** — Blocks external integrations (file transfers, FTP, API transfers, job queues) when the environment switches away from PROD, requiring manual re-verification
- **Template Support** — Supports template companies that, when copied, retain their verified environment type without prompting users

## Architecture

```
System Initialization / User Login
              ↓
  CheckEnvironment (auto-run)
              ↓
    ┌──── CheckIfEmpty (first run → auto-verify as PROD/Sandbox)
    ├──── CheckIfTemplate (template copy → auto-update)
    ├──── CheckIfVerified (match → OK, mismatch → unverify)
    └──── HandleEnvironmentChange (prompt user + data scrub)
```

The `NPR Environment Mgt.` codeunit (6060025) subscribes to `System Initialization` events (`OnAfterInitialization` on BC17-19, `OnAfterLogin` on BC20+) to auto-check environments.

## Environment Detection

| Check | Trigger | Action |
|-------|---------|--------|
| First ever run | No record exists | Auto-verify as PROD (OnPrem) or Sandbox (SaaS) |
| Template copy | `Environment Template` = true + mismatch | Auto-update company/db/tenant, keep verified |
| Environment change | db/tenant/company name changed | Set unverified, prompt user on next GUI login |
| SaaS environment | `EnvironmentInformation.IsSaaS()` = true | Defer to Microsoft's built-in prod/sandbox terminology |

## Data Scrub on Environment Change

When switching away from PROD (e.g., from copy of production), the system automatically:

1. **Disables file transfers** — Sets `File Transfer`, `FTP enabled`, `SFTP Enabled`, `API Transfer` = false on all `NPR NpXml Template` records
2. **Puts job queues on hold** — Prompts user to cancel all Ready/In Process/Error job queue entries

## Dependencies

- **System** — `Environment Information`, `Active Session`, `Company Information`
- **Used by** — All NP Retail modules that need environment-aware behavior (e.g., Sentry telemetry, Cloudflare media, API management)

## Key Design Decisions

- The module locks on purpose on the first user login after an environment change, ensuring the person who restored/copied the database must verify the environment type
- SaaS environments defer entirely to Microsoft's built-in production/sandbox detection
- Template companies enable CI/CD scenarios where company copies from a template skip user prompts
