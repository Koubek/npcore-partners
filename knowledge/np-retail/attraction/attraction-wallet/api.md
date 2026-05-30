---
type: reference
tags: [np-retail, attraction, attraction-wallet, tables, codeunits, enums, queries, pages]
relates: [np-retail/attraction/attraction-wallet/overview.md]
updated: 2026-05-09
---

# AttractionWallet — API Reference

## Tables

| ID | Name | Caption | Key Fields | Notes |
|----|------|---------|------------|-------|
| 6150937 | NPR AttractionWallet | Attraction Wallet | EntryNo (PK, clustered) | Core wallet record; AutoIncrement EntryNo, ReferenceNumber with included ExpirationDate index |
| 6150967 | NPR AttractionWalletSaleHdr | — | SaleHeaderSystemId, WalletNumber (PK) | Intermediate mapping: POS sale header → wallet number |
| 6150968 | NPR AttractionWalletSaleLine | — | SaleHeaderSystemId, LineNumber, WalletNumber | Create/Revoke/Revoke+Remove actions per sale line |
| 6151146 | NPR AttractionWalletExtRef | Attraction Wallet External Reference | ExternalReference (PK, clustered) | External reference numbers with BlockedAt/ExpiresAt |
| 6150930 | NPR WalletAssetHeader | — | EntryNo (PK) | Groups wallet assets per transaction (TransactionId Guid) |
| 6150931 | NPR WalletAssetLine | — | EntryNo (PK) | Individual assets: Ticket/Coupon/Membership/Voucher/Wallet; Type enum, LineTypeSystemId/Guid |
| 6150933 | NPR WalletAssetHeaderReference | — | EntryNo (PK) | Links WalletAssetHeader to external records (POS Entry, Customer, Wallet) via LinkToTableId/SystemId |
| 6150932 | NPR WalletAssetLineReference | — | EntryNo (PK) | Links WalletAssetLine to specific wallet; supports supersession chain |

### NPR AttractionWallet (6150937)
Fields: EntryNo (Integer, AutoIncrement), ReferenceNumber (Code[50]), OriginatesFromItemNo (Code[20]), Description (Text[100]), ExpirationDate (DateTime), PrintCount (Integer), LastPrintAt (DateTime).

### NPR AttractionWalletExtRef (6151146)
Fields: ExternalReference (Text[100], PK), WalletEntryNo (Integer → NPR AttractionWallet), BlockedAt (DateTime), ExpiresAt (DateTime).
OnInsert/OnRename validates uniqueness across both references and wallet ReferenceNumber.

### NPR WalletAssetHeader (6150930)
Fields: EntryNo (Integer, AutoIncrement), TransactionId (Guid).

### NPR WalletAssetLine (6150931)
Fields: EntryNo (Integer, AutoIncrement), TransactionId (Guid), ItemNo (Code[20]), Description (Text[250]), Type (Enum NPR WalletLineType), LineTypeSystemId (Guid), LineTypeReference (Text[100]), DocumentNumber (Code[20]), TransferControlledBy (Enum NPR WalletRole).

### NPR WalletAssetHeaderReference (6150933)
Fields: EntryNo (Integer, AutoIncrement), LinkToTableId (Integer), LinkToSystemId (Guid), LinkToReference (Text[100]), WalletHeaderEntryNo (Integer → NPR WalletAssetHeader), ExpirationDate (DateTime), SupersededBy (Integer → self). Multiple key indexes covering (LinkToTableId, LinkToReference, SupersededBy) and (WalletHeaderEntryNo, ...).

### NPR WalletAssetLineReference (6150932)
Fields: EntryNo (Integer, AutoIncrement), WalletEntryNo (Integer → NPR AttractionWallet), WalletAssetLineEntryNo (Integer → NPR WalletAssetLine), ExpirationDate (DateTime), SupersededBy (Integer → self). FlowFields: AssetType, AssetReference.

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6185062 | NPR AttractionWallet | Core wallet management: create, revoke, print, block/unblock, reference management, wallet-to-asset linking |
| 6185076 | NPR AttractionWalletCreate | POS sale integration; subscribes OnBeforeEndSale and OnBeforeSetQuantity to create/revoke wallets per sale line |
| 6185077 | NPR AttractionWalletPrint | After-sale print handler (sequence 85); delegates to AttractionWallet.PrintWallets |
| 6185068 | NPR AttractionWalletCoupon | Coupon module integration; registers ON-ATTRACTION-WALLET module for issuance |

