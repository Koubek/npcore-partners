---
type: concept
tags: [np-retail, commerce, attributes]
relates: [pos/pos-core/overview.md]
updated: 2026-05-09
---

# Attributes — Overview

Attribute management module for NP Retail. Implements a flexible attribute system linking descriptive attributes (key-value pairs) to any Business Central table, supporting item classification, attribute-based search, translations, and cross-table where-used analysis.

## Purpose

- Attribute key-value pairs attachable to any record via table ID + primary key mapping
- Multi-language attribute value translations
- Attribute-based item search
- Where-used analysis for attribute codes
- FactBox display for attribute-enabled entities

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Attribute Key` | 6014556 | Attribute set mapping (links table+PK to attribute set) |
| `NPR Attribute Translation` | — | Multi-language attribute value translations |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `AttItemSearch` | Attribute-based item search |

## Queries

| Query | Purpose |
|-------|---------|
| `AttributeCodeWhereUsed` | Cross-reference attribute usage across entities |
| `AttributeKeys` | Attribute key listing |
