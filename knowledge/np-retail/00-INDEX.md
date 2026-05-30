# knowledge/np-retail — NaviPartner NP Retail KB

Tag matrix for repository documentation, conventions, and module references.

## Shared

File                        | type      | tags                    | summary
----------------------------|-----------|-------------------------|------------------------------------------
architecture.md             | concept   | np-retail, architecture | Repo-level architecture overview
conventions.md              | reference | np-retail, conventions  | Coding rules, naming, patterns
workflow.md                 | guide     | np-retail, workflow     | Dev workflow: compile, test, deploy
change-tracking.md          | reference | np-retail, tracking     | Last processed commit state
_object-registry.md         | reference | np-retail, registry     | Cross-module object index

## pos/

File                                    | np-retail | pos | tables | codeunits | events
----------------------------------------|-----------|-----|--------|-----------|-------
pos/pos-core/overview.md                |    ✓      |  ✓  |        |           |
pos/pos-core/api.md                     |    ✓      |  ✓  |   ✓    |    ✓      |   ✓
pos/pos-payment/overview.md             |    ✓      |  ✓  |        |           |
pos/pos-payment/api.md                  |    ✓      |  ✓  |   ✓    |    ✓      |   ✓
pos/pos-action/overview.md              |    ✓      |  ✓  |        |           |
pos/pos-action/api.md                   |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-background-tasks/overview.md    |    ✓      |  ✓  |        |           |
pos/pos-background-tasks/api.md         |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-billing/overview.md             |    ✓      |  ✓  |        |           |
pos/pos-billing/api.md                  |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-compliance/overview.md          |    ✓      |  ✓  |        |           |
pos/pos-compliance/api.md               |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-cross-reference/overview.md     |    ✓      |  ✓  |        |           |
pos/pos-cross-reference/api.md          |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-data-source/overview.md         |    ✓      |  ✓  |        |           |
pos/pos-data-source/api.md              |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-discount/overview.md            |    ✓      |  ✓  |        |           |
pos/pos-discount/api.md                 |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-info/overview.md                |    ✓      |  ✓  |        |           |
pos/pos-info/api.md                     |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-input-box/overview.md           |    ✓      |  ✓  |        |           |
pos/pos-input-box/api.md                |    ✓      |  ✓  |   ✓    |    ✓      |
pos/pos-inventory-set/overview.md       |    ✓      |  ✓  |        |           |
pos/pos-inventory-set/api.md            |    ✓      |  ✓  |   ✓    |    ✓      |

## inventory/

File                                        | np-retail | inventory | tables | codeunits | pages | events | queries
--------------------------------------------|-----------|-----------|--------|-----------|-------|--------|--------
inventory/inventory/overview.md             |    ✓      |   ✓       |        |           |       |        |
inventory/inventory/api.md                  |    ✓      |   ✓       |   ✓    |    ✓      |       |        |
inventory/inventory-cost-adjmt/overview.md  |    ✓      |   ✓       |        |           |       |        |
inventory/inventory-cost-adjmt/api.md       |    ✓      |   ✓       |        |    ✓      |       |   ✓    |
inventory/item-addon/overview.md            |    ✓      |   ✓       |        |           |       |        |
inventory/item-addon/api.md                 |    ✓      |   ✓       |   ✓    |    ✓      |   ✓   |   ✓    |
inventory/item-catalog/overview.md          |    ✓      |   ✓       |        |           |       |        |
inventory/item-catalog/api.md               |    ✓      |   ✓       |   ✓    |    ✓      |   ✓   |        |
inventory/item-category/overview.md         |    ✓      |   ✓       |        |           |       |        |
inventory/item-category/api.md              |    ✓      |   ✓       |   ✓    |    ✓      |   ✓   |   ✓    |
inventory/item-hierarchy/overview.md        |    ✓      |   ✓       |        |           |       |        |
inventory/item-hierarchy/api.md             |    ✓      |   ✓       |   ✓    |    ✓      |   ✓   |        |
inventory/item-reference/overview.md        |    ✓      |   ✓       |        |           |       |        |
inventory/item-reference/api.md             |    ✓      |   ✓       |   ✓    |           |   ✓   |        |

