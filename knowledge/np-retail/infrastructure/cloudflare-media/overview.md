---
type: concept
tags: [np-retail, infrastructure, cloudflare-media]
relates: [np-retail/infrastructure/environment/overview.md, np-retail/infrastructure/json/overview.md]
updated: 2026-05-09
---

# Cloudflare Media Module

The Cloudflare Media module provides a facade for uploading, storing, retrieving, and serving images through Cloudflare's media infrastructure (Cloudflare Images / R2). It supports image upload, signed URL generation, base64 retrieval, media migration, and license-based access control.

## Architecture

```
Application Code
       ↓
NPR CloudflareMediaFacade (6248556, _public — Public API)
       ↓
NPR CloudflareMediaImpl (6248557 — Internal Implementation)
       ↓
  ┌──────────────────────────────────────────┐
  │  Cloudflare Worker API                   │
  │  → POST /upload                          │
  │  → GET /sign                             │
  │  → POST /jobs (migration)                │
  │  → GET /jobs/{id}/status                 │
  │  → GET /jobs/{id} (results)              │
  │  → PUT /jobs/{id}/cancel                 │
  └──────────────────────────────────────────┘
       ↓
NPR CloudflareMediaLink (6151234) — DB storage
       ↓
NPR CloudflareMigrationJob (table)
NPR CloudflareMigrationJobLine (table)
```

## Image Operations

The module supports the full image lifecycle:

| Operation | Description |
|-----------|-------------|
| Upload | Uploads base64 image to Cloudflare via worker, returns media key, stores link in `NPR CloudflareMediaLink` table |
| Get URL | Generates time-limited signed URL for image delivery (supports self-signing via license when available) |
| Get Base64 | Retrieves image as base64-encoded string (for inline display in BC) |
| Delete | Removes media link from DB; deletes from Cloudflare when no other links reference the same key |

## Image Variants

The `NPR CloudflareMediaVariants` enum (6059922) defines available image sizes:

| Variant | Size | Type |
|---------|------|------|
| Original | Full resolution | Maintained aspect ratio |
| Small | 70x70 px | Square crop |
| Medium | 240x240 px | Square crop |
| Large | 360x360 px | Square crop |
| Thumbnail | Max 360px | Maintains aspect ratio |
| Preview | Max 1024px | Maintains aspect ratio |

## Media Selectors

The `NPR CloudflareMediaSelector` enum (6059923, extensible) categorizes media types and implements `NPR CloudflareMigrationInterface` for public ID lookups:

| Value | Caption | Implementation |
|-------|---------|---------------|
| 0 (NOOP) | — | CloudflareMediaImpl (no-op) |
| 100 | Member Photo | MMMemberImageMediaHandler |
| 200 | Restaurant Logo | NPRERestaurantLogoHandler (BC23+) |
| 201 | Menu Item Picture | NPREMenuItemPictureHandler (BC23+) |
| 202 | Restaurant Background | NPRERestBackgroundHandler (BC23+) |

## License-Based URL Signing

The module supports self-signing of image URLs when a valid license is configured:

1. License is stored as a base64-encoded JWT-like token in IsolatedStorage (`NPR_CF_MEDIA_LICENSE`)
2. License contains: `ver` (version=1), `kid` (key ID), `exp` (expiry Unix timestamp), `tid` (tenant ID prefix), `key` (API key), `sig` (signing secret)
3. When a valid license exists, URLs are self-signed locally using SHA256-HMAC, avoiding a round-trip to the Cloudflare worker
4. When no license or expired license, falls back to worker-based signing

## Migration Jobs

The module supports bulk migration of external images to Cloudflare:

1. **Create Job** — From JSON file or JSON array with `{public_id, url}` entries
2. **Start Migration** — Uploads job payload to Cloudflare worker (`POST /jobs`)
3. **Check Status** — Polls job processing status (`GET /jobs/{id}/status`)
4. **Get Results** — Fetches processed results with cursor-based pagination (`GET /jobs/{id}?limit=N&afterTs=X&afterRowid=Y`)
5. **Finalize** — Creates `NPR CloudflareMediaLink` records for successfully migrated images
6. **Cancel** — Cancels an ongoing migration (`PUT /jobs/{id}/cancel`)

## Environment-Based Routing

The Cloudflare worker URL is selected based on environment:

| Environment | Worker Base URL |
|-------------|----------------|
| Production (SaaS) | `https://bc-media.npretail.app` |
| Sandbox (SaaS) | `https://bc-media-sandbox.npretail.app` |
| Crane (OnPrem) | `https://bc-media-crane.npretail.app` |
| Prelive | `https://bc-media-crane.npretail-prelive.app` (compile flag `CF_MEDIA_PRELIVE`) |

Media prefix is derived from environment context: Crane containers use container name; SaaS uses AAD tenant ID + environment name + company name.

## Dependencies

- **Environment Information** — For environment type detection
- **Azure AD Tenant** — For tenant-based prefix construction
- **Cryptography Management** — For SHA256 signing
- **Type Helper** — For URL encoding, UTC time calculations
- **Base64 Convert** — For encoding/decoding
- **Used by** — Member management (member photos), restaurant module (logos, menu items)
