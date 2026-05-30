---
type: concept
tags: [np-retail, attraction, attraction-wallet, wallet]
relates:
updated: 2026-05-09
---

# AttractionWallet Module

Manages digital wallets issued at POS for attraction-based venues (theme parks, events). Each wallet can hold assets: tickets, coupons, membership cards, and vouchers — collectively managed, printed, transferred, and revoked.

## Core Concept

When an item with `NPR CreateAttractionWallet = true` is sold at POS, the sale line's quantity determines how many wallets are created. Wallets are printed at end-of-sale and become the guest's digital credential for the venue.

## Key Business Flows

### Wallet Creation at POS (OnBeforeEndSale)
1. `AttractionWalletCreate` subscribes to `NPR POS Sale.OnBeforeEndSale`
2. Iterates sale lines; for lines with `NPR CreateAttractionWallet` or add-on flag, calls `AttractionWallet.CreateAssetsFromPosSaleLine`
3. Intermediate wallet records (`AttractionWalletSaleHdr`/`AttractionWalletSaleLine`) track create/revoke actions before finalization
4. `CreateWallets()` inserts wallet records and generates reference numbers
5. `CreateAssets()` delegates to sub-handlers: `AddTicketAssets`, `AddCouponAssets`, `AddMembershipCardAssets`

### Wallet Printing (OnFinishSale via After-Sale Execution Order)
Sequence 85 in the POS after-sale pipeline prints all wallets attached to the POS entry via `AttractionWalletPrint` and `AttractionWallet.PrintWallets`.

### Asset Lifecycle
- **Issue**: Ticket reservations, coupon generation, membership card links are created per POS line
- **Revoke**: Negative-quantity lines trigger asset revocation via `RevokeAssetsFromPosSaleLine`
- **Block/Unblock**: Individual assets can be blocked (`BlockAsset`) which propagates to the underlying ticket/coupon/membership/voucher

### External References
Wallets can be externally referenced via `AttractionWalletExtRef` table:
- `SetWalletExternalReference` assigns custom references
- `BlockExternalReference`, `UnBlockExternalReference`, `ExpireWallet` manage lifecycle
- `GetWalletByReferenceOrExtRef` resolves either reference type

## Architecture

### Wallet Model (multi-layer)
- `NPR AttractionWallet` — The wallet itself (EntryNo, ReferenceNumber, ItemNo, ExpirationDate)
- `NPR WalletAssetHeader` — Groups assets per transaction (TransactionId)
- `NPR WalletAssetLine` — Individual asset lines (Ticket, Coupon, Membership, Voucher, Wallet)
- `NPR WalletAssetHeaderReference` — Links wallet headers to external records (POS Entry, Customer)
- `NPR WalletAssetLineReference` — Links asset lines to specific wallets
- `NPR AttractionWalletExtRef` — External reference numbers for lookup
- `NPR AttractionWalletSaleHdr` — Intermediate sale-to-wallet mapping during POS flow
- `NPR AttractionWalletSaleLine` — Create/revoke tracking for sale lines

### Coupon Integration
`AttractionWalletCoupon` registers as an "ON-ATTRACTION-WALLET" coupon module with `NPR NpDc Coupon Module Mgt.`, handling issue-coupon setup and execution (blocking direct issuance — coupons must go through wallet).

### Dependencies
- **POS Core** — sale lifecycle integration via event subscriptions
- **Item AddOn** — add-on lines trigger wallet creation
- **Coupon** (NpDc) — coupon issuance within wallet
- **Ticket Management** (TM) — ticket reservation/assets
- **Member Module** (MM) — membership card assets
- **Voucher** (NpRv) — voucher assets
- **Sentry** — observability for create/print spans

## Dependencies

- POS Core (POS Session, POS Sale, POS Sale Line)
- Item AddOn (NPR NpIa SaleLinePOS AddOn — determines AddToWallet flag)
- Coupon (NPR NpDc Coupon, NPR NpDc Coupon Mgt.)
- Ticket Management (NPR TM Ticket, NPR TM Ticket Reservation Req.)
- Member Module (NPR MM Member Card, NPR MM Member Info Capture)
- Voucher (NPR NpRv Voucher)
- Sentry (telemetry)
