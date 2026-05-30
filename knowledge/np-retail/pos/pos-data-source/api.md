---
type: reference
tags: [np-retail, pos, pos-data-source, tables, codeunits, pages, events]
relates:
  - np-retail/pos/pos-data-source/overview.md
updated: 2026-05-09
---

# POS Data Source — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150708 | NPR POS Data Source Discovery | POS Data Source | Name (Code[50], PK) | Temporary-only table for discovering/registering data sources via business event |

### NPR POS Data Source Discovery Key Procedures

| Procedure | Description |
|-----------|-------------|
| `RegisterDataSource(Name, Description)` | Register a new data source (temporary context only) |
| `LookupDataSource(var DataSourceName): Boolean` | Opens lookup page for data source selection |
| `DiscoverDataSources()` | Fires `OnDiscoverDataSource` business event |

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6150790 | NPR POS Data Mgmt. Internal | Internal data source management — resolution, binding, record-to-dataset conversion |
| — | NPR POS Data Management | Public API for data source extension registration (external module surface) |
| — | POSDataDriverSale | Built-in Sale data source driver |
| — | POSDataDriverSaleLine | Built-in Sale Line data source driver |
| — | POSDataDriverPayLine | Built-in Payment Line data source driver |
| — | POSDataDriverRegBal | Register Balance data source driver |
| — | POSDataDriverDiscount | Discount data source driver |
| — | POSDataDriverDim | Dimension data source driver |
| — | POSDataDriverExchRate | Exchange Rate data source driver |

### NPR POS Data Mgmt. Internal Key Procedures

| Procedure | Description |
|-----------|-------------|
| `SetupDefaultDataSourcesForView(View, Setup)` | Registers default data sources (BuiltInSaleLine, BuiltInSale, BuiltInPaymentLine) |
| `GetDataSource(Name, var DataSource, Setup)` | Resolves data source by name via `OnGetDataSource`, discovers/loads extensions |
| `RecordToDataSet(Record, var CurrDataSet, DataSource, POSSession, FrontEnd)` | Convert BC records to `NPR Data Set` with typed columns and positions |
| `NavOneRecordToDataRow(RecRef, DataRow, DataSource, POSSession, FrontEnd)` | Map one BC record to a data row, handling extensions and variables |
| `AddFieldToDataSource(DataSource, Record, FieldNo, Visible, Editable)` | Add a BC field as a typed data source column with auto-detected type mapping |

### Data Type Mapping (AddFieldToDataSource)

| BC Type | NPR Data Type | Width |
|---------|---------------|-------|
| Boolean | Boolean | 2 |
| Date / DateTime / Time | DateTime | 4 |
| Decimal | Decimal | 5 |
| Integer / BigInteger | Integer | 4 |
| Option / Text / Code | String | 10/13/16/20 (by length) |

## Pages

| Name | Source Table | Purpose |
|------|-------------|---------|
| NPR POS Data Sources | NPR POS Data Source Discovery (temp) | Lookup page for data source selection |

## Events

| Event | Source | Type | Description |
|-------|--------|------|-------------|
| OnDiscoverDataSource | NPR POS Data Source Discovery | Business | Register available data sources |
| OnGetDataSource | NPR POS Data Management | — | Resolve data source name to implementation codeunit |
| OnDiscoverDataSourceExtensions | NPR POS Data Management | — | Register extensions for a data source |
| OnGetDataSourceExtension | NPR POS Data Management | — | Resolve extension implementation |
| OnAfterGetDataSource | NPR POS Data Management | — | Post-resolution customization |
| OnAfterReadDataSourceRow | NPR POS Data Management | — | Post-row-read transformations |
| OnReadDataSourceVariables | NPR POS Data Management | — | Populate variable/calculated columns |
| OnAfterReadDataSourceVariables | NPR POS Data Management | — | Post-variable-read transformations |
| OnDataSourceExtensionReadData | NPR POS Data Management | — | Populate extension data per row |
