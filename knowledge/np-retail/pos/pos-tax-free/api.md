---
type: reference
tags: [np-retail, pos, tax-free, pos-tax-free]
relates:
  - np-retail/pos/pos-tax-free/overview.md
updated: 2026-05-09
---

# POS Tax Free Module — API Reference

## Interfaces

| Name | Procedures | Description |
|------|-----------|-------------|
| "NPR Tax Free Handler IF" | OnUnitAutoConfigure, OnUnitTestConnection, OnVoucherIssueFromPOSSale, OnVoucherVoid, OnVoucherReissue, OnVoucherLookup, OnVoucherPrint, OnVoucherConsolidate, OnIsValidTerminalIIN, OnIsActiveSaleEligible, OnIsStoredSaleEligible, OnLookupHandlerParameter, OnSetUnitParameters | Full lifecycle interface for tax free provider handlers. Each provider implements all procedures |
| "NPR Tax Free Handler Interface" | (same as above, identical interface) | Duplicate interface (appears to be a secondary definition or migration artifact) |

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| *(unknown)* | "NPR Tax Free Handler ID" | NPR Tax Free Handler ID | Extensible | Maps each tax free provider to its implementing interface. Values include PREMIER_PI and other providers |
| *(unknown)* | "NPR Tax Free OnRunFunction" | NPR Tax Free OnRunFunction | UnitAutoConfigure, UnitTestConnection, VoucherIssueFromPOSSale, VoucherVoid, VoucherReissue, VoucherLookup, VoucherPrint, VoucherConsolidate, IsValidTerminalIIN, IsStoredSaleEligible, IsActiveSaleEligible | Dispatch enum for the TaxFreeExecute codeunit to route calls to the correct interface method |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| *(unknown)* | "NPR POS Tax Free Profile" | POS Tax Free Profile | PK: "Tax Free Profile" (Code[20]) | POS unit tax free configuration. Links to handler ID, stores timeout, log level, mode, print settings, handler parameters (BLOB). Fields: Handler ID Enum, Mode, Request Timeout (ms), Log Level (None/Error/All), Store Voucher Prints, Check POS Terminal IIN |
| *(unknown)* | "NPR Tax Free Request" | Tax Free Request | PK: Entry No. (AutoIncrement) | Request/response log for external provider interactions. Fields: User ID, Request Type, Date Start/End, Time Start/End, Success, Error Message, Error Code, Mode, Timeout (ms), Handler ID Enum, Tax Free Profile, Salesperson Code, POS Unit No., External Voucher Barcode/No., Total Amount Incl. VAT, Refund Amount, Service ID, Print (BLOB), Print Type |
| *(unknown)* | "NPR Tax Free Voucher" | Tax Free Voucher | PK: Entry No. (AutoIncrement). Others: External Voucher Barcode, External Voucher No., Issued Date/Time, Issued By User, Void, Voided By User/Date/Time, Print Type, Total Amount Incl. VAT, Refund Amount, Salesperson Code, POS Unit No., Handler ID Enum, Mode, Service ID, Print (BLOB) | Issued voucher record. Supports void lifecycle, print data storage, and links to sale documents via TaxFreeVoucherSaleLink |
| *(unknown)* | "NPR Tax Free Voucher Sale Link" | Tax Free Voucher Sale Link | PK: Voucher Entry No. + Sales Ticket No. | Links vouchers to sales. Supports multiple sales per voucher (consolidation). Fields: Voucher Entry No., Sales Ticket No., Sales Header No., Sales Header Type |
| *(unknown)* | "NPR Tax Free Consolidation" | Tax Free Consolidation | — | Temporary table for grouping multiple sales into a single consolidated voucher |
| *(unknown)* | "NPR Tax Free Handler Param." | Tax Free Handler Param. | — | Handler-specific parameter storage (serialized/deserialized via BLOB) |
| *(unknown)* | "NPR TaxFree POSUnit" | TaxFree POSUnit | — | POS unit-level tax free configuration |
| *(unknown)* | "NPR TaxFree POSUnit" | TaxFree POSUnit | — | (appears twice — possibly per-unit handler parameters) |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6014610 | "NPR Tax Free Handler Mgt." | NPR Tax Free Handler Mgt. | Constructor(HandlerID), SetGenericHandlerParameters(Profile), SetParameters(Profile), UnitAutoConfigure(Profile, Silent), UnitTestConnection(Profile), VoucherIssueFromPOSSale(ReceiptNo), VoucherVoid(var Voucher), VoucherReissue(var Voucher), VoucherLookup(Profile, VoucherNo), VoucherPrint(Voucher), VoucherPrintLast(), VoucherConsolidate(Profile, var tmpConsolidation), IsValidTerminalIIN(Profile, MaskedCardNo): Boolean, IsActiveSaleEligible(Profile, SalesTicketNo): Boolean, IsStoredSaleEligible(Profile, SalesTicketNo): Boolean, IssueTaxFreeVoucher(SalePOS) | OnBeforeSetConstructor(var TaxFreeHandlerIF, var ConstrSet) |
| 6014434 | "NPR Tax Free Execute" | NPR Tax Free Execute | (OnRun trigger) TaxFreeHandlerInterfaceSet, OnRunTaxFreeRequestGetSet, OnRunTaxFreeVoucherGetSet, OnRunHandledGetSet, OnRunIsForeignIINGetSet, OnRunEligibleGetSet, OnRunSilentSet, OnRunFunctionSet, OnRunTaxFreeRequestSuccessSet, OnRunSalesReceiptNoSet, OnRunIsrecentVoucherSet, OnRunMaskedCardNoSet, OnRunSkipRecordHandlingGetSet, OnRunTmpTaxFreeConsolidationGetSet | None (single-instance dispatcher) |
| *(unknown)* | "TaxFreeReceipt" | Tax Free Receipt | — | None (receipt printing) |
| *(unknown)* | "TaxFreeLastVouchPrint" | TaxFree LastVouch.Print | GetVoucher(var EntryNo, var Blob, var PrintType): Boolean, SetVoucher(EntryNo, Blob, PrintType) | None (session-scoped last-print cache) |

