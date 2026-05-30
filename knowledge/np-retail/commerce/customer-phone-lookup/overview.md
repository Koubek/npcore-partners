---
type: concept
tags: [np-retail, commerce, customer-phone-lookup]
relates: [pos/pos-core/overview.md]
updated: 2026-05-09
---

# Customer Phone Lookup — Overview

Enables automatic customer/contact/vendor lookup by phone number during entity creation. Integrates with an external number information service (I-Comm) to fetch address and contact details when a new entity is created with a phone number.

## Purpose

- Automatic lookup of customer/contact/vendor details when a phone number is entered
- Integration with pluggable number info codeunits (I-Comm)
- Fallback UI (lookup dialog) when multiple matches found
- Auto-create entities from phone lookup results (customer, contact, vendor)
- Create business relations between contact and customer/vendor

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR Phone Lookup Buffer` | Temporary buffer for phone lookup results |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Phone Lookup` | 6014437 | Core phone lookup and entity creation logic |
| `TDCPhoneLookup` | — | I-Comm integration (provider-specific) |

## Pages

| Page | Purpose |
|------|---------|
| `NPR Phone Number Lookup` | Lookup dialog shown when multiple matches found |
| `PhoneNolookup` | No-results feedback page |
