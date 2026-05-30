---
type: concept
tags: [np-retail, architecture]
relates: [np-retail/00-INDEX.md, np-retail/conventions.md, np-retail/workflow.md]
updated: 2026-05-09
sources:
  - https://github.com/navipartner/npcore-partners
  - https://github.com/navipartner/npcore-partners/blob/master/CLAUDE.md
  - https://github.com/navipartner/npcore-partners/blob/master/Application/app.json
---

## Overview

NP Retail is a Business POS solution from NaviPartner, built as a Microsoft Business Central ISV extension (AL language). It lives in the `Application/` directory of the npcore-partners monorepo, alongside a separate `Test/` app and `IntegrationTest/` toolkit. The repo also contains NP Attraction (attraction/events POS) and ecommerce integrations (Shopify, Magento).

All products compile into a single BC .app file targeting BC17+ (app.json `runtime: 6.0`, `platform: 17.0.0.0`). PR pipelines loop through BC17 to latest BC SaaS, using preprocessor symbols (`BC17`, `BC1700`, etc.) for version-specific code.

## Repo Layout

```
.plans/                        # AI-generated implementation plans (traceability)
Application/
  .scripts/                    # Build/automation scripts
  media/                       # Logo, images
  src/                         # 70+ AL modules
    _API/                      # Custom REST API module
    _API_SERVICES/             # API service implementations
    POS Core/                  # POS control add-in, core logic
    Sentry/                    # Sentry.io telemetry integration
    (66+ more modules...)
  app.json                     # BC app manifest (target: BC17)
  AppSourceCop.json
  main.ruleset.json
Test/                          # Test BC app
  app.json
IntegrationTest/               # Integration test toolkit
README.md
CLAUDE.md                      # Primary coding conventions & workflow
CLOUD_AGENTS.md                # Cloud agent instructions (bcdev CLI, Crane)
AGENTS.md
```

## Key Design Decisions

- **`_public` convention:** Public objects live in a `_public/` subfolder inside each module, ensuring visibility was intentional
- **Sentry over App Insights:** Custom telemetry via Sentry.io instead of BC's built-in Application Insights
- **Custom API layer:** REST APIs via dedicated `_API` and `_API_SERVICES` modules instead of standard OData pages/codeunits
- **React-based POS:** POS frontend is a control add-in (`POSDragonglass.Page.al`) running a React SPA
- **Interface injection for testing:** Pass records by reference (`var`) so tests can inject temporary-record mocks, skipping the database
- **Fern API docs:** API specifications maintained in a separate repo (`navipartner/documentation`)
- **Weekly releases:** Every Sunday, master → release tag. Deployed to NP's own customers starting Monday

## Module Map

Modules are grouped into sub-domains:

| Sub-domain | Count | Description |
|-----------|-------|-------------|
| pos | ~32 | Point of Sale core, payment, posting, discount, setup, etc. |
| inventory | ~12 | Inventory, replenishment, item catalog, item worksheet |
| integration | ~9 | Ecommerce, Magento, Adyen, PrintNode, Consignor |
| commerce | ~9 | Designer, notifications, digital receipt, coupons |
| infrastructure | ~17 | Sentry, API, Key Vault, Azure Functions, JSON, endpoints |
| accounts | ~8 | Billing, members, intercompany, GDPR, base data |
| attraction | ~3 | NP Attraction wallet, external POS sale |
| localization | ~1 | Localization support |
| demo | ~1 | Demo data |
| data | ~1 | Data packaging |
