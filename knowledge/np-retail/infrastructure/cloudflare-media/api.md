---
type: reference
tags: [np-retail, infrastructure, cloudflare-media]
relates: [np-retail/infrastructure/cloudflare-media/overview.md]
updated: 2026-05-09
---

# Cloudflare Media — API Reference

## Enums

| ID | Name | Caption | Values | Implements | Description |
|----|------|---------|--------|------------|-------------|
| 6059922 | "NPR CloudflareMediaVariants" | NPR CloudflareMediaVariants | ORIGINAL (0), SMALL (1), MEDIUM (2), LARGE (3), THUMBNAIL (4), PREVIEW (5) | — | Image size/resolution variants for Cloudflare media delivery |
| 6059923 | "NPR CloudflareMediaSelector" | NPR CloudflareMediaSelector | NOOP (0), MEMBER_PHOTO (100), RESTAURANT_LOGO (200, BC23+), MENU_ITEM_PICTURE (201, BC23+), RESTAURANT_BACKGROUND (202, BC23+) | "NPR CloudflareMigrationInterface" | Categorizes media type for routing to appropriate implementation handler. Extensible. Each value maps to a MigrationInterface implementation |

## Interfaces

| Name | Description |
|------|-------------|
| "NPR CloudflareMigrationInterface" | Single-method interface: `PublicIdLookup(PublicId: Text[100]; var TableNumber: Integer; var SystemId: Guid): Boolean`. Implemented by each MediaSelector value to resolve public IDs to BC table records |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6151234 | "NPR CloudflareMediaLink" | NPR Cloudflare Media Link | Key1: TableNumber, RecordId, MediaSelector (clustered); Key2: MediaKey; Key3: PublicId | Maps (TableNumber, RecordId, MediaSelector, MediaKey, PublicId) — links BC records to Cloudflare media keys |
| — | "NPR CloudflareMigrationJob" | NPR Cloudflare Migration Job | JobId (Guid) | Tracks migration jobs: MediaSelector, BatchId, rate limit, enqueued/success/failed/total counts, cursor-based pagination state (NextCursorAfterTs, NextCursorAfterRowId) |
| — | "NPR CloudflareMigrationJobLine" | NPR Cloudflare Migration Job Line | — | Individual migration item: PublicId, ImageUrl, Status (Pending/Queued/Success/Failed/Finalized), MediaKey, Reason, FileSize, ContentType |

## Codeunits

| ID | Name | Caption | Access | Key Procedures | Description |
|----|------|---------|--------|---------------|-------------|
| 6248556 | "NPR CloudflareMediaFacade" | NPR CloudflareMediaFacade | **Public** | AddLicense, RemoveLicense, GetLicenseInfo, Upload, StoreMediaKey (2 overloads), GetMediaKey, GetMediaUrl, GetMediaB64, Delete, DeleteMediaKey, CreateMigrationJobFromJsonFileArray, CreateMigrationJobFromJsonArray (2 overloads), StartMigrationJob, FinalizeMigrationJob, GetMigrationJobStatus, GetMigrationJobResults, CancelMigrationJob | Public facade providing the complete API surface for Cloudflare Media operations |
| 6248557 | "NPR CloudflareMediaImpl" | NPR CloudflareMediaImpl | Internal | Upload, StoreMediaLink, GetMediaUrl, GetMediaB64, Delete, PublicIdLookup, AddLicense, RemoveLicense, GetLicenseInfo, GetApiKey, GetSecret, LoadJobLineArray, CreateJobForLineArray, StartMigration, FinalizeMigration, GetJobStatus, GetJobResults, CancelMigration | Internal implementation. Implements `NPR CloudflareMigrationInterface` (NOOP handler). Contains all worker HTTP calls, license validation, self-signing logic, migration management |
| — | "NPR CloudflareMediaSvgHelper" | NPR CloudflareMediaSvgHelper | Internal | — | SVG-specific helper functions |

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| — | "NPR Cloudflare Image FactBox" | — | FactBox | Image display factbox |
| — | "NPR Cloudflare Media License" | — | Card | License management page |
| — | "NPR Cloudflare Media Link Card" | — | Card | Individual media link card |
| — | "NPR Cloudflare Media Link List" | — | List | Media links list |
| — | "NPR Cloudflare Media Setup Card" | — | Card | Module setup page |
| — | "NPR Cloudflare Migration Job" | — | Card | Migration job card |
| — | "NPR Cloudflare Migration Job Card" | — | Card | Alternative card view |
| — | "NPR Cloudflare Migration Job Line" | — | List | Migration job lines |
