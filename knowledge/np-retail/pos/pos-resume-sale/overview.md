---
type: concept
tags: [np-retail, pos, pos-resume-sale]
relates:
  - np-retail/pos/pos-parked-sale/overview.md
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Resume Sale Module

The POS Resume Sale module handles the lifecycle of unfinished POS sales — detecting them on session start, prompting the user to resume or cancel, and managing the archive/resume workflow.

## Architecture

When a POS session starts, `NPR POS Resume Sale Mgt.` scans for unfinished sales matching the current user and POS unit. It presents the user with options: Resume, Cancel and Start New, Park as Saved Sale, or Skip.

### Key Components

- **POSResumeSaleMgt.Codeunit.al** (6150739) — Core logic. Finds unfinished sales, orchestrates the user dialog, and handles cancel/resume/save-as-quote flows.
- **POSTryResumeCancelSale.Codeunit.al** (6150743) — Attempts to cancel a sale. Called by resume management when user chooses cancel.
- **ArchiveSalePOS.Table.al** (6014418) — Archive table for old unfinished sales moved from active table.
- Supporting archive tables: `ArchivePOSInfoTrx`, `ArchRetailCrossRef`, `ArchNpDcSLPOSNewCoupon`, `ArchNpIaSLPOSAddOn`, `ArchNpRvSLPOSRef`, `ArchiveNpDcSLPOSCoupon`, `ArchiveNpRvSLPOSVouch`.

### Resume Dialog Flow

```
Unfinished sale detected → Prompt user:
├── Resume → Check if sale is from today & same unit
│   ├── Yes → Resume directly
│   └── No → Force save as parked sale (cannot resume cross-unit/cross-day)
├── Cancel & Start New → TryCancelSale
│   ├── Success → Clear sale, start fresh
│   ├── Fail → Prompt: Resume / Save as Quote / Show Error
│   └── Empty sale → Silently cancel
├── Park as Saved Sale → SavePOSSale → archive
└── Skip → Mark sale and move to next
```

### Cancel Sale Mechanism

`POSTryResumeCancelSale` (`NPR POS Try Resume&CancelSale`, codeunit 6150743) performs the actual cancellation. If it fails, the error text is captured and the user is prompted for alternative action.

## Key Business Flows

### Salesperson Detection on Login
1. POS session initializes
2. `SelectUnfinishedSaleToResume` filters sales by current POS unit and User ID
3. If unfinished sales found, prompts user (customizable via events)

### Save as Parked Sale
1. User selects "Park" option (or resume fails cross-day/cross-unit)
2. `DoSaveAsPOSQuote` calls `POSSavedSaleMgt.CreateSavedSaleEntry`
3. Current sale serialized to XML and stored as saved sale entry
4. Audit entry created via `POSCreateEntry.InsertParkSaleEntry`
5. Sale deleted from active table, session cleared

### Resume from Quote (cross-unit/day fallback)
- When sale cannot be resumed directly, saved as quote
- `LoadFromPOSQuote` re-loads the saved sale data into a new sale ticket

## Dependencies

- **POS Core** — `NPR POS Sale`, `NPR POS Session`, `NPR POS Create Entry`
- **POS Parked Sale** — `POSSavedSaleMgt` for save/load operations
- **POS Action** — Cancel sale action workflow

## Extension Points

- `OnBeforePromptResumeSale` integration event — Override/suppress the resume dialog, set default action, control error handling behavior
