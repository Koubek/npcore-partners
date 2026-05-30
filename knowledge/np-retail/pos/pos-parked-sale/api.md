---
type: reference
tags: [np-retail, pos, pos-parked-sale, tables, codeunits, pages]
relates:
  - np-retail/pos/pos-parked-sale/overview.md
updated: 2026-05-09
---

# POS Parked Sale API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6151002 | NPR POS Saved Sale Entry | Entry No., Register No., Sales Ticket No., Salesperson Code, POS Sales Data (BLOB) | Stores parked sale headers. BLOB contains full XML serialization of sale. FlowFields: Amount, Amount Including VAT, Contains EFT Approval. |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6151006 | NPR POS Saved Sale Mgt. | POSSale2Xml(), Xml2POSSale(), LoadPOSSaleData(), CleanupPOSQuotesBeforeBalancing(), SetSalePOSFilter(), ViewPOSSalesData() | Core management: XML serialization/deserialization, cleanup, filtering. |

### NPR POS Saved Sale Mgt. Key Methods

| Method | Params | Description |
|--------|--------|-------------|
| POSSale2Xml | SalePOS, var XmlDoc | Serializes complete sale (header + lines + all sub-records) to XML |
| Xml2POSSale | var XmlDoc, var SalePOS | Deserializes XML back into sale records; deletes and re-inserts active header to preserve SystemId |
| LoadPOSSaleData | POSQuoteEntry, var XmlDoc | Reads BLOB from saved sale entry into XmlDocument |
| CleanupPOSQuotesBeforeBalancing | SalePOS | EOD cleanup: warns about EFT-approved saved sales, offers to delete or review |
| SetSalePOSFilter | SalePOS, var POSQuoteEntry, Filter option | Sets filter on saved sale entries by register/salesperson/both |
| ViewPOSSalesData | POSQuoteEntry | Displays saved sale XML in pretty-printed format |
| FindFields | RecRef, ExclKeyField, var TempField | Populates temporary field buffer for a table (used during serialization) |

### Events

- `OnPOSSale2Xml(SalePOS, XmlRoot)` — Extend sale XML with custom elements
- `OnPOSSaleLine2Xml(SaleLinePOS, var XmlElement)` — Extend line XML
- `OnXml2POSSale(XmlRoot, SalePOS)` — Custom deserialization for sale header
- `OnXml2POSSaleLine(XmlElement, SaleLinePOS)` — Custom deserialization for sale lines

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| 6151001 | NPR POS Saved Sales | List page for browsing/managing parked sales |
| 6151004 | NPR POS Saved Sale Card | Card view of a single saved sale |
| 6151003 | NPR POS Saved Sale Lines | Subpage showing saved sale line items |
| 6151005 | NPR POS Saved Sale Subp. | Subpage for integration in other pages |
