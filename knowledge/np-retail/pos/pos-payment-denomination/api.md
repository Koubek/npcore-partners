---
type: reference
tags: [np-retail, pos, pos-payment-denomination, tables, codeunits, pages, enums]
relates:
  - np-retail/pos/pos-payment-denomination/overview.md
updated: 2026-05-09
---

# POS Payment Denomination API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6014546 | NPR Payment Method Denom | POS Payment Method Code, Denomination Type, Denomination, Blocked | Defines expected coin/bill denominations per payment method. Blocked flag prevents denomination from appearing in counting dialog. |
| 6150638 | NPR POS Paym. Bin Denomin. | Entry No., Payment Method No., Denomination, Quantity, Amount, Workshift Checkpoint Entry No., Attached-to ID | Historical record of counted denominations. Populated during Z-report via `StoreCountedDenominations`. |
| — | NPR POS Pmt. Bin Checkp. Denom | Checkpoint Entry No., Attached-to ID, Denomination Type, Denomination, Quantity, Amount | Checkpoint-scoped editable denomination records for active counting. |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6059915 | NPR Denomination Mgt. | AssistEditPOSPaymentBinCheckpointDenominations(), StoreCountedDenominations(), CalculateTotals(), CalculatedCountedAmtFromAssignedDenominations() | Core denomination management: interactive counting, persistence, totals calculation. |

### NPR Denomination Mgt. Methods

| Method | Description |
|--------|-------------|
| AssistEditPOSPaymentBinCheckpointDenominations(POSPaymentBinCheckp, AttachedToID, ViewMode, var TotalAmount) | Opens interactive counting dialog. Loads unblocked denominations, lets user enter quantities, calculates totals. |
| ViewPOSPaymentBinCheckpointDenominations(POSPaymentBinCheckp, AttachedToID) | Read-only view of counted denominations for a checkpoint. |
| StoreCountedDenominations(POSWorkshiftCheckpoint) | Persists all counted denominations from checkpoint to permanent `POSPaymBinDenomin` table. |
| CalculateTotals(var POSPmtBinCheckpDenom, var TotalNumberOfUnits, var TotalCurrencyAmount) | Calculates sum of quantities and amounts from denomination records. |

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| 6014547 | NPR Edit POS Pmt. Denomination | Interactive denomination counting dialog. Shows expected denominations, allows quantity entry. |
| — | NPR POS Pmt. Bin Checkp. Denom | List page for viewing checkpoint denomination records. |

## Enums

| Enum | Values | Description |
|------|--------|-------------|
| NPR Denomination Type | Coin, Bill, etc. | Categorizes denomination types |
| NPR Denomination Target | Bin Checkpoint, etc. | Identifies what the denomination is attached to |