## integration/

File                                            | np-retail | integration | ecommerce | magento | magento-2 | adyen | btwentyfour | entria | printnode | pacsoft | consignor
------------------------------------------------|-----------|-------------|-----------|---------|-----------|-------|-------------|--------|-----------|---------|----------
integration/ecommerce/overview.md               |    ✓      |   ✓         |    ✓      |         |           |       |             |        |           |         |
integration/ecommerce/api.md                    |    ✓      |   ✓         |    ✓      |         |           |       |             |        |           |         |
integration/magento/overview.md                 |    ✓      |   ✓         |           |    ✓    |           |       |             |        |           |         |
integration/magento/api.md                      |    ✓      |   ✓         |           |    ✓    |           |       |             |        |           |         |
integration/magento-2/overview.md               |    ✓      |   ✓         |           |         |    ✓      |       |             |        |           |         |
integration/magento-2/api.md                    |    ✓      |   ✓         |           |         |    ✓      |       |             |        |           |         |
integration/adyen-reconciliation/overview.md    |    ✓      |   ✓         |           |         |           |   ✓   |             |        |           |         |
integration/adyen-reconciliation/api.md         |    ✓      |   ✓         |           |         |           |   ✓   |             |        |           |         |
integration/btwentyfour-service/overview.md     |    ✓      |   ✓         |           |         |           |       |     ✓       |        |           |         |
integration/btwentyfour-service/api.md          |    ✓      |   ✓         |           |         |           |       |     ✓       |        |           |         |
integration/entria-integration/overview.md      |    ✓      |   ✓         |           |         |           |       |             |   ✓    |           |         |
integration/entria-integration/api.md           |    ✓      |   ✓         |           |         |           |       |             |   ✓    |           |         |
integration/printnode/overview.md               |    ✓      |   ✓         |           |         |           |       |             |        |    ✓      |         |
integration/printnode/api.md                    |    ✓      |   ✓         |           |         |           |       |             |        |    ✓      |         |
integration/pacsoft/overview.md                 |    ✓      |   ✓         |           |         |           |       |             |        |           |   ✓     |
integration/pacsoft/api.md                      |    ✓      |   ✓         |           |         |           |       |             |        |           |   ✓     |
integration/consignor/overview.md               |    ✓      |   ✓         |           |         |           |       |             |        |           |         |   ✓
integration/consignor/api.md                    |    ✓      |   ✓         |           |         |           |       |             |        |           |         |   ✓

## infrastructure/

File                                        | np-retail | infra | sentry | tables | codeunits | events | enums
--------------------------------------------|-----------|-------|--------|--------|-----------|--------|------
infrastructure/sentry/overview.md           |    ✓      |   ✓   |   ✓    |        |           |        |
infrastructure/sentry/api.md                |    ✓      |   ✓   |   ✓    |   ✓    |    ✓      |   ✓    |  ✓
(infra-* — added incrementally per module)  |           |       |        |        |           |        |

## accounts/

File                                               | np-retail | accounts | tables | codeunits | pages | enums | queries | reports
---------------------------------------------------|-----------|----------|--------|-----------|-------|-------|--------|--------
accounts/accounts/overview.md                      |    ✓      |   ✓      |        |           |       |       |        |
accounts/accounts/api.md                           |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |
accounts/billing/overview.md                       |    ✓      |   ✓      |        |           |       |       |        |
accounts/billing/api.md                            |    ✓      |   ✓      |   ✓    |    ✓      |       |   ✓   |        |
accounts/member-module/overview.md                 |    ✓      |   ✓      |        |           |       |       |        |
accounts/member-module/api.md                      |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |   ✓   |   ✓    |   ✓
accounts/intercompany/overview.md                  |    ✓      |   ✓      |        |           |       |       |        |
accounts/intercompany/api.md                       |    ✓      |   ✓      |   ✓    |    ✓      |       |       |        |
accounts/gdpr/overview.md                          |    ✓      |   ✓      |        |           |       |       |        |
accounts/gdpr/api.md                               |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |
accounts/rapid-start-base-data/overview.md         |    ✓      |   ✓      |        |           |       |       |        |
accounts/rapid-start-base-data/api.md              |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |
accounts/auxiliary-tables/overview.md              |    ✓      |   ✓      |        |           |       |       |        |
accounts/auxiliary-tables/api.md                   |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |
accounts/application-area/overview.md              |    ✓      |   ✓      |        |           |       |       |        |
accounts/application-area/api.md                   |    ✓      |   ✓      |        |    ✓      |       |       |        |

