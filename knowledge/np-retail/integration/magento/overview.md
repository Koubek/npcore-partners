---
type: concept
tags: [np-retail, integration, magento]
relates: [integration/magento-2/overview.md, integration/ecommerce/overview.md]
updated: 2026-05-09
---

# Magento — Overview

Magento 1.x integration for NP Retail. Provides full bidirectional synchronization between Business Central and Magento ecommerce platform, covering catalog, inventory, orders, customers, payments, and shipping.

## Purpose

- Product catalog sync: items, attributes, attribute sets, categories, brands, custom options, pictures
- Inventory & stock synchronization across multiple websites/stores
- Sales order import and processing from Magento
- Return order import and processing
- Customer & contact mapping and sync
- Payment gateway configuration and payment line mapping
- Shipping method mapping
- Pay-by-link integration for payment links
- Order status management

## Submodules

| Submodule | Purpose |
|-----------|---------|
| **PayByLink** | Payment link generation — generates payment URLs for orders |
| **Payment Gateways** | Payment gateway configuration and mapping |

## Key Tables

| Table | Purpose |
|-------|---------|
| `MagentoSetup` | Global Magento integration setup |
| `MagentoStore` | Store view configuration |
| `MagentoStoreItem` | Per-store item configuration |
| `MagentoWebsite` | Website-level configuration |
| `MagentoAttribute` | Product attribute definitions |
| `MagentoAttributeSet` | Attribute set definitions |
| `MagentoCategory` | Category structure |
| `MagentoDisplayConfig` | Display configuration settings |
| `MagentoCustomerMapping` | Customer ID mapping |
| `MagentoOrderStatus` | Order status tracking |
| `MagentoPaymentMapping` | Payment method mapping |
| `MagentoShipmentMapping` | Shipping method mapping |
| `MagentoBrand` | Brand definitions |
| `MagentoPicture` | Product image management |
| `MagentoProductRelation` | Product relation definitions |
| `MagentoInvCompany` | Inventory company mapping |
| `MagentoItemAttr` | Item attribute values |
| `MagentoCustomOption` | Custom option definitions |
| `MagentoPaymentGateway` | Payment gateway configuration |
| `MagentoPaymentLine` | Payment line tracking |
| `MagentoPostOnImportSetup` | Post-import processing setup |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `MagentoMgt` | Core management — orchestrates sync operations |
| `MagentoSetupMgt` | Setup and configuration management |
| `MagentoGenSetupMgt` | General setup buffer management |
| `MagentoFeature` | Feature detection and capability checks |
| `MagentoFunctions` | Shared utility functions |
| `MagentoWebservice` | Magento API web service communication |
| `MagentoItemMgt` | Item/catalog sync management |
| `MagentoCategoryMgt` | Category structure management |
| `MagentoChartMgt` | Chart of accounts mapping |
| `MagentoPictureMgt` | Product image management |
| `MagentoAttrSetMgt` | Attribute set management |
| `MagentoNpXmlSetupMgt` | NP XML setup generation |
| `MagentoNpXmlValueMgt` | NP XML value generation |
| `MagentoNpXmlTriggerMgt` | NP XML trigger management |
| `MagentoSelectFiltMgt` | Selection filter management |
| `MagentoSalesOrderMgt` | Sales order import and processing |
| `MagentoLookupSalesOrder` | Sales order lookup in Magento |
| `MagentoImpRetOrder` | Return order import |
| `MagentoLookupRetOrder` | Return order lookup |
| `MagentoOrderStatusMgt` | Order status synchronization |
| `MagentoPmtMgt` | Payment management |
| `MagentoPostPaymentLine` | Payment line posting |
| `PaymentLineMgt` | Payment line processing |
| `MagentoProjAvailBalan` | Project available balance check |

## PayByLink Submodule

| Object | Purpose |
|--------|---------|
| `PayByLink.Interface` | Pay-by-link interface definition |
| `PayByLinkSetup` | Pay-by-link configuration table |
| `PayByLinkDialog` | Pay-by-link dialog page |
| `DefaultPayByLink` | Default payment link implementation |
| `UnknownPayByLink` | Unknown payment link handler |
