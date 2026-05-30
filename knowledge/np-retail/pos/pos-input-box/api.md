---
type: reference
tags: [np-retail, pos, pos-input-box, tables, pages]
relates:
  - np-retail/pos/pos-input-box/overview.md
updated: 2026-05-09
---

# POS Input Box — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6060108 | NPR Ean Box Parameter | Ean Box Parameter | Setup Code + Event Code + Action Code + Name | Per-event per-action parameter configuration with data types, defaults, lookup, and validation |
| — | NPR Ean Box Setup | — | Code | Main scanner profile: maps setup code to POS View |
| — | NPR Ean Box Event | — | Code | Defines scanning events |

### NPR Ean Box Parameter Field Details

| Field No. | Name | Type | Description |
|-----------|------|------|-------------|
| 1 | Setup Code | Code[20] | Scanner profile reference |
| 2 | Event Code | Code[20] | Scanning event reference |
| 6 | Action Code | Code[20] | POS action to execute |
| 7 | Name | Text[30] | Parameter name (non-editable once set) |
| 8 | Data Type | Option | Text, Integer, Decimal, Date, Boolean, Option |
| 9 | Default Value | Text[250] | Default parameter value |
| 10 | Options | Text[250] | Allowed values for Option type |
| 11 | Value | Text[250] | Current parameter value (with lookup/validation triggers) |
| 16 | OptionValueInteger | Integer | Resolved value for Option type |
| 20 | Ean Box Value | Boolean | Flag for EAN box-specific value |
| 25 | Non Editable | Boolean | Read-only parameter flag |

## Pages

| ID | Name | Source Table | Type | Purpose |
|----|------|-------------|------|---------|
| 6060096 | NPR POS Input Box Setups | NPR Ean Box Setup | List | Scanner profile list — runs action/event discovery on open |
| — | NPR POS Input Box Setup | NPR Ean Box Setup | Card | Individual scanner profile editor |
| — | NPR POS Input Box Parameters | NPR Ean Box Parameter | List (drill-down) | Parameter configuration for event-action pairs |
| — | NPR POS Input Box Events | NPR Ean Box Event | List | Event type discovery and management |
| — | NPR POS Input Box Setup Events | — | — | Setup-to-event mapping |