### Codeunit Details

**6014610 "NPR Tax Free Handler Mgt."** — Central orchestrator for all tax free operations:
- `Constructor(HandlerID)`: Resolves the handler interface from the enum value via `OnBeforeSetConstructor` integration event or default enum implementation
- `SetGenericHandlerParameters(Profile)`: Opens handler parameter page for configuration
- `UnitAutoConfigure(Profile, Silent)`: Auto-configures the handler (e.g., registers terminal with provider)
- `UnitTestConnection(Profile)`: Tests connectivity with the tax free provider
- `VoucherIssueFromPOSSale(ReceiptNo)`: Full issue flow — checks existing vouchers, eligibility, calls handler, creates voucher records, prints
- `VoucherVoid/VoucherReissue`: Manages void lifecycle with provider + local record update
- `VoucherPrint/VoucherPrintLast`: Print flow with session-scoped last-print cache
- `VoucherConsolidate(Profile, tmpConsolidation)`: Merges multiple sale lines into one voucher
- `IsValidTerminalIIN`: Checks if terminal IIN is foreign (enables tax free eligibility)
- `IsActiveSaleEligible/IsStoredSaleEligible`: Checks sale eligibility (VAT amount thresholds, dates)
- All operations: Create request record → run event via TaxFreeExecute → handle response (success/error) → log → commit
- Pattern: Commit() before handler call, handler does external work, then commit again for local records

**6014434 "NPR Tax Free Execute"** — Single-instance dispatcher that routes `OnRun` to the correct interface method based on `OnRunFunction` enum. Uses getter/setter pattern for passing arguments to the trigger without modifying the standard OnRun signature.

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR POS Tax Free Profile" | POS Tax Free Profile | "NPR POS Tax Free Profile" | Tax free profile card |
| *(unknown)* | "NPR POS Tax Free Profiles" | POS Tax Free Profiles | "NPR POS Tax Free Profile" | List of tax free profiles |
| *(unknown)* | "NPR Tax Free Requests" | Tax Free Requests | "NPR Tax Free Request" | Request/response log viewer |
| *(unknown)* | "NPR Tax Free Voucher" | Tax Free Voucher | "NPR Tax Free Voucher" | Voucher card page |
| *(unknown)* | "NPR Tax Free Voucher Sale Links" | Tax Free Voucher Sale Links | "NPR Tax Free Voucher Sale Link" | Links to sales |
| *(unknown)* | "TaxFreeConsolidation" | Tax Free Consolidation | "NPR Tax Free Consolidation" | Consolidation page |
| *(unknown)* | "NPR Tax Free Gen. Handl. Param." | Tax Free Gen. Handl. Param. | "NPR Tax Free Handler Param." | Generic handler parameter editor |
