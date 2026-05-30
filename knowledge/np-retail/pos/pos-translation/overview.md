---
type: concept
tags: [np-retail, pos, translation, pos-translation]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-action/overview.md
updated: 2026-05-09
---

# POS Translation Module

The POS Translation module handles multi-language item description translation on POS sale lines. When a customer's preferred language differs from the default item description language, this module automatically translates item descriptions on the active sale based on the customer or store language code.

## Architecture

Translation assignment is triggered when a customer is selected on a POS sale or when the language code is explicitly set via a POS action. The `"NPR POS Sale Translation"` codeunit (6014679) orchestrates the flow:

### Language Code Assignment Flow

```
Customer selection → AssignLanguageCodeFrom(POSSale, Rec)
  → AssignLanguageCodeFromCustomer (if customer exists)
    → Reads Customer."Language Code" field
  → AssignLanguageCodeFromPOSStore (if walk-in customer)
    → Reads POS Store."Language Code" field

POS Action → AssignLanguageCodeFromPOSAction(POSSale, LanguageCode)
  → Direct assignment from action parameter
```

After language code is set, `AssignTranslationOnPOSSaleLines` iterates all item sale lines and calls `AssignTranslationOnPOSSaleLine`:

```
For each Item sale line:
  → GetItemTranslation(POSSaleLine, POSSale)
    → Reads "Item Translation" table by Item No. + Variant Code + Language Code
    → Updates Description and Description 2 on the sale line
```

### Integration Events

- `OnBeforeChangeTranslationPerPOSSaleLine` — Before iterating sale lines
- `OnGetTranslation` — For non-item line types (blanket, comment, etc.)
- `OnAfterGetItemTranslation` — After item translation is applied
- `OnBeforeAssignLanguageCodeFrom` — Before resolving the language source field

## Dependencies

- **POS Core** — POSSale, POSSaleLine lifecycle
- **POS Action** — Language code assignment via frontend actions
- **Item Translation** — Standard BC item translation table

## Extension Points

Partners can extend translation behavior by:
1. Subscribing to `OnGetTranslation` for non-item line translations
2. Subscribing to `OnAfterGetItemTranslation` to modify or enrich translated data
3. Subscribing to `OnBeforeAssignLanguageCodeFrom` to customize language code resolution
