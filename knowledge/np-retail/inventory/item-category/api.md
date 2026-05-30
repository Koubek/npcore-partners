---
type: reference
tags: [np-retail, inventory, item-category, tables, codeunits, pages, queries, events]
relates: [inventory/item-category/overview.md]
updated: 2026-05-09
---

# Item Category — API Reference

## Tables

### Table 6059807 "NPR Item Category Buffer" (Temporary)

Reporting buffer with 50+ fields for category-level analytics.

**Key Fields:**
| Field | Type | Purpose |
|-------|------|---------|
| `Entry No.` | Integer | PK (auto: +10000) |
| `Code` | Code[20] | Category code |
| `Code with Indentation` | Text[120] | Indented display |
| `Order No.` | Integer | Sort order |
| `Parent Category` | Code[20] | Parent FK |
| `Description` | Text[100] | Name |
| `Indentation` | Integer | Hierarchy level |
| `Presentation Order` | Integer | Manual ordering |
| `Has Children` | Boolean | Flag |
| `Last Modified Date Time` | DateTime | Timestamp |
| `Detail Field 1-10` | Text[100] | Custom detail columns |
| `Calc Field 1-10` | Decimal | Custom calculation columns |
| `Salesperson Code` | Code[20] | Filter dimension |
| `Global Dimension 1/2 Code` | Code[20] | Dimension filters |

## Codeunits

### Codeunit 6014456 "NPR Item Category Mgt."

Central management codeunit.

**Category Management:**
| Procedure | Description |
|-----------|-------------|
| `UpdateItemDiscGroupOnItems(ItemCategory, ItemDiscGroupCode, xItemDiscGroupCode)` | Bulk-update Item Disc. Group on all items in category |
| `CopySetupFromParent(var ItemCategory, Silent)` | Inherit template + dimensions from parent |
| `CopySetupToChildren(ParentItemCategory, Silent)` | Propagate setup to all children recursively |
| `CopyItemCategory(FromItemCategory, var ToItemCategory)` | Copy template and dimensions |
| `SetBlockedOnChildren(ParentCode, IsBlocked, Silent)` | Block/unblock category tree |

**Item Creation:**
| Procedure | Description |
|-----------|-------------|
| `CreateItemFromItemCategory(var ItemCategory): Code[20]` | Creates a real Item from the category template |
| `InsertItemFromTemplate(ConfigTemplateHeader, var Item)` | Core item creation with template application |
| `SetupItemFromCategory(var Item, var ItemCategory)` | Apply category template to existing item |
| `GetVATPostingSetupFromItemCategory(ItemCategory, var VATPostingSetup): Boolean` | Resolve VAT posting from category defaults |
| `CreateItemTemplate(ItemCategory, TempItem): Code[10]` | Creates Config. Template from category (20 fields) |
| `CopyItemTemplate(FromItemCategory, ToItemCategory): Code[10]` | Copies template between categories |

**Dimension Management:**
| Procedure | Description |
|-----------|-------------|
| `ApplyDimensionsToChildren(DefaultDimension, DeleteDimension, Silent)` | Recursive dimension propagation |
| `CopyParentItemCategoryDimensions(ItemCategory, Silent)` | Inherit parent dimensions |
| `ApplyItemCategoryDimensionsToItem(ItemCategory, var Item, Silent): Boolean` | Apply category dimensions to item |

**Buffer Management (for reporting):**
| Procedure | Description |
|-----------|-------------|
| `InsertItemCategoryToBuffer(...)` | (3 overloads) Insert category into buffer with calc/detail fields |
| `InsertUncatagorizedToItemCategoryBuffer(...)` | Insert placeholder for uncategorized items |
| `AddItemCategoryParentsToBuffer(...)` | Insert parent categories with aggregated calc values |
| `SortItemCategoryBuffer(ItemCategoryBuffer, FieldNo, Ascending)` | Sort buffer by calc field |
| `FormatIndentationInItemCategories(...)` | Apply indentation formatting |
| `SetOrderNoInItemCategoryBuffer(...)` | Set sequential order numbers |
| `UpdateHasChildrenFieldInItemCategoryBuffer(...)` | Update has-children flags |
| `SetCalcFieldValue(...)`, `GetCalcFieldValue(...)` | Accumulate/read calc fields |
| `ClearCalcFieldsDictionary(...)` | Clear calc field dictionary |

**Events:**
- `OnAfterInsertItemFromTemplate(Item, ConfigTemplateHeader)` — integration event (post-item-creation hook)
- `OnBeforeInitItemNo(Item, ConfigTemplateHeader, var IsHandled)` — integration event (custom numbering)

## Page Extensions

### PageExtension 6014400 "NPR Item Category Card" extends "Item Category Card"

**Added Fields:** `NPR Item Template Code`, `NPR Global Dimension 1 Code`, `NPR Global Dimension 2 Code`, `NPR Blocked`, `NPR Main Category`, `NPR Main Category Code`, `NPR Synced with Shopify` (BC21+).

**Added Actions:**
- Dimensions → `Dimensions` (Default Dimensions page)
- Function → `Create Item Template`, `Create Item(s) From Item Category`, `Copy Item Category Setup to SubCategories`
- Overview → `Item Ledger Entries`, `VAT Posting Grups`, `Item List`
- Shopify Actions (BC21+) → `Metaobject IDs`

### PageExtension 6014446 "NPR Item Categories" extends "Item Categories"

Same fields and actions as card extension, plus bulk mode for `Create Item Template` and `Create Item(s) From Item Category`.

## Queries

### Query 6014426 "NPR Department/Item Category"

Aggregates `Item Ledger Entry` (Sale entries) by `Global Dimension 1 Code` + `Item Category Code` with sums for Quantity, Sales Amount, Cost Amount. Filtered by Posting Date. Used specifically by Report `NPR Item Category Top`.

### Query 6014425 "NPR Salesperson/Item Category"

Aggregates `NPR POS Entry Sales Line` (Item type, Amount > 0) by `Salesperson Code` + `Item Category Code` with sums for Quantity, Unit Cost, Amount Excl. VAT. Filtered by Entry Date.
