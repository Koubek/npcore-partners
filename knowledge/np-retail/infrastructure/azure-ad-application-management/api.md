---
type: reference
tags: [np-retail, infrastructure, azure-ad]
relates: [np-retail/infrastructure/azure-ad-application-management/overview.md]
updated: 2026-05-09
---

# Azure AD Application Management — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150915 | "NPR Entra App Permission" | Entra App Permission | Permission Set ID (Code[20], clustered, Temporary) | Temporary table for permission set picker. FlowField `Permission Set Name` calculated from `Aggregate Permission Set`. Validates that `NPR NP RETAIL` cannot be assigned |

## Codeunits

| ID | Name | Caption | Key Procedures | Description |
|----|------|---------|---------------|-------------|
| 6060060 | "NPR AAD Application Mgt." | NPR AAD Application Mgt. | CreateAzureADApplicationAndSecret (4 overloads), CreateAzureADSecret, RegenerateEntraAppSecret, RegisterAzureADApplication, GetApplicationIDAndSecret, SetSilent, TryGrantConsentToApp, SynchronizeEntraAppPermissionSets, GetConsentGranted, GetErrorMessages | Full lifecycle management of Entra ID apps via Graph API. All secret-related procedures are `[NonDebuggable]` |

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| — | "NPR Entra App Permissions" | Entra App Permissions | — | Page for managing permission sets assigned to an Entra ID application |
| — | "NPR Entra App Registration" | Entra App Registration | — | Page for registering/creating Entra ID applications |

## Key Procedures Detail

### NPR AAD Application Mgt. (6060060)

| Category | Procedure | Parameters | Access | Description |
|----------|-----------|------------|--------|-------------|
| **Creation** | `CreateAzureADApplicationAndSecret` | AppDisplayName, SecretDisplayName, PermissionSets (List of Code[20]) | Internal | Creates new Entra ID app (or reuses existing), grants admin consent, creates secret, registers in BC, assigns permission sets |
| **Creation** | `CreateAzureADApplicationAndSecret` | AppDisplayName, SecretDisplayName, PermissionSets, RegenerateSecret (Boolean) | Internal | Overload with regenerate option for reusing existing apps |
| **Secrets** | `CreateAzureADSecret` | ApplicationId (Guid), DisplayName (Text) | Internal | Creates a new secret for an existing Entra ID app via Graph API `addPassword`. Errors if app not found |
| **Secrets** | `RegenerateEntraAppSecret` | var EntraApp (Record "AAD Application"), WithConfirmDialog (Boolean) | Internal | Regenerates secret with optional confirmation dialog |
| **Registration** | `RegisterAzureADApplication` | ClientID (Guid), DisplayName (Text[50]), PermissionSets (List of Code[20]) | Internal | Registers an Entra ID app in Business Central by creating AAD Application record and assigning permission sets |
| **Query** | `GetApplicationIDAndSecret` | var ClientID (Guid), var ClientSecret (Text) | Internal (NonDebuggable) | Returns the last created application's ID and secret |
| **Silent** | `SetSilent` | Silent (Boolean) | Internal | Sets silent mode — suppresses all messages and errors (collected via GetErrorMessages instead) |
| **Consent** | `TryGrantConsentToApp` | ClientId (Guid), TenantId (Text), var PermissionGrantErrorTxt (Text) | Internal | Grants admin consent via OAuth2. Returns success/failure. Retries up to 3 times with 20s delay |
| **Synchronize** | `SynchronizeEntraAppPermissionSets` | var AADApplication, RemoveAllExistingFirst, PermissionSets | Internal | Syncs permission sets for an app — optionally deletes existing first, then adds all specified sets |
| **Query** | `GetConsentGranted` | — | Internal | Returns whether admin consent was successfully granted in the last operation |
| **Query** | `GetErrorMessages` | var ErrorMessages (List of Text) | Internal | Returns collected error messages from silent operations |
