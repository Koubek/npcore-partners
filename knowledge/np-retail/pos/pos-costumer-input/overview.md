---
type: concept
tags: [np-retail, pos, costumer-input, pos-costumer-input]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-posting/overview.md
updated: 2026-05-09
---

# POS Costumer Input Module

The POS Costumer Input module collects customer-facing input during POS transactions — signatures, phone numbers, and email addresses. It supports contextual input scenarios like money-back confirmation, return information collection, cardholder verification, and signature acquisition.

**Note:** The module name uses "Costumer" (original source spelling), though functionally it handles customer input.

## Architecture

### Data Model Evolution

The module has two tables reflecting a data model migration:

- **Old table** — `"NPR POS Costumer Input"` (6059810, Obsolete Pending 2025-06-15): Combined all input types in a single record with context enum, signature blob, phone number, email, and POS entry reference
- **New table** — `"NPR POS Customer Input Entry"` (6151193): Replaced by a more flexible entry-based model with auto-increment PK, information type enum, value text field, and context text field

The new table separates concerns:
- `Signature` stored as BLOB with read/write helpers
- `Information Collected` enum (Signature / Phone No. / E-Mail) identifies the data type
- `Information Value` stores the actual data as text
- `Information Context` stores additional context about the collection

### Input Contexts

The `"NPR POS Costumer Input Context"` enum (6014519) defines when input is collected:

| Value | Context | Description |
|-------|---------|-------------|
| 0 | MONEY_BACK | Cash return to customer (signature/phone) |
| 1 | RETURN_INFORMATION | Return/exchange data collection |
| 2 | SALES_CARDHOLDER_VERIFICATION | Credit card signature verification |
| 3 | ACQUIRE_SIGNATURE | Standalone signature capture |

### Return Data Collection

The module includes a `"Return Data Collection"` subdirectory with specialized pages/flows for collecting customer information during return transactions.

### Signature Capture

Signatures are stored as BLOB JSON arrays representing drawing strokes: `[line0[(x0,y0),...,(xn,yn)], line1[...]]`. The `SignatureViewer` page displays captured signatures.

## Dependencies

- **POS Core** — POS Entry reference links input records to posted transactions
- **POS Posting** — Input entries may be collected during the posting flow

## Extension Points

No direct integration events in this module — the enum-based context system allows differentiation of input scenarios, and the extensibility comes from the consuming code that triggers the input collection pages.
