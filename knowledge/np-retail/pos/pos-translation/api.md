---
type: reference
tags: [np-retail, pos, translation, pos-translation]
relates:
  - np-retail/pos/pos-translation/overview.md
updated: 2026-05-09
---

# POS Translation Module — API Reference

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6014679 | "NPR POS Sale Translation" | NPR POS Sale Translation | AssignLanguageCodeFromPOSAction(var POSSale, LanguageCode), AssignLanguageCodeFrom(var POSSale, Rec: Variant), AssignTranslationOnPOSSaleLine(var POSSaleLine, POSSale), GetItemTranslation(var POSSaleLine, POSSale) | OnBeforeChangeTranslationPerPOSSaleLine, OnGetTranslation, OnAfterGetItemTranslation, OnBeforeAssignLanguageCodeFrom |

### Codeunit Details

**6014679 "NPR POS Sale Translation"** — Translation orchestrator:
- `AssignLanguageCodeFromPOSAction(var POSSale, LanguageCode)`: Sets the language code directly from a POS action parameter, then triggers line translation
- `AssignLanguageCodeFrom(var POSSale, Rec)`: Auto-detects language source — from Customer record if customer is assigned, otherwise from POS Store record
- `AssignLanguageCodeFromCustomer(var POSSale, Rec)` / `AssignLanguageCodeFromPOSStore(var POSSale, Rec)`: Uses field lookup via `SetLanguageCode` which traverses Rec to find the Language Code field dynamically. Fires `OnBeforeAssignLanguageCodeFrom`
- `AssignTranslationOnPOSSaleLines(POSSale)`: Iterates all item-type sale lines and calls `AssignTranslationOnPOSSaleLine`. Fires `OnBeforeChangeTranslationPerPOSSaleLine`
- `AssignTranslationOnPOSSaleLine(var POSSaleLine, POSSale)`: Dispatches to `GetItemTranslation` for Item lines, or fires `OnGetTranslation` for other types
- `GetItemTranslation(var POSSaleLine, POSSale)`: Reads standard BC "Item Translation" table by Item No., Variant Code, and Language Code. Updates Description and Description 2 (trimmed to field max length). Fires `OnAfterGetItemTranslation`
