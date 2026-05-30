---
type: reference
tags: [np-retail, inventory, tables, codeunits]
relates: [inventory/inventory/overview.md]
updated: 2026-05-09
---

# Inventory — API Reference

## Table Extensions

### TableExtension 6014404 "NPR Inventory Setup"

Extends `"Inventory Setup"`.

**Added Field:**

| Field ID | Name | Type | Description |
|----------|------|------|-------------|
| 6014400 | `NPR Scanner Provider` | Enum "NPR Scanner Provider" | Specifies scanner file import provider |

## Page Extensions

### PageExtension 6014406 "NPR Inventory Setup"

Extends `"Inventory Setup"`.

**Added Group:** `NPR Scanner Setup` (in content area)
- Field: `NPR Scanner Provider` — tooltip: "Specifies from which scanner the file for import is generated."

## Events

None defined in this module.
