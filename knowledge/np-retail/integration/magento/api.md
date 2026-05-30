---
type: reference
tags: [np-retail, integration, magento, tables, codeunits, pages, enums, xmlports, interfaces]
relates: [integration/magento/overview.md]
updated: 2026-05-09
---

# Magento — API Reference

## Tables (Public)

| Table | ID Context | Purpose |
|-------|-----------|---------|
| `MagentoSetup` | — | Global integration configuration (API endpoint, auth keys, default settings) |
| `MagentoWebsite` | — | Website-level settings |
| `MagentoStore` | — | Store view configuration |
| `MagentoStoreItem` | — | Per-store-item configuration (visibility, pricing) |
| `MagentoAttribute` | — | Product attribute definitions synced from Magento |
| `MagentoAttributeSet` | — | Attribute set grouping |
| `MagentoCategory` | — | Category hierarchy synced from Magento |
| `MagentoCategoryLink` | — | Item-to-category linkage |
| `MagentoBrand` | — | Brand definitions |
| `MagentoDisplayConfig` | — | Display configuration (group-based settings) |
| `MagentoDisplayGroup` | — | Display group definitions |
| `MagentoCustomerMapping` | — | Maps Magento customer IDs → BC Customer No. |
| `MagentoContactShipToAdr` | — | Contact ship-to address mapping |
| `MagentoContactPmtMeth` | — | Contact payment method mapping |
| `MagentoContactShptMeth` | — | Contact shipping method mapping |
| `MagentoOrderStatus` | — | Order status codes and mappings |
| `MagentoPaymentMapping` | — | Payment method code → BC payment method |
| `MagentoShipmentMapping` | — | Shipping method code → BC shipping agent |
| `MagentoPicture` | — | Product image metadata |
| `MagentoPictureLink` | — | Picture-to-item linkages |
| `MagentoProductRelation` | — | Related/upsell/cross-sell product relations |
| `MagentoPaymentGateway` | — | Payment gateway configuration |
| `MagentoPaymentLine` | — | Payment line records from imported orders |
| `MagentoInvCompany` | — | Inventory company mapping for multi-company |
| `MagentoItemAttr` | — | Item attribute value storage |
| `MagentoItemAttrValue` | — | Attribute value option definitions |
| `MagentoCustomOption` | — | Custom option definitions (templates) |
| `MagentoItemCustomOption` | — | Per-item custom option instances |
| `MagentoItmCstmOptValue` | — | Custom option values for items |
| `MagentoCustomerGroup` | — | Customer group mapping |
| `MagentoAttrLabel` | — | Attribute label translations |
| `MagentoAttrSetValue` | — | Attribute set value assignments |
| `MagentoPostOnImportSetup` | — | Post-import processing rules |
| `MagentoGenSetupBuffer` | — | General setup buffer (temporary/config storage) |
| `ExternalPaymentTypeID` | — | External payment type ID mapping |

## Codeunits (Public)

| Codeunit | Purpose |
|----------|---------|
| `MagentoMgt` | Core orchestrator — coordinates full sync cycles |
| `MagentoSetupMgt` | Setup and configuration operations |
| `MagentoGenSetupMgt` | General setup buffer management |
| `MagentoFeature` | Feature detection (which Magento capabilities are available) |
| `MagentoFunctions` | Utility functions (string manipulation, date formatting, API calls) |
| `MagentoWebservice` | Direct Magento SOAP/REST API communication |
| `MagentoItemMgt` | Item/catalog data management and sync |
| `MagentoCategoryMgt` | Category creation, update, and hierarchy management |
| `MagentoChartMgt` | Chart of accounts and dimension mapping |
| `MagentoPictureMgt` | Image download and management |
| `MagentoAttrSetMgt` | Attribute set sync and management |
| `MagentoNpXmlSetupMgt` | Builds NP XML configuration for item export |
| `MagentoNpXmlValueMgt` | Generates NP XML values for items |
| `MagentoNpXmlTriggerMgt` | Manages triggers for XML generation events |
| `MagentoNpXmlExtItem` | Extended item XML data |
| `MagentoNpXmlExclVat` | VAT-exclusive pricing XML |
| `MagentoNpXmlFIK` | FIK (Finnish) XML data generation |
| `MagentoNpXmlFirstname` | First name parsing for XML |
| `MagentoNpXmlLastname` | Last name parsing for XML |
| `MagentoNpXmlGenChildMgt` | Child item generation for XML |
| `MagentoNpXmlQtyIncr` | Quantity increment XML data |
| `MagentoNpXmlStockQty` | Stock quantity XML data |
| `MagentoNpXmlStockStatus` | Stock status XML data |
| `MagentoNpxmlItemCrossRef` | Item cross-reference XML |
| `MagentoSelectFiltMgt` | Selection filter management for partial syncs |
| `MagentoSalesOrderMgt` | Sales order import, validation, and creation |
| `MagentoLookupSalesOrder` | Sales order lookup in Magento |
| `MagentoImpRetOrder` | Return merchandise authorization import |
| `MagentoLookupRetOrder` | Return order lookup |
| `MagentoOrderStatusMgt` | Order status synchronization |
| `MagentoPmtMgt` | Payment method mapping and management |
| `MagentoPostPaymentLine` | Payment line posting to general ledger |
| `PaymentLineMgt` | Payment line processing and reconciliation |
| `MagentoProjAvailBalan` | Available balance checking for projects |
| `MagentoNcTaskCardMgt` | NP task card management |
| `MagentoInvNpXmlValue` | Inventory-specific XML value generation |

## Key Enums

| Enum | Purpose |
|------|---------|
| `MagentoOrderStatus` | Magento order status codes |
| `MagentoPaymentType` | Payment type classification |
| `MagentoApiUsernameType` | API authentication type |
| `MagentoCustUpdateMode` | Customer update mode control |
| `MagentoCustomerMapping` | Customer mapping strategy |
| `MagentoContactShipToAdr` | Contact ship-to address handling |
| `MagDisplayConfigType` | Display configuration type |
| `MagDisConfSalesType` | Display configuration sales type |
| `MagProdRelationType` | Product relation type (related/upsell/cross-sell) |
| `MagShipmentFeeType` | Shipment fee type |
| `MagentoItemCustomType` | Item custom option type |
| `MagentoItemAttrValue` | Item attribute value type |
| `MagentoMiniaturePicture` | Miniature picture type |
| `MagentoPictureType` | Picture type classification |
| `MagentoPicVarietyType` | Picture variety type |
| `MagGiftVoucherActiv` | Gift voucher activation setting |
| `MagCustOptPriceType` | Custom option price type |
| `EmailRetailVouchersto` | Email retail vouchers target |
| `MagentoStoreItemVisibility` | Store item visibility setting |

## Interfaces

| Interface | Purpose |
|-----------|---------|
| `PayByLink.Interface` | Contract for payment link implementations |

## XMLPorts

| XMLPort | Purpose |
|---------|---------|
| `MagentoAvailInvExp` | Available inventory export |
| `MagentoDocumentExport` | Document export |
| `MagentoInvSetApi` | Inventory set API |
| `ImportMagentoDescription` | Import Magento descriptions |
