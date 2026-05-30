---
type: concept
tags: [np-retail, localization, localizations]
relates:
updated: 2026-05-09
---

# Localizations Module

Country-specific localization and compliance modules for NP Retail. Each sub-directory targets a specific country's regulatory requirements.

## Country Modules

### [BG] Team VISION — Bulgaria
- `BGVisionLocalSetup` (Table + Page) — Bulgarian localization setup
- `BGVISIONLocalMgt` (Codeunit) — main management logic
- `BGVISIONLocalSubs` (Codeunit) — event subscribers

### [CRO] Retail Localization/Calculation Reports — Croatia
- Reports for retail calculation:
  - `CRONivelationDocument` — nivelation (inventory valuation adjustment) document
  - `CRORetPurchPriceCalc` — retail purchase price calculation
  - `CRORetTransRecCalc` — retail transfer receipt calculation
- Supporting documentation (.docx)

### [HU] Multisoft-EInvoice — Hungary
- e-Invoice compliance integration
- `HUEInvoiceLocalSetup` (Table + Page) — Hungarian e-invoice setup

### [RS] Localization — Serbia
- Broader localization coverage:
  - `RSLocalisationSetup` (Table + Page) — localization configuration
  - `RSLocalisationMgt` (Codeunit) — management logic
  - `RSLocalisationSubs` (Codeunit) — event subscribers
  - Table extensions: `RSBankAccLedgerEntry`, `RSCustomerPostingGroup`, `RSPurchaseHeader`, `RSSalesHeader`, `RSVATPostingSetup`, `RSVendorPostingGroup`
  - Reports: `RSCustomerOpenEntries`, `RSVendorOpenEntries`
  - Sub-folders: InvoiceBooks, Prepayment, VAT

### [RS] Retail Localization — Serbia (Retail-specific)
- Retail-specific localization:
  - `RSRLocalizationSetup` (Table + Page) — retail localization setup
  - `RSRLocalizationMgt` (Codeunit) — management logic
  - `RSRLocalizationCountry` (Enum) — country classification
  - `RSRetailAppAreaSetup` (Page) — retail application area setup
  - Sub-folders: Calculation Documents, KEP Book, Nivelation, Retail Price Calculation
