---
type: reference
tags: [np-retail, commerce, np-designer, tables, codeunits, pages, events]
relates: [commerce/np-designer/overview.md]
updated: 2026-05-09
---

# NP Designer — API Reference

## Tables

### Table 6151022 "NPR NPDesignerSetup"

Single-record setup. Fields: `Code`, `DesignerURL`, `ApiAuthorization`, `PublicTicketURL`, `PublicOrderURL`, `EnableManifest`, `AssetsUrl` (default `https://assets.npretail.app/`).

## Codeunits

### Codeunit 6248190 "NPR NPDesigner" (Internal)

Core management codeunit. Key procedures:

**Template Management:**
- `LookupDesignLayouts(Type, LookupCaption, var NPDesignerTemplateId, var NPDesignerTemplateLabel)` — opens template selection dialog for a given document type
- `ValidateDesignLayouts(Type, var NPDesignerTemplateId, var NPDesignerTemplateLabel)` — validates template exists for type

**Manifest Management:**
- `CreateManifest(): Guid` — create empty manifest
- `CreateManifest(ExternalTemplateId, LanguageCode, ShowToC): Guid` — create with master template
- `GetManifest(ManifestId): JsonObject` — read manifest as JSON (id, languageCode, toc, assets[])
- `SetPreferredAssetLanguage(ManifestId, PreferredAssetLanguage): Boolean`
- `SetShowTableOfContents(ManifestId, ShowTableOfContents): Boolean`
- `AddAssetToManifest(ManifestId, AssetTableNumber, AssetId, AssetPublicId, ExternalTemplateId): Boolean` — add single asset
- `AddAssetToManifest(ManifestId, AssetTableNumber, Dictionary[Guid,Text[100]], ExternalTemplateId, var List[Guid]): Boolean` — batch add
- `RemoveAssetFromManifest(ManifestId, AssetTableNumber, AssetId): Boolean` — remove single
- `RemoveAssetFromManifest(ManifestId, AssetTableNumber, List[Guid], var List[Guid]): Boolean` — batch remove
- `DeleteManifest(ManifestId): Boolean`
- `GetManifestUrl(ManifestId, var Url): Boolean` — generate signed URL with SHA-256 signature
- `GetManifestUrlForAsset(AssetTableNumber, AssetId, var Url): Boolean` — look up manifest by asset, return signed URL

**Internal Helpers:**
- `GetDesignerTemplates(Type, var DesignerTemplates)` — fetches template list from NP Designer API
- `DesignerTemplateApi(Type, Result)` — HTTP GET to Designer URL with Bearer auth, 60s timeout

**Manifest URL signing algorithm:** SHA-256 hash of `"GET|kid|gen|mid|gid"`, where kid=0, gen=current unix timestamp, mid=manifestId, gid=templateId. Base64url-encoded without padding.

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `NPR NPDesignerSetupCard` | NPR NPDesignerSetup | Setup card (URL, API auth, manifest config) |
| `NPR NPDesignerTemplateList` | NPR NPDesignerTemplates | Template selection dialog |

## Integration Events (Codeunit NPR NPDesignerManifestWebHook)

| Event | Trigger |
|-------|---------|
| `OnManifestCreated(ManifestId)` | After manifest header insert |
| `OnManifestDeleted(ManifestId)` | After manifest deletion |
| `OnManifestContentAdded(ManifestId, LineSystemId, AssetTableNumber, AssetId, AssetPublicId, ExternalTemplateId)` | After asset added |
| `OnManifestContentRemoved(ManifestId, LineSystemId, AssetTableNumber, AssetId)` | After asset removed |
| `OnManifestContentChange(ManifestId)` | After batch content change |
