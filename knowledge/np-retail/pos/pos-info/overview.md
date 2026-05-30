---
type: concept
tags: [np-retail, pos, pos-info]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-data-source/overview.md
updated: 2026-05-09
---

# POS Info Module

Implements a flexible data collection system for POS transactions. Allows capturing additional structured or free-text information at the sale header or line level — used for custom fields, regulatory data, waiter notes, order details, and more.

## Architecture

### Core Tables

| Table | Purpose |
|-------|---------|
| `NPR POS Info Transaction` | Stores collected info values per sale line or header |
| `NPR POS Info` | Defines info types (message, request data), input mode (text/table/subcode), constraints |
| `NPR POS Info Lookup` | Temporary lookup buffer for table-type input |
| `NPR POS Info Lookup Setup` | Configuration for table lookups |
| `NPR POS Info Link Table` | Links info codes to source tables (Item, Customer) with conditional triggers |
| `NPR POS Info POS Entry` | Persists info data to posted POS entries |

### Info Types

| Type | Behavior |
|------|----------|
| **Request Data** — Text | Collects free-text input from the user |
| **Request Data** — Table | Opens a lookup page for a specified table |
| **Request Data** — SubCode | Opens lookup with a code-based selection |
| **Show Message** | Displays a message (one-way information) |
| **Write Default Message** | Persists a default value without user interaction |

### Input Types
- Text — Manual entry with optional mandatory validation
- Table — Record lookup from any BC table
- SubCode — Code-based value selection

### Key Flows

**Collection on Line Insert**: `CollectPOSInfo()` fires when an item line is added → looks up `NPR POS Info Link Table` entries for the Item table → runs modal pages for each matching info code → stores results in `NPR POS Info Transaction`.

**Customer Change**: When customer changes on the sale header, `OnBeforeValidateCustomerNoSalePos` triggers info collection linked to the Customer table, with conditional filtering by customer balance (Positive/Negative/Always).

**Header-to-Line Copy**: `CopyPOSInfoTransFromHeader()` copies header-level info to new item lines if the info type has `Copy from Header` enabled and `Once per Transaction` is not set.

**POS Entry Integration**: On sale completion, `OnAfterInsertPOSEntry` copies transaction info to `NPR POS Info POS Entry` for permanent storage with aggregated quantity/amount values.

### Data Source Extension
POS Info registers as a `POS_INFO` extension on the Sale and SaleLine data sources:
- Makes all front-end-available POS Info codes available as virtual columns
- Extension discovery via `OnDiscoverDataSourceExtensions`
- Column population via `OnDataSourceExtensionReadData`

### Visual Formatting
POS Info data can affect line formatting — if `Set POS Sale Line Color to Red` is enabled on an info entry, matching lines display in red.

## Dependencies

- **POS Core** — Sale, Sale Line, Session management, POS Entry creation
- **POS Data Source** — Extension columns for front-end visibility
