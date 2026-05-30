---
type: concept
tags: [np-retail, attraction, retail-item-journal]
relates:
updated: 2026-05-09
---

# Retail Item Journal Module

Simplifies creation of retail-specific item journals. Provides template auto-creation and item lookup via reference numbers.

## Key Business Flows

### Journal Template Creation
`NPR Retail Item Jnl. Mgt.` creates item journal templates for retail use:
- `FindTemplate(PageID)` — checks if a template exists for the given page
- `CreateTemplate(PageID, PageTemplate, Recurring)` — creates templates with retail naming (R-{Type}, R{REC}-{Type})

### Item Lookup
- `GetItem(ItemNo, var ItemDescription)` — resolves item from reference numbers (bar codes, cross-references) and returns description. Uses internal caching to avoid repeated lookups.

### Dependencies
- **Item Reference** — cross-reference lookup for item resolution
- **Item Journal** — standard BC item journal framework
