---
type: concept
tags: [np-retail, accounts, auxiliary-tables]
relates: [pos/pos-posting/overview.md]
updated: 2026-05-09
---

# Auxiliary Tables — Overview

Read-only auxiliary data views for NP Retail. Provides supplementary views into standard Business Central finance and inventory tables (GL Accounts, GL Entries, Value Entries, Item Ledger Entries) with NP Retail-specific filtering and display, plus configuration template support.

## Purpose

- Read-only auxiliary views of GL Account data
- Auxiliary GL Entry browsing with NP-specific context
- Auxiliary Value Entry display
- Auxiliary Item Ledger Entry display
- Configuration template subform support
- Event subscribers for auxiliary table integration

## Key Tables

| Table | Purpose |
|-------|---------|
| `AuxGLAccount` | Auxiliary GL Account view |
| `AuxGLEntry` | Auxiliary GL Entry view |
| `AuxValueEntries` | Auxiliary Value Entry view |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `AuxTablesEventSubs` | Event subscribers for auxiliary table integration |

## Pages

| Page | Purpose |
|------|---------|
| `AuxItemLedgerEntries` | Auxiliary Item Ledger Entry list |
| `AuxValueEntries` | Auxiliary Value Entry list |
| `AuxConfTemplateSubform` | Configuration template subform |

## Subfolders

| Path | Contents |
|------|----------|
| `_public/` | Publicly exposed auxiliary objects |
