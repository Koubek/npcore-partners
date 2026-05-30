---
type: concept
tags: [np-retail, infrastructure, cognitive-services]
relates: [np-retail/infrastructure/key-vault/overview.md]
updated: 2026-05-09
---

# Cognitive Services Module

The Cognitive Services module integrates Azure Cognitive Services (specifically Azure Face API) into NP Retail for facial recognition capabilities — face detection, identification, person group management, and member photo matching.

## Purpose

- **Face Detection** — Detects faces in uploaded images with attributes (age, gender, smile, facial hair, glasses, emotion, etc.)
- **Person Identification** — Matches detected faces against registered persons in person groups
- **Person Group Management** — Create, train, and manage person groups (logical collections of persons)
- **Person Management** — Create/update persons with associated face data
- **Member Photo Integration** — Imports member photos, detects faces, identifies/creates persons, and associates them with loyalty members

## Architecture

```
BC Application (e.g., Member Management)
       ↓
NPR MCS Face Service API (6059955)
       ↓
  ┌──────────────────────────────────────┐
  │  Azure Cognitive Services Face API   │
  │  → POST /detect (face detection)     │
  │  → POST /identify (face matching)    │
  │  → PUT/POST/DELETE /persongroups     │
  │  → POST /persongroups/{id}/train     │
  │  → GET  /persongroups/{id}/training  │
  │  → POST /persongroups/{id}/persons   │
  │  → POST /persons/{id}/persistedFaces │
  └──────────────────────────────────────┘
       ↓
Tables: MCS API Setup, MCS Person Groups, MCS Person,
        MCS Faces, MCS Person Bus. Entit.
```

## Data Model

| Entity | Table | Description |
|--------|-------|-------------|
| API Setup | "NPR MCS API Setup" (6059955) | Per-API configuration: base URL, keys (stored in IsolatedStorage), image orientation |
| Person Groups | "NPR MCS Person Groups" (6059957) | Logical groups of persons (e.g., loyalty members). Auto-assigned PersonGroupId from GUID |
| Person | "NPR MCS Person" (6059958) | Individual person record with Name, UserData, linked to PersonGroup |
| Face | "NPR MCS Faces" (6059959) | Detected face metadata: face rectangle, age, gender, smile, facial hair, glasses, identification status |
| Business Entity Link | "NPR MCS Person Bus. Entit." (6059960) | Links a Person to a BC record (Table Id + Key), enabling cross-referencing |

## API Configuration

The `NPR MCS API Setup` table stores configurations per API type (Face, Speech, Recommendation). Keys are stored securely in IsolatedStorage (with optional encryption) and masked as `*` in the UI. Base URLs are stored in BLOB fields with URI validation.

## Face Detection Flow

1. User uploads image (gif/png/jpg/jpeg/bmp) via `ImportMemberPicture`
2. Face detection via `POST /detect` with full attribute set (age, gender, headPose, smile, facialHair, glasses, emotion, hair, makeup, occlusion, accessories, blur, exposure, noise)
3. Optional face identification against person group via `POST /identify`
4. For each detected face:
   - If identified → link to existing person
   - If new → create person, add face via `POST /persistedFaces`
   - Insert face record with all attributes
5. Train person group (`POST /train`) to update the AI model
6. Wait for training to complete before subsequent identifications

## Key Design Decisions

- API keys are stored in IsolatedStorage with encryption support (user-configurable via `EncryptionEnabled`)
- Barcode-like functionality via `NPR Barcode Lookup Mgt.` for scanning members
- Training status is checked before identification — if still `running`, errors with a message; if `notstarted`, skips identification
- Person group IDs are auto-generated from GUID on insert (lowercase, braces stripped)
- The API key is sent via `Ocp-Apim-Subscription-Key` header
- Business entity linking enables the same person to be referenced from multiple BC records

## Dependencies

- **Azure Cognitive Services** — Face API endpoint
- **Image Helpers** — For image type validation (gif/png/jpg/jpeg/bmp)
- **Type Helper** — For URI validation, date/time utilities
- **Used by** — Member/loyalty management module for member photo import and identification
