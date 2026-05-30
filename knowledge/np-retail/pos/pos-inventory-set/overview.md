---
type: concept
tags: [np-retail, pos, pos-inventory-set]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Inventory Set Module

Provides a retail inventory set subpage for the POS system. A minimal module containing a single page component for viewing inventory set details within the retail POS context.

## Architecture

### Pages

- `RISRetailInvSetSub.Page.al` — Retail Inventory Set subpage. Used as a drill-down or factbox component for inventory set visibility during POS transactions.

### Purpose

Inventory sets allow grouping items for collective inventory operations. This module provides the POS-side UI for viewing inventory set membership. It is invoked from the POS frontend when the user needs to inspect which items belong to a particular inventory set.

## Dependencies

- **POS Core** — POS View and UI framework that hosts the subpage
