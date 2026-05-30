---
type: reference
tags: [np-retail, accounts, auxiliary-tables, tables, codeunits, pages]
relates: [accounts/auxiliary-tables/overview.md]
updated: 2026-05-09
---

# Auxiliary Tables — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `AuxGLAccount` | Read-only view of GL Account data with NP Retail-specific presentation fields |
| `AuxGLEntry` | Read-only view of GL Entries with NP Retail posting context filters |
| `Item Ledger Entries` (Aux) | Aux view of Item Ledger Entries |

## Codeunits

### "AuxTablesEventSubs"

Event subscribers handling auxiliary table integration:
- Subscribes to standard BC table events to populate auxiliary views
- Handles filtering logic for NP Retail-specific data presentation
- Manages cross-table synchronization

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `AuxItemLedgerEntries` | Item Ledger Entry | Auxiliary item ledger view |
| `AuxValueEntries` | — | Auxiliary value entry browsing |
| `AuxConfTemplateSubform` | — | Configuration template subform for auxiliary data |
