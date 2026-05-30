---
type: reference
tags: [np-retail, inventory, item-worksheet, tables, codeunits, pages, events, xmlports]
relates: [inventory/item-worksheet/overview.md]
updated: 2026-05-09
---

# Item Worksheet — API Reference

## Tables

### Table 6060052 "NPR Item Worksh. Field Setup"

Maps worksheet source fields to target creation and update fields.

| Field | Type | Purpose |
|-------|------|---------|
| `Worksheet Template Name` | Code[10] | FK to template |
| `Worksheet Name` | Code[10] | FK to worksheet |
| `Table No.` | Integer | Source table ID |
| `Field Number` | Integer | Source field |
| `Table Name/Caption` | Text | Display |
| `Field Name/Caption` | Text | Display |
| `Target Table No. Create` | Integer | Table to write on create action |
| `Target Field Number/Name/Caption Create` | - | Target field for create |
| `Target Table No. Update` | Integer | Table to write on update action |
| `Target Field Number/Name/Caption Update` | - | Target field for update |
| `Process Create` | Option | Ignore/Process/Use Default on Blank/Always use Default |
| `Process Update` | Option | Ignore/Warn and Ignore/Warn and Process/Process |
| `Default Value for Create` | Text[50] | Default when blank |
| `Mapped Values` | Integer (FlowField) | Count of field mappings |

### Table 6060053 "NPR Item Worksh. Field Change"

Records field-level changes during validation and registration.

| Field | Type | Purpose |
|-------|------|---------|
| `Worksheet Template Name` | Code[10] | FK |
| `Worksheet Name` | Code[10] | FK |
| `Worksheet Line No.` | Integer | FK to line |
| `Worksheet Variant Line No.` | Integer | FK to variant line |
| `Table No.` / `Field Number` | Integer | Source field |
| `Target Table No. Update` / `Target Field Number Update` | Integer | Target field |
| `Process` / `Warning` | Boolean | Flags |
| `Current Value` / `New Value` | Text[250] | Before/after values |

### Table 6060055 "NPR Item Worksh. Field Mapping"

Value-level field mapping with matching strategies.

| Field | Type | Purpose |
|-------|------|---------|
| `Worksheet Template Name` | Code[10] | FK |
| `Worksheet Name` | Code[10] | FK |
| `Table No.` / `Field Number` | Integer | Source field |
| `Source Value` | Text[250] | Incoming value to match |
| `Target Value` | Text[250] | Outgoing replacement value |
| `Matching` | Option | Exact/Starts With/Ends With/Contains |
| `Case Sensitive` | Boolean | Toggle |

### Table 6060057 "NPR Item Worksh. Vrty Mapping"

Maps vendor-specific variety values to internal NP Retail variety values.

| Field | Type | Purpose |
|-------|------|---------|
| `Worksheet Template Name` | Code[10] | FK |
| `Worksheet Name` | Code[10] | FK |
| `Vendor No.` | Code[20] | Vendor context |
| `Variety` | Code[10] | Variety dimension |
| `Variety Table` | Code[40] | Variety source table |
| `Vendor Variety Value` | Text[50] | Value as sent by vendor |
| `Variety Value` | Code[50] | Internal mapped value |
| `Item Wksh. Maping Field/Value` | - | Additional mapping target |

## Codeunits

### Codeunit 6060045 "NPR Item Wsht.-Check Line"

Validates a worksheet line before processing. Public procedure:
- `RunCheck(ItemWkshtLine, StopOnError, CalledFromRegister)` — validates action, item existence, variety completeness, prices, duplicate barcodes

Validation rules per action type:
- **CreateNew**: Requires Item Category, No. Series (manual or default), Description, valid prices; checks item doesn't already exist
- **UpdateOnly/UpdateAndCreateVariants**: Requires Existing Item No., matching variety definitions, Description; validates variety/copy constraints

### Codeunit 6060049 "NPR Item Wksht. WebService Mgr"

Implements `NPR Nc Import List IProcess` for XML-based item worksheet import.

Public procedure:
- `RunProcessImportEntry(ImportEntry)` — loads XML doc, dispatches to `CreateItemWorksheetLines` by function name

Key internal procedures:
- `ReadItemWorksheetLine(Element, var ItemWorksheetLine)` — parses 80+ XML fields (ItemNo, Description, VendorNo, prices, dimensions, variety values, tracking codes, barcodes, Magento fields, customs data, etc.)
- `FindWorksheetLine(VendorNo, VATRegNo, var Template, var Worksheet, var LineNo)` — auto-creates template/worksheet if needed
- `ReadWkshLineAttributes(ItemWorksheetLine, Element)` — parses attribute XML nodes

**Imported XML fields include**: ItemNo, VendorNo, VendorItemNo, Description, Description2, DirectUnitCost, UnitPrice, ItemCategory, ProductGroup, Variety1-4, Barcodes (Internal/Vendors), GTIN, ItemTrackingCode, Blocked, PriceIncludesVAT, ReorderPoint, MaximumInventory, SafetyStock, Manufacturing/Replenishment policies, Magento fields (Name, Status, Brand, SeoLink, Meta fields), Customs (TariffNo, CountryRegion), and 30+ more.

### Codeunit 6151052 — referenced from Replenishment module

## Pages

| Page | Type | Purpose |
|------|------|---------|
| NPR Item Worksheet Templates | List | Manage templates |
| NPR Item Wksh. Template | Card | Template details |
| RegistItemWorkshPage | - | Registration worksheet UI |
| RegisteredItemWorksh | List | View registered worksheets |
| RegItemWshtVarSubpage | Subpage | Registered variant lines |
| ItemWorkshAttrFactBox | FactBox | Attribute display |
| ItemWorkshFieldSetup | Card | Field setup configuration |
| ItemWorkshFieldChanges | List | Field change log |
| ItemWorkshFieldMapping | List | Value mapping configuration |
| ItemWorkshVrtyMapping | List | Variety mapping per vendor |
| ItemWorkshMissingSetup | List | Missing setup record display |
| ItemWorkshSetupSubpage | Subpage | Setup subpage |
| ItemWorkshVrtySubpage | Subpage | Variety values per line |
| ItemWorkshVrtyValues | List | Variety value browser |
| ItemWorksExcelColumn | - | Excel column mapping |
| ItemWorkshTemplate | Card | Template card UI |
| ItemWorkshTemplateCard | Card | Alternative template card |

## XmlPorts

| XmlPort | Purpose |
|---------|---------|
| NPR Item Worksh. Import Export | Standard worksheet import/export |
| NPR Item Wsht. Line Web Imp. | Web-based line import (35KB schema) |

## Events

| Event | Source | Purpose |
|-------|--------|---------|
| `OnAfterImportWorksheetLine` | Codeunit NPR Item Worksheet | Hook after web service line import |
| `OnAfterImportWorksheetVariantLine` | Codeunit NPR Item Worksheet | Hook after web service variant line import |

## Registration Flow

1. **Import** → XML web service populates worksheet lines (or manual entry)
2. **Check** → `RunCheck()` validates each line (field setup, prices, varieties, duplicates)
3. **Validation** → Optional `NPR Item Wksht. Validation` codeunit run per template setting
4. **Register** → `NPR Item Wsht.Register Line` processes lines: creates/updates items, variants, price lists; tracks changes in Field Change table
5. **Archive** → Registered data moved to `Registered Item Worksh.` / `Reg Item Wsht Var Line`
