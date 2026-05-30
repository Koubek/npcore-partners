---
type: reference
tags: [np-retail, inventory, coupon, tables, codeunits, pages, enums, xmlports]
relates: [inventory/coupon/overview.md]
updated: 2026-05-09
---

# Coupon — API Reference

## Enums

### Enum 6014462 "NPR NpDc Coupon Type"

Extensible, AssignmentCompatibility=true.

| Value | Caption |
|-------|---------|
| 0 | Item |
| 1 | Item Categories |
| 2 | Item Disc. Group |
| 3 | Magento Brand |

## Tables

### Table 6151599 "NPR NpDc Coupon Setup"

Global coupon configuration (singleton).

| Field | Type | Purpose |
|-------|------|---------|
| `Primary Key` | Code[10] | PK |
| `Coupon No. Series` | Code[20] | Number series for new coupons |
| `Arch. Coupon No. Series` | Code[20] | Number series for posted coupons |
| `Reference No. Pattern` | Code[20] | Reference number format pattern |
| `Print Template Code` | Code[20] | Reporting template for coupon printing |
| `Print on Issue` | Boolean | Auto-print when coupon is issued |

### Table "NPR NpDc Coupon"

Coupon master (header). Key fields include: `No.`, `Description`, `Coupon Type` (FK to Coupon Type enum), `Starting Date`, `Ending Date`, `Status`, `Reference No.`, `Module Code` for issue/apply/validation dispatch.

### Table "NPR NpDc Coupon Entry"

Coupon application/redemption entries. Fields: `Coupon No.`, `Entry No.`, `Posting Date`, `Document No.`, `Item No.`, `Quantity`, `Line Amount`, `POS Unit No.`, `Customer No.`.

### Table "NPR NpDc Coupon List Item"

Items assigned to a coupon. Fields: `Coupon No.`, `Line No.`, `Type` (Item/Item Category/Disc. Group/Brand), `Code`, `Description`.

### Table "NPR NpDc Arch Coupon" / "NPR NpDc Arch Coupon Entry"

Archived (posted) versions of coupon master and entries. Same structure with added posting timestamp and archive reference.

### Table "NPR NpDc Iss On Sale Setup" / "NPR NpDc Iss On Sale Setup Line"

Issue-on-sale configuration: defines which items/products trigger automatic coupon issue at POS.

| Field (Setup) | Purpose |
|---------------|---------|
| `Primary Key` | PK |
| `Starting Date` / `Ending Date` | Validity period |
| `Module Code` | Dispatch to issue module |

| Field (Line) | Purpose |
|--------------|---------|
| `Setup Code` | FK |
| `Type` / `Code` | Item or criteria |
| `Issued Coupon Code` | Which coupon to issue |
| `Quantity` | Issue trigger threshold |

### Table "NPR NpDc Extra Coupon Item"

Links extra items to coupons for multi-item promotions. Fields: `Coupon No.`, `Line No.`, `Item No.`, `Variant Code`, `Quantity`, `Unit Price`.

### Table "NPR NpDc Ext Coupon Buffer"

Buffer table for importing external coupons. Fields: `Coupon No.`, `Description`, `Coupon Type`, `Starting Date`, `Ending Date`, `Status`, `Reference No.`

### Table "NPR NpDc Item Buffer 2"

Item processing buffer. Fields: `Item No.`, `Description`, `Coupon No.`, `Quantity`, `Unit Price`, `Line Discount %`.

### Table "NPR NpDc Coupon Line Appl Buffer"

Line application buffer. Fields: `Entry No.`, `Coupon No.`, `Item No.`, `Quantity`, `Line Amount`, `Posting Date`, `Document No.`, `POS Unit No.`

## Codeunits

### Module Apply Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NPR NpDc Module Apply Default` | Default application — looks up coupon by item match |
| `NPR NpDc Module Apply Activity` | Activity-based application — applies coupons based on customer/register activity |
| `NPR NpDc Module Apply Item List` | Item list-based — checks coupon list items against sale line items |
| `NPR NpDc Module Apply GS1` | GS1 barcode data structure application |
| `NPR NpDc Module Apply Xtr Item` | Extra item handling — processes multi-item promotions |

### Module Issue Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NPR NpDc Module Issue Default` | Default issue — creates coupon from setup data |
| `NPR NpDc Module Issue GS1` | Issue via GS1 barcode scanning |

### Module Validation Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NPR NpDc Module Valid Defa` | Default validation — validates coupon usage rules |
| `NPR NpDc Module Valid Item L` | Item list validation — validates items against coupon list |
| `NPR NpDc ModuleValidItemL_Magento` | Magento-specific item list validation (brand matching, availability checks) |

### Other Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NPR NpDc Apply Extra Item Qty` | Calculates extra item quantities for multi-item promotions |
| `NPR NpDc Coupon Manual Post` | Manual posting of coupons (creates archived entries) |

## Pages

| Page | Type | Source Table |
|------|------|-------------|
| NPR NpDc Coupons | List | NPR NpDc Coupon |
| NPR NpDc Coupon Card | Card | NPR NpDc Coupon |
| NPR NpDc Coupon Entries | List | NPR NpDc Coupon Entry |
| NPR NpDc Coupon List Items | ListPart | NPR NpDc Coupon List Item |
| NPR NpDc Coupon Types | List | NPR NpDc Coupon Type enum |
| NPR NpDc Arch Coupons | List | NPR NpDc Arch Coupon |
| NPR NpDc Arch Coupon Card | Card | NPR NpDc Arch Coupon |
| NPR NpDc Arch Coupon Entries | List | NPR NpDc Arch Coupon Entry |
| NPR NpDc Coupon Setup | Card | NPR NpDc Coupon Setup |
| NPR NpDc Act Coup Item List | List | Active coupon item listing |
| NPR NpDc Iss On Sale Setup | Card | NPR NpDc Iss On Sale Setup |
| NPR NpDc Iss On Sale Subform | Subpage | NPR NpDc Iss On Sale Setup Line |
| NPR NpDc Extra Coupon Item | List | NPR NpDc Extra Coupon Item |
| NPR NpDc Extra Item Qty | List | Extra item qty processing |
| NPR NpDc Extra Item Qty Subform | Subpage | Extra item detail |
| NPR NpDc Coupon Modules | List | Module registration |
| NPR NpDc Ext Coupon Reserv | - | External coupon reservation |

## XmlPorts

| XmlPort | Purpose |
|---------|---------|
| NPR NpDc Ext Coupon | External coupon data import/export |
| NPR NpDc Ext Coupon Appl | External coupon application data exchange |

## Module Dispatch Architecture

Each coupon references a `Module Code` that determines which codeunit handles issue, apply, and validation:

```
Coupon
  ├── Module Code ──→ Issue Module (NPR NpDc Module Issue*)
  │                   Apply Module (NPR NpDc Module Apply*)
  │                   Valid Module (NPR NpDc Module Valid*)
  ├── Coupon List Items
  └── Coupon Entries (posted)
```

## Coupon Lifecycle

1. **Setup** → Define coupon master, list items, select module
2. **Issue** → Manual creation, auto-issue on sale, or GS1 barcode import
3. **Apply** → At POS: items matched against coupon rules, discounts applied
4. **Archive** → Upon use/expiry, coupon and entries moved to archive tables
5. **Post** → Manual or automatic posting creates archived entries
