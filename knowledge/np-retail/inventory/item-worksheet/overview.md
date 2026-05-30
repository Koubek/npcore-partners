---
type: concept
tags: [np-retail, inventory, item-worksheet]
relates: []
updated: 2026-05-09
---

# Item Worksheet — Overview

Provides a **configurable worksheet system for bulk item creation, update, and variant management**. Supports web service import, field-level mappings, variety/variant generation, and purchase integration.

## Purpose

- Template-driven worksheet with configurable field mapping between source tables and target create/update fields
- **Variety (dimension) support**: Up to 4 variety dimensions per item, with vendor variety value mapping
- **Web service import**: Import item data via XML through `NPR Nc Import` framework
- **Validation pipeline**: Field-level checks, price validation, duplicate detection
- **Registration engine**: Processes worksheet lines into actual Item/Variant records with change tracking
- **Purchase integration**: Links worksheet registration to purchase price lists

## Key Tables (10+)

| Table | ID | Purpose |
|-------|----|---------|
| `NPR Item Worksh. Template` | - | Worksheet template definition (pricing handl., validation mode, no. creation) |
| `NPR Item Worksheet` | - | Worksheet header per vendor |
| `NPR Item Worksheet Line` | - | Lines with item data, action code (Create/Update/Skip) |
| `NPR Item Worksh. Field Setup` | 6060052 | Maps source field to target create/update field with processing rules |
| `NPR Item Worksh. Field Mapping` | 6060055 | Value-level mapping (source value → target value with matching options) |
| `NPR Item Worksh. Field Change` | 6060053 | Records field-level changes during validation/registration |
| `NPR Item Worksh. Variant Line` | - | Variant lines per worksheet line (variety dimensions) |
| `NPR Item Worksh. Vrty Mapping` | 6060057 | Maps vendor variety values to internal variety values per template/worksheet |
| `NPR Item Worksh. Variety Value` | - | Cross-product variety value definitions |
| `Registered Item Worksh.` | - | Archived processed worksheets |
| `Reg Item Wsht Var Line` | - | Archived processed variant lines |
| `Missing Setup Record`/`Missing Setup Table` | - | Tracks missing setup data during validation |

## Key Codeunits (12+)

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Item Wsht.Register Line` | - | Main registration engine (~100KB) — processes lines into items/variants |
| `NPR Item Wsht.-Check Line` | 6060045 | Validation — action rules, prices, duplicates, variety completeness |
| `NPR Item Wksht. WebService Mgr` | 6060049 | XML import — parses item data from web service (implements `IProcess`) |
| `NPR Item Wsht. Imp. Exp.` | - | Import/export utilities |
| `NPR Item Wksht. Task Queue Mgt.` | - | Background processing via job queue |
| `NPR Item Wksht. DocExch` | - | Document exchange integration |
| `NPR Item Wksht. Validation` | - | Additional validation logic |
| `NPR Item Worksheet Item Mgt.` | - | Item management during worksheet processing |
| `NPR Item Wksht. Purch. Integr.` | - | Purchase integration (price lists, vendor data) |
| `NPR Item Wksht. WfEvents`/`WfResponses` | - | Workflow event/response handlers |

## Integration Points

- Web service import via `NPR Nc Import List IProcess` interface (XML document processing)
- ASP.NET / OData exposed web services for external vendor item data exchange
- Job queue support for background worksheet processing
- Purchase document integration for price list creation
- Attribute framework integration (`NPR Attribute Management`)
