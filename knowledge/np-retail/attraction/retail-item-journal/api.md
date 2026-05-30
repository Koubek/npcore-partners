---
type: reference
tags: [np-retail, attraction, retail-item-journal, codeunits, pages]
relates: [np-retail/attraction/retail-item-journal/overview.md]
updated: 2026-05-09
---

# Retail Item Journal — API Reference

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6014421 | NPR Retail Item Jnl. Mgt. | Template management and item lookup |

### NPR Retail Item Jnl. Mgt. (6014421)
Key procedures:
- `FindTemplate(PageID: Integer): Boolean` — checks if a template exists for the given page ID
- `CreateTemplate(PageID: Integer; PageTemplate: Option; RecurringJnl: Boolean)` — creates a new item journal template with retail naming convention (R-{Type}); sets recurring or standard description
- `GetItem(ItemNo: Code[20]; var ItemDescription: Text[100])` — looks up item description; resolves ItemNo via Item Reference cross-reference if needed; caches last lookup

## Pages

| Name | Notes |
|------|-------|
| NPR Retail Item Reclass Journal | Item reclassification journal page for retail use |
