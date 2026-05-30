---
type: concept
tags: [np-retail, infrastructure, key-vault]
relates: [np-retail/infrastructure/environment/overview.md, np-retail/infrastructure/azure-ad-application-management/overview.md]
updated: 2026-05-09
---

# Azure Key Vault Module

The Key Vault module provides a centralized, secure secret retrieval service for NP Retail. It wraps Business Central's `App Key Vault Secret Provider` with an in-memory cache and a sandbox override mechanism, exposing secrets via a single `GetAzureKeyVaultSecret` API.

## Purpose

- **Secret Retrieval** — Fetch secrets (API keys, client secrets) stored in Azure Key Vault associated with the current app
- **Caching** — In-memory secret cache avoids repeated Key Vault calls within a session
- **Sandbox Injection** — Allows developers to inject fake secrets for local sandbox testing via a dedicated page, without needing actual Key Vault access
- **Module Isolation** — Enforces that only codeunits within the same module (NavApp module boundary) can call the secret API, preventing cross-module secret leakage

## Architecture

```
Caller Codeunit (same module)
       ↓
NPR Azure Key Vault Mgt. (6014494)
       ↓
  ┌── InMemorySecretProvider (session cache)
  ├── SandboxSecretInjection (isolated storage override) ← Page 6150806
  └── AppKeyVaultSecretProvider (BC platform → Azure Key Vault)
```

## Security

- **Module boundary enforcement** — `GetAzureKeyVaultSecret` errors with `"This procedure cannot be called from another application"` if the caller's module ID differs from the current module
- **`[NonDebuggable]`** — All secret-handling procedures are marked NonDebuggable, preventing secret values from appearing in debug output
- **`[TryFunction]`** — `TryGetAzureKeyVaultSecret` provides a non-erroring variant for graceful fallback
- **Isolated Storage** — Sandbox secrets are stored in module-scoped isolated storage with a `SANDBOX_SECRET_INJECTION` prefix to avoid name clashes

## Dependencies

- **Used by** — `AAD Application Mgt.` (for Graph API client credentials), `Sentry` (for DSN retrieval), Cloudflare Media, and potentially any module needing Azure Key Vault secrets
- **Platform** — `App Key Vault Secret Provider`, `In Memory Secret Provider`, `Isolated Storage`
