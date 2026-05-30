---
type: reference
tags: [np-retail, commerce, customer-phone-lookup, tables, codeunits, pages, events]
relates: [commerce/customer-phone-lookup/overview.md]
updated: 2026-05-09
---

# Customer Phone Lookup — API Reference

## Tables

### "NPR Phone Lookup Buffer" (Temporary)

Fields: `Phone No.`, `Name`, `First Name`, `Last Name`, `Address`, `Address 2`, `Post Code`, `City`, `E-Mail`, `Home Page`, `VAT Registration No.`, `Mobile Phone No.`, `Create Contact`, `Create Customer`, `Create Vendor`.

## Codeunits

### Codeunit 6014437 "NPR Phone Lookup" (Internal)

Key procedures:

- `RunPhoneLookup(PhoneNo, var TempPhoneLookupBuffer): Boolean` — initiates lookup via I-Comm codeunit; shows dialog for multiple matches
- `UpdateCont(var Cont, TempPhoneLookupBuf)` — maps buffer fields to Contact record
- `UpdateCust(var Cust, TempPhoneLookupBuf)` — maps buffer fields to Customer record
- `UpdateVend(var Vend, TempPhoneLookupBuf)` — maps buffer fields to Vendor record
- `UpdateMemberInfoCapture(var MMMemberInfoCapture, TempPhoneLookupBuf)` — maps buffer fields to Member Info Capture
- `Creation(var TempTDCNamesNumbersBuffer)` — orchestrates creation of customer/contact/vendor with business relations

**Event Subscribers:**
- `Table Contact - OnAfterValidateEvent(No.)` — triggers lookup when new contact created with phone No.
- `Table Customer - OnAfterValidateEvent(No.)` — triggers lookup when new customer created with phone No.
- `Table Vendor - OnAfterValidateEvent(No.)` — triggers lookup when new vendor created with phone No.
- `Table NPR MM Member Info Capture - OnAfterValidateEvent(Phone No.)` — triggers lookup for member info

## Pages

| Page | Purpose |
|------|---------|
| `NPR Phone Number Lookup` | Multi-result selection dialog (List page on NPR Phone Lookup Buffer) |
| `PhoneNolookup` | No-results page |
