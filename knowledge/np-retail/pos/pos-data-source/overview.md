---
type: concept
tags: [np-retail, pos, pos-data-source]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Data Source Module

Provides a dynamic data source abstraction layer for the POS frontend. Enables views (screens in the POS UI) to bind to structured data from BC tables through a column-based data source interface with extension support.

## Architecture

### Data Source Discovery
`NPR POS Data Source Discovery` table (6150708, temporary-only) uses the `OnDiscoverDataSource` business event for partners to register data sources. Each data source has a unique `Name` (Code[50]) and `Description`.

### Data Source Drivers
Individual driver codeunits per data source type:
- `POSDataDriverSale` — Sale header data (built-in)
- `POSDataDriverSaleLine` — Sale line data (built-in)
- `POSDataDriverPayLine` — Payment line data (built-in)
- `POSDataDriverRegBal` — Register balance data
- `POSDataDriverDiscount` — Discount data
- `POSDataDriverDim` — Dimension data
- `POSDataDriverExchRate` — Exchange rate data

### View-Binding Flow
1. A POS View requests data via `NPR POS Data Mgmt. Internal` (6150790)
2. `GetDataSource()` resolves the data source name to its implementation via `OnGetDataSource` event
3. Data source extensions are discovered via `OnDiscoverDataSourceExtensions` and loaded via `OnGetDataSourceExtension`
4. `RecordToDataSet()` converts BC records into an `NPR Data Set` with typed columns, positions, and extension fields
5. Columns are added via `AddFieldToDataSource()` which auto-detects BC field types and maps to `NPR Data Type` enum

### Extension System
Data sources support extensions that add virtual columns. For example, POS Info registers as a `POS_INFO` extension on Sale and SaleLine data sources, adding columns for each POS Info code available in the frontend.

### Data Refresh Subdirectory
Contains logic for periodic data refresh to keep frontend caches synchronized.

## Default Data Sources

Built-in data sources registered by `SetupDefaultDataSourcesForView()`:
- `BuiltInSaleLine` — Sale line records
- `BuiltInSale` — Sale header records
- `BuiltInPaymentLine` — Payment line records

## Dependencies

- **POS Core** — Session, view, and sale context
- **POS Info** — Data source extension for POS Info columns
