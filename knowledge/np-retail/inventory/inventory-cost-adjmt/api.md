---
type: reference
tags: [np-retail, inventory, cost-adjmt, codeunits, events]
relates: [inventory/inventory-cost-adjmt/overview.md]
updated: 2026-05-09
---

# Inventory Cost Adjmt — API Reference

## Codeunits

### Codeunit 6014683 "NPR Post Inventory Cost to G/L"

Alternative to standard CU 2846. Runs `Post Inventory Cost to G/L` report (Report 795) and saves to Report Inbox.

**Trigger:** OnRun (via Job Queue Entry)

**Key Procedures:**
| Procedure | Description |
|-----------|-------------|
| `ParamSaveToReportInbox(): Text` | Returns `'save_to_report_inbox'` parameter key |
| `GetReportParameters(): Text` | Returns empty string (placeholder for custom parameters) |

**Events subscribed:**
- `Table "Job Queue Entry" - OnAfterValidateEvent ("Object ID to Run")` — injects `save_to_report_inbox` parameter into job queue entries targeting this codeunit

### Codeunit 6014684 "NPR Schedule Invt. Cost Adj."

Manages creation of recurring job queue entries for inventory cost tasks.

**Key Procedures:**
| Procedure | Description |
|-----------|-------------|
| `Schedule(WithCheck: Boolean)` | Creates both adjustment and posting job queue entries |
| `CreateAdjCostJobQueue()` | Creates recurring job entry for Report `Adjust Cost - Item Entries` (0100-0300 window, daily) |
| `CreatePostInvCostToGLJobQueue()` | Creates recurring job entry for CU `NPR Post Inventory Cost to G/L` (0200-0400 window, daily) |
| `ShouldBeScheduled(Rec, xRec): Boolean` | Determines if scheduling is needed based on setup changes |
| `AdjCostJobQueueExists(AtDateTime): Boolean` | Checks if an active job queue already exists |

**Events subscribed:**
| Event | Purpose |
|-------|---------|
| `Page "Inventory Setup" - OnAfterValidateEvent ("Automatic Cost Posting")` | Prompt user to schedule job queues |
| `Page "Inventory Setup" - OnAfterValidateEvent ("Automatic Cost Adjustment")` | Prompt user to schedule job queues |
| `Codeunit "Job Queue - Enqueue" - OnBeforeEnqueueJobQueueEntry` | Set description for cost-related job entries |
| `Codeunit "NPR Job Queue Management" - OnRefreshNPRJobQueueList` | Refresh scheduling on list refresh |
| `Codeunit "NPR Job Queue Management" - OnCheckIfIsNPRCustomizableJob` | Mark `Adjust Cost - Item Entries` as customizable |

## Dependencies

- `NPR Job Queue Management` (infrastructure)
- `Inventory Setup` table
