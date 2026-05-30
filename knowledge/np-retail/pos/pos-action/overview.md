---
type: concept
tags: [np-retail, pos, pos-action]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-payment/overview.md
updated: 2026-05-09
---

# POS Action Module

The POS Action module implements front-end action workflows — individual business operations triggered by button presses in the POS interface (Dragonglass). It also includes miscellaneous utility actions.

## Architecture

Each action is a codeunit registered via `DiscoverPOSActionSeq.Codeunit.al` or `NPR POS Action Management` framework. Actions are dispatched by `POSJavaScriptInterface.InvokeMethod()` in POS Core when the frontend calls `OnAction` or `OnAction20`. The module contains ~60 action subdirectories under the root.

### Action Categories

| Category | Example Actions | Purpose |
|----------|----------------|---------|
| **Item** | Item, ItemLookup, Item Qty, Item Unit Price, ItemCard, ItemVariants | Item search, selection, quantity/price modification |
| **Customer** | Customer Select, Customer Insert, Customer Info, Contact Select | Customer management inline |
| **Sale** | End Sale, Cancel Sale, ReverseSale, Reverse Direct Sale | Sale lifecycle termination |
| **Pricing** | Discount, Calculate Discounts, Item Price, BlockDiscount, SetSaleVAT | Discount and price modification |
| **Payment** | CashVoucher, SetVoucherRefNo, POSActionCKPayment, POSActionEFTOperation | Payment-specific operations |
| **Inventory** | AdjustInventory, BinTransfer, ChangeBin, ChangeLocation, ChangeUOM | Stock/location manipulation |
| **Print** | PrintReceipt, PrintItem, Print Template, PrintExchLabel, Print Post Exch | Receipt/label printing |
| **View** | ChangeView, Change Resp. Center, SwitchRegister, StartPOS | UI navigation |
| **Serial/Lot** | AssignSerialNo, AssignLotNo | Tracking dimension fulfillment |
| **Misc** | LockPOS, Open Drawer, PlaySound, TextEnter, Quick Login, InsertComm | Utility functions |
| **Notifications** | NotificationCard, NotificationList | Alert display |
| **Data** | LoadPOSSvSl, SavePOSSvSl, MergeSimilarLines, ZoomLine | Sale line operations |
| **Returns** | NpGp Return, RetailInventory, Raptor | Return/exchange workflows |
| **Tax Free** | Tax Free, VATRefusion, SetTaxAreaCode, SetVATBGrp, SetTaxLiable | Tax exemption processing |
| **Shipping** | SelectShipmentMethod, TransferOrder | Shipment/transfer |
| **External** | Read Belgian eID, Insert Table Buzzer, BoardingPass, ImportPostedInvoice | External integrations |
| **Reports** | RunReport, RunPage, RunObject, RunPageItem, Hyperlink | Generic BC object launching |

### Action Sequence Discovery

The `DiscoverPOSActionSeq.Codeunit.al` (6150737, obsoleted) previously discovered action sequences. Current architecture relies on `NPR POS Action Management` (codeunit 6150719, defined in POS Core) for action configuration validation via `LookupAction()` and `IsValidActionConfiguration()`.

### Central Management Codeunits

- `BlockUnblockPOSAction.Codeunit.al` (6014691) — Batch toggles the Blocked flag on action records. Fires `OnBeforePosActionToggleBlocked` integration event.
- `POSActionCKMgt.Codeunit.al` (6150854) — Check payment action management (obsoleted).
- `POSActionCKPayment.Codeunit.al` — Check payment workflow action.
- `POSActionCustomerCard.Codeunit.al` — Customer card display action.
- `POSActionEFTGiftCard.Codeunit.al` — EFT gift card loading action.
- `POSActionEFTOperation.Codeunit.al` — EFT auxiliary operation action.

## Key Business Flows

### Item Insert Flow
1. User presses Item button in frontend
2. Frontend calls `OnAction` with action code for Item
3. `NPR POS Action Item` codeunit runs: opens item lookup page
4. Selected item is added to sale via `POSSaleLine.InsertLine()`
5. Discount calculation triggers automatically

### Sale End Flow
1. User presses End Sale → workflows verify constraints
2. `NPR POS Action End Sale` runs payment collection workflow
3. Payment WF2 dispatches to tender-specific handlers
4. After-sale execution order runs (receipt, loyalty, etc.)

## Dependencies

- **POS Core** — `NPR POS Session`, `NPR POS Sale`, `NPR POS Sale Line`, `NPR POS Front End Management`
- **POS Payment** — Payment workflows and tender processing
- **Sentry** — Action execution is traced

## Extension Points

Partners can add custom actions by:
1. Creating a new codeunit that handles a specific workflow name
2. Subscribing to `OnAction` or `OnCustomMethod` in `NPR POS JavaScript Interface`
3. Adding action configuration entries to `NPR POS Action` table
