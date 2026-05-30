---
type: concept
tags: [np-retail, pos, payment-bin, pos-payment-bin]
relates:
  - np-retail/pos/pos-payment/overview.md
  - np-retail/pos/pos-posting/overview.md
  - np-retail/pos/pos-unit/overview.md
  - np-retail/infrastructure/sentry/overview.md
updated: 2026-05-09
---

# POS Payment Bin Module

The POS Payment Bin module manages physical and virtual cash drawers, safes, and bank deposit bins used in the POS system. It handles cash drawer ejection, bin transfer journals (cash movement between bins), and bin checkpoint/balancing operations.

## Architecture

Payment Bins represent physical or virtual cash storage locations in a retail environment. Each bin is assigned an eject method (e.g., PRINTER for cash drawer kick-out) and a bin type that defines its physical characteristics.

### Bin Types

| Type | Value | Purpose |
|------|-------|---------|
| Cash Drawer | 0 (CASH_DRAWER) | Standard POS cash drawer attached to a register |
| Bank | 1 (BANK) | Bank deposit bag/container |
| Safe | 2 (SAFE) | Secure on-site storage |
| Virtual | 3 (VIRTUAL) | Software-only tracking bin |

### Bin Status

Bins can be Open, Closed, or Being Counted. The status tracks whether a bin is currently available for transactions or locked for counting/balancing.

### Drawer Ejection

Drawer ejection is mediated by the `"NPR POS Payment Bin Eject Mgt."` codeunit (6150641). The ejection system:

1. Called by the end-of-sale workflow (`CarryOutPaymentBinEject`) — checks if any payment method requires drawer opening
2. Resolves the eject method from the bin record (defaults to PRINTER for OPOS compatibility)
3. Fires integration event `OnEjectPaymentBin` for custom eject implementations (OPOS, printer cash drawer kick, etc.)
4. Logs all drawer openings to the audit log (auto vs manual)
5. Supports generic eject method parameters via the `"NPR POS Paym. Bin Eject Param."` table — text, integer, boolean, option, decimal, date values

### Bin Transfer Journal

The Bin Transfer Journal (`"NPR POS Bin Transfer Journal"`, `"NPR POS Bin Transfer Profile"`) enables cash movements between bins:
- **Transfer Profiles** define named transfer templates (e.g., "Daily Cash Drop")
- **Journals** record individual transfer lines with amounts and denominations
- **Posting** codeunit (`BinTransferPost`) commits transfers to `"NPR POS Posted Bin Transfer Entry"`
- **Denomination counting** via `"NPR POS Counting Denomination"` for physical cash counting at transfer time

### Bin Checkpoint

The `"NPR POS Payment Bin Checkpoint"` table and `"NPR POS Payment Bin Checkpoint"` codeunit manage periodic bin snapshots for reconciliation:
- Expected amounts based on recorded transactions vs actual counted amounts
- Used by the POS Payment Denomination and POS Posting modules for end-of-day balancing

## Dependencies

- **POS Core** — POS Unit reference for bin attachment, sale lifecycle
- **POS Payment** — Payment methods that trigger drawer opening
- **POS Posting** — Bin checkpoint integration for end-of-day
- **Sentry** — Drawer operations traced via Sentry spans

## Extension Points

Partners can extend drawer ejection by:
1. Subscribing to `OnEjectPaymentBin` integration event to implement custom eject hardware (OPOS, network printers, etc.)
2. Subscribing to `OnLookupBinInvokeMethods` to register custom eject methods in the lookup list
3. Subscribing to `OnShowInvokeParameters` to provide custom parameter UI for eject methods
4. Adding eject method parameter entries in the `"NPR POS Paym. Bin Eject Param."` table
