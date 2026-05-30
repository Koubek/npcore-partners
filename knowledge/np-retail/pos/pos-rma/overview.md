---
type: concept
tags: [np-retail, pos, pos-rma]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS RMA Module

The POS RMA (Return Merchandise Authorization) module manages item returns and exchange workflows within the POS system. It extends the POS Action framework with return-specific business logic.

## Architecture

The module source only contains a `_public` folder with no AL object files in the module root. The return functionality is primarily implemented as action codeunits within the broader POS Action module (see `NpGp Return`, `RetailInventory`, `Raptor` actions in POS Action).

## Key Business Flows

### Return Processing
1. Customer presents receipt or returns item
2. Cashier initiates return via POS action (e.g., NpGp Return)
3. System looks up original sale by receipt/ticket number
4. Return lines are created as negative quantity lines in a new sale
5. Price validation against original sale price
6. Payment refund processed through standard payment workflow

### Exchange Processing
1. Return item processed as negative sale line
2. New item added as positive sale line
3. Net difference calculated and either charged or refunded

## Dependencies

- **POS Action** — Return-specific action codeunits
- **POS Core** — Sale, Sale Line, Payment Line management
- **POS Posting** — Entry creation for return transactions

## Extension Points

No public events or interfaces are defined in this module. Returns are handled through the standard POS Action `OnAction` integration event in POS Core.
