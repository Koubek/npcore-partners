---
type: concept
tags: [np-retail, accounts, accounts-module]
relates: [accounts/billing/overview.md]
updated: 2026-05-09
---

# Accounts (User Accounts) — Overview

User account management for NP Retail. Extends standard BC user management with NP Retail-specific account properties, profile management, and self-service account operations.

## Purpose

- NP Retail-specific user account records with custom fields
- Account management with create, read, update operations
- User profile management interface
- Self-service account capabilities

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR User Account` | NP Retail user account extension |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `UserAccountMgtImpl` | Account management implementation |

## Pages

| Page | Purpose |
|------|---------|
| `UserAccounts` | User account list |

## Subfolders

- `Setup/` — Account setup configuration
- `_public/` — Publicly exposed account objects
