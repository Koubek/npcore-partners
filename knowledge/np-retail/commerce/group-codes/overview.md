---
type: concept
tags: [np-retail, commerce, group-codes]
relates: []
updated: 2026-05-09
---

# Group Codes — Overview

Simple reference data module providing reusable group code definitions used across NP Retail modules. Group codes provide a standardized way to categorize and group entities (customers, items, etc.) for reporting, filtering, and discount assignment.

## Purpose

- Define reusable group codes with descriptions
- Used as lookup source for group code fields across other modules (discount groups, item groups, customer groups)
- Simple code + description structure

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Group Code` | 6059803 | Group code master (Code + Description) |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `GroupCodeUtils` | Utility functions for group code operations |