## commerce/

File                                               | np-retail | commerce | tables | codeunits | pages | enums | queries | events
---------------------------------------------------|-----------|----------|--------|-----------|-------|-------|--------|-------
commerce/np-designer/overview.md                   |    ✓      |   ✓      |        |           |       |       |        |
commerce/np-designer/api.md                        |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |   ✓
commerce/description-control/overview.md            |    ✓      |   ✓      |        |           |       |       |        |
commerce/description-control/api.md                 |    ✓      |   ✓      |   ✓    |           |       |       |        |
commerce/customer-phone-lookup/overview.md          |    ✓      |   ✓      |        |           |       |       |        |
commerce/customer-phone-lookup/api.md               |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |   ✓
commerce/digital-notification/overview.md           |    ✓      |   ✓      |        |           |       |       |        |
commerce/digital-notification/api.md                |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |   ✓   |        |
commerce/digital-receipt/overview.md                |    ✓      |   ✓      |        |           |       |       |        |
commerce/digital-receipt/api.md                     |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |   ✓   |        |
commerce/dimensions/overview.md                     |    ✓      |   ✓      |        |           |       |       |        |
commerce/dimensions/api.md                          |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |   ✓   |        |
commerce/attributes/overview.md                     |    ✓      |   ✓      |        |           |       |       |        |
commerce/attributes/api.md                          |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |   ✓    |
commerce/group-codes/overview.md                    |    ✓      |   ✓      |        |           |       |       |        |
commerce/group-codes/api.md                         |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |
commerce/distribution/overview.md                   |    ✓      |   ✓      |        |           |       |       |        |
commerce/distribution/api.md                        |    ✓      |   ✓      |   ✓    |    ✓      |   ✓   |       |        |

## attraction/

File                                                    | np-retail | attraction | tables | codeunits | enums | queries | pages | events
--------------------------------------------------------|-----------|------------|--------|-----------|-------|---------|-------|-------
attraction/attraction-wallet/overview.md                |    ✓      |   ✓        |        |           |       |         |       |
attraction/attraction-wallet/api.md                     |    ✓      |   ✓        |   ✓    |    ✓      |   ✓   |   ✓     |   ✓   |   ✓
attraction/external-pos-sale/overview.md                |    ✓      |   ✓        |        |           |       |         |       |
attraction/external-pos-sale/api.md                     |    ✓      |   ✓        |   ✓    |    ✓      |       |         |   ✓   |   ✓
attraction/retail-item-journal/overview.md              |    ✓      |   ✓        |        |           |       |         |       |
attraction/retail-item-journal/api.md                   |    ✓      |   ✓        |        |    ✓      |       |         |   ✓   |

## localization/

File                                                    | np-retail | localization | tables | codeunits | pages | enums | reports
--------------------------------------------------------|-----------|--------------|--------|-----------|-------|-------|--------
localization/localizations/overview.md                  |    ✓      |   ✓          |        |           |       |       |
localization/localizations/api.md                       |    ✓      |   ✓          |   ✓    |    ✓      |   ✓   |   ✓   |   ✓

## demo/

File                                                    | np-retail | demo | codeunits
--------------------------------------------------------|-----------|------|---------
demo/demo/overview.md                                   |    ✓      |  ✓   |
demo/demo/api.md                                        |    ✓      |  ✓   |  ✓

## data/

File                                                    | np-retail | data | tables | codeunits | pages
--------------------------------------------------------|-----------|------|--------|-----------|------
data/data-package/overview.md                           |    ✓      |  ✓   |        |           |
data/data-package/api.md                                |    ✓      |  ✓   |   ✓    |    ✓      |  ✓