### NPR AttractionWallet (6185062)
Key procedures:
- `IsWalletEnabled()` / `IsEndOfSalePrintEnabled()` — checks setup flag
- `CreateAssetsFromPosSaleLine()` — main entry from POS; creates wallets and assets per sale line
- `RevokeAssetsFromPosSaleLine()` — handles negative-quantity revocation
- `PrintWallets(TableId, SystemId, PrintContext)` — prints wallets linked to a POS entry
- `PrintWallet(EntryNo, PrintContext)` / `PrintWallets(EntryNoList, PrintContext)` — targeted printing
- `AddTicketsToWallet` / `AddCouponsToWallet` / `AddVouchersToWallet` / `AddMemberCardsToWallet` — bulk asset add
- `AddTicketToWallet` / `AddCouponToWallet` / `AddVoucherToWallet` / `AddMemberCardToWallet` — single asset add
- `CreateWallet` — creates wallet record + external reference
- `ExpireWallet` / `BlockAllExternalReferences` / `BlockExternalReference` / `UnBlockExternalReference` — lifecycle
- `BlockAsset` / `UnBlockAsset` / `GetAssetBlockState` — asset-level block (propagates to underlying systems)
- `BlockAllAssets` — blocks all assets of a wallet
- `SetWalletExternalReference` / `CreateNewExternalReference` — reference management
- `GetWalletByReferenceOrExtRef` — resolves wallet by either reference type
- `UpdateEmailAddressOnAllWallets` — bulk email update for customer reference records

### NPR AttractionWalletCreate (6185076)
Event subscribers:
- `OnBeforeEndSale` — create/revoke wallets per sale line at end of sale
- `OnBeforeSetQuantity` — adjust intermediate wallet quantities when line qty changes
- `OnBeforeDeleteRecord` — cleanup intermediate wallet records on line delete
- `CreateIntermediateWallet` — multiple overloads for sale-line-level and existing-wallet-level creation

### NPR AttractionWalletCoupon (6185068)
- `IssueCoupons(CouponType, Quantity, var TempCoupon)` — generates N coupons
- Registers with `NPR NpDc Coupon Module Mgt.` as `ON-ATTRACTION-WALLET` module
- Blocks direct coupon issuance (`OnRunIssueCoupon` — forces wallet-only issuance)

## Enums

| Name | Values | Notes |
|------|--------|-------|
| NPR WalletPrintType | (from _public) | Print context for wallet printing |
| NPR WalletLineType | Ticket, Coupon, Membership, Voucher, Wallet | Asset line classification |
| NPR WalletRole | Holder, etc. | Transfer control role |

## Queries

| Name | Purpose |
|------|---------|
| AttractionWalletAssetHist | Wallet asset history query |
| AttractionWalletAssets | Wallet assets query |
| AttractionWalletExtRef | Wallet external reference query |
| FindAttractionWallets | Wallet search query |

## Pages (Temporary List)

| Name | Source Table | Notes |
|------|-------------|-------|
| TMPWallet | NPR AttractionWallet (temp) | Temporary wallet list |
| TMPAssetHeader | NPR WalletAssetHeader (temp) | Temporary asset header list |
| TMPAssetHeaderRef | NPR WalletAssetHeaderReference (temp) | Temporary header reference list |
| TMPAssetLine | NPR WalletAssetLine (temp) | Temporary asset line list |
| TMPAssetLineRef | NPR WalletAssetLineReference (temp) | Temporary line reference list |

## Events

### NPR AttractionWalletEvents (_public/AttractionWalletEvents.Codeunit.al)

| Event | Type | Description |
|-------|------|-------------|
| OnAfterCreateWalletFromPOSSaleLine | Integration | After wallet is created from a POS sale line |
