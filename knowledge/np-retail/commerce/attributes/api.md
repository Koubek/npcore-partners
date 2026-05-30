---
type: reference
tags: [np-retail, commerce, attributes, tables, codeunits, pages, queries]
relates: [commerce/attributes/overview.md]
updated: 2026-05-09
---

# Attributes — API Reference

## Tables

### Table 6014556 "NPR Attribute Key"

Attribute set mapping table.

Fields:

| Field | Type | Purpose |
|-------|------|---------|
| `Attribute Set ID` | Integer | Auto-increment, primary key |
| `Table ID` | Integer | Source table (FK to AllObjWithCaption) |
| `MDR Code PK` | Code[20] | Primary key part 1 |
| `MDR Line PK` | Integer | Primary key part 2 |
| `MDR Option PK` | Integer | Primary key part 3 |
| `MDR Code 2 PK` | Code[20] | Additional key (CASE182391 - doc support) |
| `MDR Line 2 PK` | Integer | Additional line key (CASE182391) |

Keys: `Attribute Set ID` (PK), `Table ID, MDR Code PK, MDR Line PK, MDR Option PK` (unique).

### "NPR Attribute Translation"

Multi-language translations for attribute values.

## Codeunits

### "AttItemSearch"

Attribute-powered item search. Enables searching items by their attribute values.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `Attributes` | — | Attribute list view |
| `AttributeCard` | — | Attribute card editor |
| `AttributeIDs` | — | Attribute set ID view |
| `AttributeValues` | — | Attribute value management |
| `AttributeValueLookup` | — | Attribute value lookup dialog |
| `AttributeTranslations` | NPR Attribute Translation | Translation editor |
| `NPAttributesFactBox` | — | FactBox for attribute-enabled records |
| `NPAttributesFactBox` | — | FactBox display |

## Queries

| Query | Purpose |
|-------|---------|
| `AttributeCodeWhereUsed` | Shows which entities use a given attribute code |
| `AttributeKeys` | Lists all attribute key mappings |
