---
type: reference
tags: [np-retail, accounts, accounts-module, tables, codeunits, pages]
relates: [accounts/accounts/overview.md]
updated: 2026-05-09
---

# Accounts (User Accounts) — API Reference

## Tables

### "NPR User Account"

NP Retail user account table. Extends standard BC user with NP-specific fields. Managed through the account management codeunit.

## Codeunits

### "UserAccountMgtImpl"

Account management implementation providing:

- Account CRUD operations
- Profile management
- Account validation and setup
- Integration with billing and member modules

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `UserAccounts` | NPR User Account | User account list for admin management |

## Subfolders

| Path | Contents |
|------|----------|
| `Setup/` | Account setup configuration pages and tables |
| `_public/` | Public API surfaces for account operations |
