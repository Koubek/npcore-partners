---
type: reference
tags: [np-retail, pos, pos-posting, tables, codeunits, pages, queries, enums, reports]
relates:
  - np-retail/pos/pos-posting/overview.md
updated: 2026-05-09
---

# POS Posting API Reference

## Tables

| Table # | Name | Key Fields | Description |
|---------|------|-----------|-------------|
| 6014694 | NPR POS Entry Sale & Payment | POS Entry No., Source Type, Type, No., Amount Incl. VAT | Temporary table joining sale lines and payment lines for unified reporting. |
| 6059797 | NPR POS Payment Method Item | POS Payment Method Code, Line No., Type (enum), No., Description | Maps payment methods to G/L accounts or items for posting. |
| — | POSEntryMediaInfo | Entry No., Media ID | Stores media attachments (images) for posted entries. |
| — | POSEntryOutputLog | Entry No., Output Type, Timestamp | Logs receipt output events (print, email) per posted entry. |
| — | POSPostingLog | Entry No., Posting Type, Status | Tracks posting operation status per entry. |
| — | POSWorkshTaxCheckp | Workshift Checkpoint Entry No., Tax Area Code, VAT Identifier | Tax checkpoint records aggregated from sales lines during workshift. |

## Codeunits

| Codeunit # | Name | Key Methods | Description |
|------------|------|------------|-------------|
| 6150637 | NPR POS Posting Control | CheckGlobalDimAndDimSetConsistency(), DimUsageIsConsistent() | Dimension validation for posted entries. Subscribes to entry creation events. |
| 6150627 | NPR POS Workshift Checkpoint | EndWorkshift(), CloseWorkshift(), CreateBalancingEntry(), CreateCheckpointWorker(), AddWorkshifts(), AggregateWorkshifts() | Orchestrates workshift lifecycle: X/Z reports, balancing, master/slave aggregation. |
| — | POSPostCustLedgEntry | Post() | Posts customer ledger entries from POS credit/direct sales. |
| — | POSPostGLEntriesJQ | Enqueue(), Post() | Job queue handler for async GL posting. |
| — | POSPostItemEntries | Post() | Posts item ledger entries from POS item sales. |
| — | POSPostItemEntriesJQ | Enqueue(), Post() | Job queue handler for async item posting. |
| — | POSPostSalesDocEntries | Post() | Posts sales document related entries. |
| — | POSEntrySDocLinkMgt | LinkSDocToEntry() | Links posted entries to their originating sales documents. |
| — | POSEntryNavigation | Navigate(), ShowSourceDocument() | Cross-reference navigation between entries and source documents. |
| — | POSEntryOutputLogMgt | LogOutput() | Logs receipt output events (print, email) per entry. |

### NPR POS Workshift Checkpoint Key Methods

| Method | Description |
|--------|-------------|
| EndWorkshift(Mode, UnitNo, DimensionSetId) | Main entry point for all workshift types (XREPORT=0, ZREPORT=1, CLOSEWORKSHIFT=2). |
| CreateCheckpointWorker(Mode, UnitNo, xPOSUnitStatus) | Creates workshift checkpoint + bin checkpoints. For MASTER_SLAVE profiles, also creates slave checkpoints. |
| CreateBalancingEntry(Mode, UnitNo, CheckPointEntryNo, DimensionSetId) | Creates the balancing POS entry for Z-report. Generates document number from number series. |
| CreateEndWorkshiftCheckpoint_POSEntry(POSStoreCode, POSUnitNo, xPOSUnitStatus) | Creates the base checkpoint record and calculates initial statistics. |
| AddWorkshifts(WorkshiftEntryNo, TargetWorkshiftEntryNo) | Aggregates all statistical fields from one workshift checkpoint to another (for master/slave). |
| AggregateWorkshifts(UnitNo, TargetCheckpointEntryNo, Mode) | Finds all slave checkpoints and aggregates them into master. |
| SetTurnoverAndProfit(var POSWorkshiftCheckpoint, POSSalesLine, POSEntry) | Categorizes each sales line as realized/unrealized sale/return for turnover statistics. |

## Pages

| Page # | Name | Usage |
|--------|------|-------|
| — | NPR POS Workshift Checkp. Card | Summary view of workshift checkpoint with statistics |
| — | NPR POS Payment Bin Checkpoint | Payment bin balancing UI during EOD |
| — | NPR POS Balancing Line | View of balancing entry lines |
| — | NPR POS Entry Card | Card for posted POS entry |
| — | NPR POS Entry Sales Line List | Sales line details for a posted entry |
| — | NPR POS Entry Pmt. Line List | Payment line details for a posted entry |
| — | NPR POS Entry Tax Line List | Tax line details for a posted entry |
| — | NPR POS Posting Log | Posting operation status log |
| — | NPR POS End of Day Profiles | EOD profile configuration |
| — | NPR POS Period Register List | Period register management |
| — | NPR POS Payment Method Items | Payment method → account mapping |
| — | NPR POS Entity Groups | Entity posting group configuration |

## Queries

| Query | Description |
|-------|-------------|
| NPR POS Entry Sales Line | Joins POS entries with their sales lines |
| NPR POS Entry Payment Line | Joins POS entries with their payment lines |
| NPR POS Entry Tax Line | Joins POS entries with their tax lines |
| NPR POS Entry with Sales Lines | Entry header + sales line detail |
| NPR POS Entry Receipt Copies | Tracks receipt reprints per entry |
| NPR Unposted POS Item Entries | Unposted item quantities for availability checks |
| Workshift Payment Checkpoint | Payment method totals per workshift checkpoint |

## Enums

| Enum | Values | Description |
|------|--------|-------------|
| NPR POS Pmt. Method Item Type | Item, Item Categories | Categorizes payment method item types |
| POSSalesDocumentType | Order, Invoice, Credit Memo, Return Order | Sales document types for credit sale tracking |

## Reports

| Report | Usage |
|--------|-------|
| POSPostingAction | Posting action report |
