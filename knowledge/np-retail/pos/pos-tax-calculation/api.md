---
type: reference
tags: [np-retail, pos, tax-calculation, pos-tax-calculation]
relates:
  - np-retail/pos/pos-tax-calculation/overview.md
updated: 2026-05-09
---

# POS Tax Calculation Module — API Reference

## Interface

| Name | Procedures | Description |
|------|-----------|-------------|
| "NPR POS ITaxCalc" | PostPOSTaxAmountCalculation(EntryNo: Integer, SystemId: Guid, POSSaleTax: Record "NPR POS Sale Tax"), PostPOSTaxAmountCalculationReverseSign(EntryNo: Integer, SystemId: Guid, POSSaleTax: Record "NPR POS Sale Tax") | Strategy interface for tax calculation. Each tax type (Normal VAT, Full VAT, Sales Tax, etc.) implements this interface via the "NPR POS Tax Calc. Type" enum |

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6150756 | "NPR POS Tax Calc. Type" | NPR POS Tax Calc. Type | Normal VAT(0), "Reverse Charge VAT"(1), "Full VAT"(2), "Sales Tax"(3), "No Taxable VAT"(4) | Extensible enum mapping tax calculation strategies to implementing codeunits. Each value implements "NPR POS ITaxCalc" |
| 6150757 | "NPR POS Tax Type" | NPR POS Tax Type | "Sales Tax"(0), "Excise Tax"(1), "Normal Tax"(2), "Reverse Tax"(3), "No Taxable VAT"(4) | Tax type classification for reporting purposes |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6014570 | "NPR POS Sale Tax" | POS Sale Tax | PK: Source Rec. System Id (Guid, Clustered) | Central tax calculation record. Carries source data fields (Amount, Prices Including Tax, Tax Liable, Tax Group Code, Tax Area Code, Quantity, Unit Price, Currency Code, Currency Factor, Tax Calc. Type, Posting Date, Line Amount, Discount %, Discount Amount, Tax Identifier, Tax %, Allow Line Discount) and calculated/result fields (Calculated Amount Excl./Incl. Tax, Calculated Price Excl./Incl. Tax, Calculated Unit Tax, Calculated Tax Amount, Tax Area Code for Key, Tax Group Type, Calculated Tax %, Calculated Discount %, Calculated Discount Amount, Calculated Line Amount). Methods: CopyFromSource(SaleLinePOS), CopyFromSourceAmounts(SaleLinePOS), GetHandler(var POSTaxCalc: Interface), SetTaxCalcTypeFromSource(SaleLinePOS) |
| *(unknown)* | "NPR POS Entry Tax Line" | POS Entry Tax Line | PK: POS Entry No. + Tax Line No. | Posted tax lines per POS entry. Created by tax calculation strategies during posting |
| *(unknown)* | "NPR POS Sale Tax Line" | POS Sale Tax Line | PK: Source Rec. System Id + Line No. | Per-line tax details during calculation |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6014634 | "NPR POS Entry Tax Calc." | NPR POS Entry Tax Calc. | PostPOSTaxAmountCalculation(EntryNo, SystemId), PostPOSTaxAmountCalculationReverseSign(EntryNo, SystemId), DeleteAllLines(EntryNo), FilterLines(EntryNo, var POSEntryTaxLine) | None (entry facade) |
| *(unknown)* | "NPR POS Sale Tax Calc." | NPR POS Sale Tax Calc. | Find(var POSSaleTax, SystemId): Boolean, DeleteAllLines(POSSaleTax), RenameNotAllowed() | None (table helper) |
| *(unknown)* | "NPR POS Normal Tax" | NPR POS Normal Tax | PostPOSTaxAmountCalculation, PostPOSTaxAmountCalculationReverseSign | None (normal VAT strategy) |
| *(unknown)* | "NPR POS Full Tax" | NPR POS Full Tax | PostPOSTaxAmountCalculation, PostPOSTaxAmountCalculationReverseSign | None (full VAT strategy) |
| *(unknown)* | "NPR POS Sales Tax" | NPR POS Sales Tax | PostPOSTaxAmountCalculation, PostPOSTaxAmountCalculationReverseSign | None (sales tax strategy) |
| *(unknown)* | "NPR No Taxable VAT" | NPR No Taxable VAT | PostPOSTaxAmountCalculation, PostPOSTaxAmountCalculationReverseSign | None (zero-tax strategy) |

### Codeunit Details

**6014634 "NPR POS Entry Tax Calc."** — Entry facade for posted entry tax calculation:
- `PostPOSTaxAmountCalculation(EntryNo, SystemId)`: Finds the `"NPR POS Sale Tax"` record, resolves the handler via `GetHandler()`, and calls `ITaxCalc.PostPOSTaxAmountCalculation(EntryNo, SystemId, POSSaleTax)`
- `PostPOSTaxAmountCalculationReverseSign(EntryNo, SystemId)`: Same flow but calls the reverse-sign variant (for credit/return entries)
- `DeleteAllLines(EntryNo)`: Removes all `"NPR POS Entry Tax Line"` records for the given entry

**6014570 "NPR POS Sale Tax"** (table-as-codeunit helper pattern):
- `CopyFromSource(SaleLinePOS)`: Copies tax-relevant fields from sale line (Price Includes VAT, Posting Date, Quantity, Unit Price, Currency Code, VAT Identifier, VAT %, Allow Line Discount)
- `CopyFromSourceAmounts(SaleLinePOS)`: Copies amount fields (Discount %, Discount Amount, Line Amount)
- `GetHandler(var POSTaxCalc)`: Resolves the implementing interface from `"Source Tax Calc. Type"` enum value
- `SetTaxCalcTypeFromSource(SaleLinePOS)`: Maps standard BC "Tax Calculation Type" enum to NPR POS tax calculation type values (Full VAT, Normal VAT, Reverse Charge VAT, Sales Tax, No Taxable VAT) with extensibility via `OnSetTaxCalcType` integration event

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR POS Sale Tax List" | POS Sale Tax List | "NPR POS Sale Tax" | List page for sale tax records |
| *(unknown)* | "NPR POS Sale Tax" | POS Sale Tax | "NPR POS Sale Tax" | Card page for sale tax record |
| *(unknown)* | "NPR POS Sale Tax Lines" | POS Sale Tax Lines | "NPR POS Sale Tax Line" | Per-line tax breakdown |
| *(unknown)* | "NPR POS Sale Lines" (POS-specific) | POS Sale Lines | — | Sale line tax display |
