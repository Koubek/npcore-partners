---
type: concept
tags: [np-retail, infrastructure, reimbursement]
relates: [np-retail/infrastructure/reimbursement/api.md]
updated: 2026-05-09
---

# Reimbursement in NP Retail

The Reimbursement module automates the collection of outstanding amounts from parties (customers, vendors, GL accounts, loyalty programs) and their subsequent reimbursement/application. It is a configurable, template-driven system that supports multiple collection sources and reimbursement modules.

## Architecture

```
Data Collection Sources                                 Reimbursement Modules
  ├── Customer Ledgers (NpRiCollectCustLedgers)           ├── Purchase Document Discount (NpRiReimPurchDocDisc)
  ├── Vendor Ledgers (NpRiCollVendorLedgers)              └── Sales Invoice (NpRiReimSalesInv)
  ├── G/L Entries (NpRiCollectGLEntries)
  └── Loyalty Points (NpRiCollectLoyPoints)
         │                                                       │
         ▼                                                       ▼
  NpRiDataCollectionMgt                                    NpRiReimbursementMgt
         │                                                       │
         └─────────── NpRiReimbursement (table) ←────────────────┘
                          │
                    NpRiReimbursementEntry (table)
                          │
                    Manual / Auto Application
```

## Lifecycle

1. **Template Setup**: Create reimbursement templates defining data collection filters, sources, and reimbursement modules
2. **Party Setup**: Define parties with reimbursement schedules (reimburse every X days, next posting date calculation)
3. **Data Collection**: Runs collection codeunits that insert `Data Collection` entries into `NPR NpRi Reimbursement Entry`
4. **Reimbursement**: Runs reimbursement codeunits that create `Reimbursement` entries against the collected amounts
5. **Manual Application**: Users can manually apply/reverse specific entries

## Integration Points

- Integration events: `HasTemplateParameters`, `SetupTemplateParameters`, `HasTemplateFilters`, `SetupTemplateFilters`
- `OnRunDataCollection` and `OnRunReimbursement` events allow custom collection/reimbursement modules to plug in
- Configurable posting date calculation and next run date formulas per party
