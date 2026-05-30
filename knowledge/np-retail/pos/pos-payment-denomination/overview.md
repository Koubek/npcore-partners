---
type: concept
tags: [np-retail, pos, pos-payment-denomination]
relates:
  - np-retail/pos/pos-payment/overview.md
  - np-retail/pos/pos-posting/overview.md
updated: 2026-05-09
---

# POS Payment Denomination Module

The POS Payment Denomination module manages cash denominations for payment bins — defining expected coin/bill values, counting physical cash during balancing, and tracking counted denominations per workspace checkpoint.

## Architecture

Denominations are defined per payment method and used during end-of-day balancing to record the physical cash count. The module provides an interactive denomination counting dialog and stores counted amounts for audit/reference.

### Key Components

- **PaymentMethodDenom.Table.al** (6014546) — Defines expected denominations per payment method. Fields: `POS Payment Method Code`, `Denomination Type` (enum), `Denomination Variant ID`, `Denomination` (value), `Blocked`.
- **POSPaymBinDenomin.Table.al** (6150638) — Historical record of counted denominations per bin checkpoint. Fields: `Entry No.`, `POS Unit No.`, `Payment Method No.`, `Denomination`, `Amount`, `Quantity`, `Workshift Checkpoint Entry No.`.
- **POSPmtBinCheckpDenom.Table.al** — Checkpoint-scoped denomination records used during active counting (editable).
- **DenominationMgt.Codeunit.al** (6059915) — Core management: `AssistEditPOSPaymentBinCheckpointDenominations` (interactive counting dialog), `StoreCountedDenominations` (persists counted amounts), `CalculateTotals`.

### Denomination Counting Flow

1. During EOD balancing, user opens a payment bin checkpoint
2. `DenominationMgt.AssistEditPOSPaymentBinCheckpointDenominations` loads all unblocked denominations for the payment method into a temporary edit buffer
3. User enters quantities for each denomination
4. System calculates amounts (Quantity × Denomination Value)
5. On confirm, quantities and amounts are written to `NPR POS Pmt. Bin Checkp. Denom`
6. When balancing completes, `StoreCountedDenominations` persists to `NPR POS Paym. Bin Denomin.` for audit history

## Key Business Flows

### Cash Counting
1. EOD balancing opens payment bin checkpoint
2. User triggers denomination edit for a bin
3. System populates expected denominations from `PaymentMethodDenom`
4. User enters physical counts per denomination
5. Total calculated and displayed
6. On confirmation, stored against checkpoint

### Store Counted Denominations
- Called during Z-report balancing finalization
- Transfers all counted denominations from checkpoint-scoped table to permanent audit table
- Links to `NPR POS Workshift Checkpoint` for reporting

## Dependencies

- **POS Payment** — `NPR POS Payment Method` for method configurations
- **POS Posting** — `NPR POS Workshift Checkpoint`, `NPR POS Payment Bin Checkp.` for checkpoint integration
- **POS Core** — `NPR POS Unit` for unit-level denomination assignment

## Extension Points

- `NPR Denomination Type` enum — Extensible for custom denomination types (coin, bill, etc.)
- `NPR Denomination Target` enum — Extensible for attachment targets
