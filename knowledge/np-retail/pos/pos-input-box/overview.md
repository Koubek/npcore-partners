---
type: concept
tags: [np-retail, pos, pos-input-box]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Input Box Module

Provides barcode/EAN input box configuration for the POS system. Defines how barcode scans are interpreted, which events they trigger, and what parameters are passed to the handling actions. Enables context-sensitive scanning behavior per POS view.

## Architecture

### Core Tables

| Table | Purpose |
|-------|---------|
| `NPR Ean Box Setup` | Main configuration — maps a scanner setup code to a POS View |
| `NPR Ean Box Parameter` (6060108) | Per-event per-action parameter definitions with data types, defaults, and validation |
| `NPR Ean Box Event` | Defines events that scanner input can trigger |

### Ean Box Setup
Each setup record links a `Code` (scanner profile) to a `POS View`. When the POS is in a specific view, the corresponding EAN box setup determines how scanned barcodes are processed.

### Event-Action Mapping
Each parameter record maps:
- **Setup Code** → which scanner profile
- **Event Code** → which scanning event occurred
- **Action Code** → which POS action to execute
- **Name** → parameter name
- **Data Type** → Text, Integer, Decimal, Date, Boolean, Option
- **Default Value** / **Value** → current parameter value
- **Options** → for Option data type, the allowed values

### Parameter Validation
`EanBoxParameter.Table.al` includes value validation and lookup logic:
- `LookupValue()` — Opens lookup for Option types
- `ValidateValue()` — Validates against data type constraints using `NPR POS Parameter Value`
- `Non Editable` flag for read-only parameters

### Pages

- `NPR POS Input Box Setups` (6060096) — List page for scanner profiles; runs action discovery and EAN box event discovery on open
- `NPR POS Input Box Setup` — Card page for individual setup
- `NPR POS Input Box Parameters` (drill-down) — Parameter configuration for each event-action pair
- `NPR POS Input Box Events` — Event discovery and configuration
- `NPR POS Input Box Setup Events` — Setup-to-event mapping

## Dependencies

- **POS Core** — POS View system, POS Action table for action discovery
- **POS Action** — Actions that are triggered by scanner input events
