---
type: concept
tags: [np-retail, commerce, np-designer]
relates: [pos/pos-core/overview.md, commerce/digital-receipt/overview.md]
updated: 2026-05-09
---

# NP Designer — Overview

Template-based document layout engine for NP Retail. Manages design templates, manifests (document assembly instructions), and signed manifest URLs for rendering receipts, tickets, orders, and other retail documents via the NP Designer cloud service.

## Purpose

- Template management — lookup, validate, and select design layouts by type (receipt, ticket, order, etc.)
- Manifest lifecycle — create, read, update, delete manifests that assemble multiple assets into a single document
- Signed URL generation — cryptographically signed (SHA-256) manifest URLs for secure frontend rendering
- Webhook integration — event-driven manifest processing via `NPR NPDesignerManifestWebHook`

## Key Tables

| Table | ID | Purpose |
|-------|----|---------|
| `NPR NPDesignerSetup` | 6151022 | Global configuration (Designer URL, API authorization, asset URL, manifest toggle) |
| `NPR NPDesignerManifest` | — | Manifest header (master template, language, TOC flag) |
| `NPR NPDesignerManifestLine` | — | Manifest asset lines (asset table, ID, render template, group/order) |
| `NPR NPDesignerTemplates` | — | Temporary/holding table for template list from API |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR NPDesigner` | 6248190 | Core facade — template lookup, manifest CRUD, signed URL generation |
| `NPR NPDesignerManifestWebHook` | — | Integration events for manifest lifecycle |

## Pages

| Page | Purpose |
|------|---------|
| `NPR NPDesignerSetupCard` | Setup card for Designer URL, API auth, asset URL |
| `NPR NPDesignerTemplateList` | Template selection lookup dialog |

## Integration Points

- Referenced by `NPR NpIa Item AddOn` (wallet integration) and `NPR NPDesignerTemplateId` fields across commerce modules
- Cloud rendering signed via SHA-256 hash of query params (`kid`, `gen`, `mid`, `gid`)
- Asset URL configurable via setup (default: `https://assets.npretail.app/`)
