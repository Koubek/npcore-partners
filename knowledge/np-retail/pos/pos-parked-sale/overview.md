---
type: concept
tags: [np-retail, pos, pos-parked-sale]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-resume-sale/overview.md
updated: 2026-05-09
---

# POS Parked Sale Module

The POS Parked Sale module manages saved (parked) POS sales — sales that are suspended mid-transaction and stored for later retrieval. Also known as "POS Saved Sales" or "quotes."

## Architecture

The module serializes the entire in-memory sale (header, lines, taxes, info transactions, add-ons, vouchers, coupons, cross-references) to XML and stores it as a BLOB in `NPR POS Saved Sale Entry`. On retrieval, the XML is deserialized back into active sale records.

### Key Components

- **POSSavedSaleEntry.Table.al** (6151002) — Persistent table storing saved sale headers. Key fields: `Entry No.`, `Register No.`, `Sales Ticket No.`, `Salesperson Code`, `Amount`, `Amount Including VAT`, `Contains EFT Approval`. The BLOB field `POS Sales Data` holds the serialized XML.
- **POSSavedSaleMgt.Codeunit.al** (6151006) — Core management codeunit with XML serialization/deserialization. Key methods: `POSSale2Xml`, `Xml2POSSale`, `CleanupPOSQuotesBeforeBalancing`.
- **POSSavedSaleCard.Page.al** — Card page for viewing a single saved sale.
- **POSSavedSaleLines.Page.al** — Subpage showing lines of a saved sale.
- **POSSavedSaleSubp.Page.al** — Subpage for list integration.
- **POSSavedSales.Page.al** — List page for browsing saved sales.

### XML Serialization

The `POSSale2Xml` method serializes the full sale graph:

```
pos_sale
├── pos_info_transactions
│   └── pos_info_transaction (0 or more, header-level)
├── pos_sale_lines
│   └── pos_sale_line (header fields + children)
│       ├── pos_sale_tax_summary_lines
│       ├── pos_sale_tax_lines
│       ├── pos_info_transactions (line-level)
│       ├── item_addons
│       ├── retail_vouchers
│       │   └── references
│       ├── discount_coupons
│       ├── new_discount_coupons
│       ├── retail_cross_references
│       └── collect_documents
```

Each node contains a `table_no` attribute and `Fields` elements with CData values.

## Key Business Flows

### Park Sale (Save as Quote)
1. User triggers Save/Park from POS frontend
2. `NPR POS Action: SavePOSSvSl B` calls `POSSavedSaleMgt.CreateSavedSaleEntry`
3. Current sale XML-serialized and saved to `NPR POS Saved Sale Entry`
4. Audit entry created via `POSCreateEntry.InsertParkSaleEntry`
5. Current sale deleted, session cleared

### Resume from Parked Sale
1. User selects saved sale from list
2. `NPR POS Action: LoadPOSSvSl B` calls `POSSavedSaleMgt.LoadPOSSaleData`
3. XML deserialized back into active sale records via `Xml2POSSale`
4. All sub-records (tax, coupons, vouchers) reconstructed

### End-of-Day Cleanup
- `CleanupPOSQuotesBeforeBalancing` warns if saved sales contain EFT-approved transactions
- Offers to delete all or review saved sales individually

## Dependencies

- **POS Core** — `NPR POS Sale`, `NPR POS Sale Line`, `NPR POS Session`
- **POS Resume Sale** — Shared saved sale entry retrieval
- **POS Posting** — Audit entry creation via `NPR POS Create Entry`

## Events

- `OnPOSSale2Xml` / `OnPOSSaleLine2Xml` — Extend serialization with custom data
- `OnXml2POSSale` / `OnXml2POSSaleLine` — Extend deserialization
