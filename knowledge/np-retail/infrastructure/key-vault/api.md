---
type: reference
tags: [np-retail, infrastructure, key-vault]
relates: [np-retail/infrastructure/key-vault/overview.md]
updated: 2026-05-09
---

# Key Vault Module — API Reference

## Codeunits

| ID | Name | Caption | Key Procedures | Description |
|----|------|---------|---------------|-------------|
| 6014494 | "NPR Azure Key Vault Mgt." | NPR Azure Key Vault Mgt. | GetAzureKeyVaultSecret, TryGetAzureKeyVaultSecret | SingleInstance. Central secret retrieval with caching, sandbox override, and module isolation. All procedures are `[NonDebuggable]` |
| 6150930 | "NPR Sandbox Secret Injection" | NPR Sandbox Secret Injection | AddSecret, RemoveSecret, TryGetSecret | Manages sandbox secrets in IsolatedStorage. All procedures are `[NonDebuggable]` |

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| 6150806 | "NPR Sandbox Secret Injection" | NPR Sandbox Secret Injection | — | Page for injecting development/test secret values into isolated storage (no source code shown in the module, referenced by codeunit comments) |

## Key Procedures Detail

### NPR Azure Key Vault Mgt. (6014494)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `GetAzureKeyVaultSecret` | Name (Text) | KeyValue (Text) | Retrieves secret by name. Checks cache first, then sandbox injection, then App Key Vault. Errors if secret not found or if called cross-module |
| `TryGetAzureKeyVaultSecret` | Name (Text), var KeyValueOut (Text) | — | TryFunction variant of GetAzureKeyVaultSecret — does not error on failure |

### NPR Sandbox Secret Injection (6150930)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `AddSecret` | SecretName (Text), SecretValue (Text) | — | Stores a secret in module-scoped IsolatedStorage with `SANDBOX_SECRET_INJECTION` prefix |
| `RemoveSecret` | SecretName (Text) | — | Deletes a secret from IsolatedStorage. Errors if the secret does not exist |
| `TryGetSecret` | SecretName (Text), var OutSecretValue (Text) | Boolean | Attempts to retrieve a sandbox-injected secret. Returns false if not found |
