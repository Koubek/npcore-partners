---
type: reference
tags: [np-retail, pos, pos-security, tables, pages]
relates:
  - np-retail/pos/pos-security/overview.md
updated: 2026-05-09
---

# POS Security API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6014601 | NPR POS Security Profile | Code, Description, Password on Unblock Discount (Masked), Unlock Password, Lock Timeout, POS Buttons Refresh Time | Defines security settings per profile. Passwords are stored as masked text for UI protection. Timeout/refresh use enum for duration selection. |

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| 6014602 | NPR POS Security Profiles | List page for browsing all security profiles |
| 6014603 | NPR POS Security Profile | Card page for creating/editing a single security profile |
