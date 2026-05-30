---
type: concept
tags: [np-retail, pos, pos-posting]
relates:
  - np-retail/pos/pos-payment/overview.md
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Posting Module

The POS Posting module is the core accounting engine of the POS system. It handles the creation of posted entries from POS sales, manages workshift checkpoints (X/Z-reports), performs end-of-day balancing, and posts GL, customer, and item ledger entries.

## Architecture

The module processes POS sales through multiple layers: entry creation (`NPR POS Create Entry`), posting to subledgers (`POSPostCustLedgEntry`, `POSPostGLEntriesJQ`, `POSPostItemEntries`), and workshift lifecycle management (`NPR POS Workshift Checkpoint`).

### Key Components

| Component | Purpose |
|-----------|---------|
| **POSPostingControl.Codeunit.al** (6150637) | Dimension consistency checking for posted entries. |
| **POSWorkshiftCheckpoint.Codeunit.al** (6150627) | Orchestrates X-report, Z-report, and Close Workshift workflows. Manages master/slave multi-unit balancing. |
| **POSEntrySalePayment.Table.al** (6014694) | Temporary table joining sale and payment entries for reporting. |
| **POSPaymentMethodItem.Table.al** (6059797) | Defines items/G/L accounts per payment method for posting. |
| **POSPostCustLedgEntry.Codeunit.al** | Posts customer ledger entries from POS credit sales. |
| **POSPostGLEntriesJQ.Codeunit.al** | Posts GL entries via job queue for async posting. |
| **POSPostItemEntries.Codeunit.al** | Posts item ledger entries from POS item sales. |
| **POSEntryMediaInfo.Table.al** | Stores media attachments for posted entries. |
| **POSEntryOutputLog.Table.al** | Logs receipt output (print/email) per entry. |
| **POSEntrySDocLinkMgt.Codeunit.al** | Links entries to sales documents for credit sales. |
| **POSEntryNavigation.Codeunit.al** | Provides navigation between entries and related documents. |
| **POSBalancingLine.Page.al** | UI for viewing balancing entry lines. |
| **POSEntityGroups.Page.al** | UI for configuring entity posting groups. |

### Workshift Checkpoint Lifecycle

```
Open → X-Report (summary, counting)
     → Z-Report (posting + balancing)
     → Close Workshift (zero balancing)
```

The workshift checkpoint aggregates:
- Direct sales (count, amounts, quantities)
- Credit sales (realized/unrealized, invoice vs. credit memo)
- Payments by method (cash, card, EFT, voucher, foreign currency)
- Discounts (campaign, mix, quantity, custom, BOM, customer, line)
- Transfer statistics (bin transfers in/out)

### Master/Slave Multi-Unit Balancing

When POS units share an End-of-Day Profile of type MASTER_SLAVE:
1. Master triggers EOD, verifies all slaves are closed
2. Slave workshifts are created and their bin contents transferred to master
3. Master aggregates all cumulative statistics via `AddWorkshifts` / `AddTaxCheckpoints`

## Key Business Flows

### Z-Report (End of Day with Posting)
1. User initiates End of Day from POS frontend
2. `CloseWorkshiftWorker` creates a checkpoint
3. EOD UI shown (summary or balancing mode, configurable per profile)
4. Denomination counting completed via `DenominationMgt`
5. `CreateBalancingEntry` creates balancing POS entry
6. All sales entries posted to GL, Customer, and Item ledgers
7. Running totals (perpetual turnover) updated
8. Audit log entries created (drawer count, grand total, workshift end)

### Posting to General Ledger
- Direct sales post immediately (or via job queue)
- Credit sales create GL entries for the POS entry, while the ERP document posts separately
- `POSPostGLEntriesJQ` handles async GL posting
- `POSPostItemEntriesJQ` handles async item posting

### Dimension Validation
`POSPostingControl` subscribes to `OnAfterInsertPOSEntry`/`OnAfterInsertPOSPaymentLine`/`OnAfterInsertPOSSalesLine` to validate that global dimensions (Shortcut Dimension 1 & 2) are consistent with the Dimension Set ID.

## Dependencies

- **POS Core** — `NPR POS Sale`, `NPR POS Sale Line`, `NPR POS Entry`, `NPR POS Unit`
- **POS Payment** — `NPR POS Payment Line`, `NPR POS Payment Method`
- **POS Payment Denomination** — `DenominationMgt` for counted denomination persistence
- **Sentry** — Posting operations are traced
- **ERP System** — Standard NAV/BC posting codeunits (Cust. Entry-Edit, GL, Item Journal)

## Extension Points

- `OnAfterEndWorkshift` — React to workshift completion
- `OnAfterCreateBalancingEntry` — Custom actions after balancing entry created
- `OnAfterCalculateWorkshiftSummaryOnBeforeFinalizeCheckpoint` — Modify checkpoint summary before finalization
