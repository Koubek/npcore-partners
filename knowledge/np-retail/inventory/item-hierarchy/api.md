---
type: reference
tags: [np-retail, inventory, item-hierarchy, tables, codeunits, pages]
relates: [inventory/item-hierarchy/overview.md]
updated: 2026-05-09
---

# Item Hierarchy — API Reference

## Tables

### Table 6151050 "NPR Item Hierarchy"

Hierarchy header.

| Field | Type | Purpose |
|-------|------|---------|
| `Hierarchy Code` | Code[20] | PK |
| `Description` | Text[30] | Name |
| `No. Of Levels` | Integer | Depth |
| `Type` | Option | ` ` / `Sales` / `Purchase` |
| `Sales History` | Boolean | (unused) |
| `Show Expanded` | Boolean | (unused) |

**OnDelete:** Cascades to levels, lines, distribution setup, and replenishment demand lines.

### Table 6151051 "NPR Item Hierarchy Level"

Level definition.

| Field | Type | Purpose |
|-------|------|---------|
| `Hierarchy Code` | Code[20] | FK to Item Hierarchy |
| `Line No.` | Integer | PK within hierarchy |
| `Level` | Integer | Level depth |
| `Code` | Code[20] | Level code |
| `Description` | Text[30] | Name |
| `Table No.` | Integer | Linked table (FK to AllObj) |
| `Primary Field No.` | Integer | Key field in linked table |
| `Description Field No.` | Integer | Description field in linked table |
| `Level Link Table No.` | Integer | Parent level table FK |
| `Level Link Field No.` | Integer | Parent level link field |
| `Level Link Filter` | Text[80] | Filter on link |
| `Second Level Link Table No.` | Integer | Additional parent link |
| `Second Level Link Field No.` | Integer | Additional link field |
| `Second Level Link Filter` | Text[80] | Additional filter |
| `Second Level Primary Field No.` | Integer | Second level key field |
| `Ext. Filter` | Text[80] | External filter |
| `Ext. Filter Field No.` | Integer | External filter field |
| `Link Table Name` | Text[250] | FlowField (derived) |
| `Item Field No.` | Integer | Item table field (Table 27) |

**OnDelete:** Cascades to hierarchy lines for this level.

### Table 6151052 "NPR Item Hierarchy Line"

Generated hierarchy lines.

| Field | Type | Purpose |
|-------|------|---------|
| `Item Hierarchy Code` | Code[20] | FK |
| `Item Hierarchy Line No.` | Integer | PK |
| `Item Hierarchy Level` | Integer | Level depth |
| `Item Hierachy Description` | Text[80] | Display text |
| `Related Table No.` | Integer | Source table |
| `Related Table Name` | Text[30] | FlowField |
| `Related Table Key Field` | Integer | Source key field |
| `Related Table Key Field Value` | Text[80] | Source key value |
| `Related Table Desc. Field` | Integer | Source desc field |
| `Related Table Desc. Field Value` | Text[80] | Source desc value |
| `Linked Table No.` | Integer | Parent context table |
| `Linked Table Key Value` | Text[30] | Parent key |
| `Linked Table Value Desc.` | Text[80] | Parent desc |
| `Item No.` | Code[20] | FK to Item |
| `Item Desc.` | Text[100] | Item name |
| `Variant Code` | Code[10] | Variant |
| `Retail Campaign Disc. Code` | Code[20] | Campaign link |
| `Retail Campaign Disc. Type` | Option | Period or Mix |

## Codeunits

### Codeunit 6151050 "NPR Item Hierarchy Mgmt."

**Key Procedures:**
| Procedure | Description |
|-----------|-------------|
| `CreateItemHierarchyLines(var ItemHierarchy)` | Generates all lines from level definitions by iterating linked tables, respecting parent link filters |
| `CreateItemHierachyFromRetailCampaign(RetailCampaignHeader)` | Creates hierarchy from campaign code or updates existing |
| `UpdateItemHierachyLinesFromRetailCampaign(RetailCampaignHeader)` | Rebuilds lines for campaign-based hierarchy |
| `CreateItemHierachyLinesFromRetailCampaign(RetailCampaignHeader, ItemHierarchy)` | Generates lines for Period/Mixed discount campaign items |

**Line generation algorithm:**
1. For each level, opens the linked table (`Table No.`)
2. If a parent level link exists (`Level Link Table No.`), iterates parent records then child records filtered by link
3. If level links to Item table (27), expands per variant
4. Lines are numbered +10000 per iteration for ordering
5. For campaign integration, handles Period Discount lines (direct items) and Mixed Discount lines (items + item groups expanded)

## Pages

| Page | Type | Source Table |
|------|------|-------------|
| NPR Item HierarchyCard | Card | NPR Item Hierarchy |
| NPR Item HierarchyList | List | NPR Item Hierarchy |
| NPR Item HierarchyLines | List | NPR Item Hierarchy Line |
| NPR Item HierarchyListpart | ListPart | NPR Item Hierarchy Line |

## Dependencies

- `NPR Retail Campaign Header` / `NPR Retail Campaign Line` for campaign-based hierarchies
- `NPR Retail Repl. Demand Line` for replenishment consumption
- `NPR Distribution Setup` for distribution configuration
- `NPR Period Discount Line` / `NPR Mixed Discount Line` for campaign line expansion
