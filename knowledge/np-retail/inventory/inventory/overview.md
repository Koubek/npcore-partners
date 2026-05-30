---
type: concept
tags: [np-retail, inventory]
relates: []
updated: 2026-05-09
---

# Inventory — Overview

The Inventory module extends the base Business Central **Inventory Setup** page and table with NP Retail-specific scanner configuration fields. It is a thin extension — the bulk of inventory-related logic lives in dedicated inventory sub-modules.

## Purpose

Adds a **scanner provider** configuration to Inventory Setup, allowing NP Retail POS units to specify which scanner file format to use when importing inventory data.

## Key Tables

| Table | Type | Purpose |
|-------|------|---------|
| `"Inventory Setup"` (ext) | TableExt 6014404 | Adds `NPR Scanner Provider` field |

## Key Codeunits

None defined in this module — only table/page extensions.

## Integration Points

- Extends the standard `"Inventory Setup"` page with a `NPR Scanner Setup` group containing the scanner provider selector.
- The `NPR Scanner Provider` enum is defined elsewhere (likely infrastructure or POS) and consumed here.
