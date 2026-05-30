---
type: concept
tags: [np-retail, infrastructure, json]
relates: [np-retail/infrastructure/endpoint/overview.md, np-retail/infrastructure/azure-function-management/overview.md]
updated: 2026-05-09
---

# JSON Module

The JSON module provides a comprehensive JSON processing toolkit for NP Retail, consisting of three public codeunits: a fluent JSON Builder for constructing JSON documents, a JSON Helper for extracting typed values from JSON tokens, and a JSON Parser for navigating complex JSON structures.

## Codeunits Overview

| Codeunit | ID | Purpose |
|----------|----|---------|
| NPR Json Builder | 6184982 | Fluent interface for building JSON objects/arrays with sequential method chaining |
| NPR Json Helper | 6059994 | Type-safe extraction of values from JsonToken at a given JSON Path |
| NPR Json Parser | 6150648 | Navigator/reader for exploring JSON structures by entering/leaving objects and arrays |

## Json Builder (6184982)

Provides a fluent interface for constructing JSON documents. Uses a stack-based approach to track nesting of objects and arrays.

**Pattern:**
```
builder.Initialize()
  .StartObject()
    .AddProperty('name', 'John')
    .AddProperty('age', 30)
    .StartObject('address')
      .AddProperty('street', '123 Main St')
    .EndObject()
    .StartArray('tags')
      .AddValue('vip')
      .AddValue('active')
    .EndArray()
  .EndObject()
  .BuildAsText()
```

**Key features:**
- Fluent interface — each method returns the codeunit for chaining
- Supports all AL types: Boolean, Integer, Decimal, Text, Date, Time, DateTime, JsonObject, JsonValue, null
- Nested object/array composition via `AddNestedObject` and `AddObject`/`AddArray` bypass methods
- Dictionary-based property addition (`AddProperties` with `Dictionary[Text, Text]` or `Dictionary[Text, JsonValue]`)
- Record initialization support
- Output as JsonObject, JsonArray, JsonToken, or Text
- Requires BC18+ (guarded with `#if not BC17`)

## Json Helper (6059994)

Provides type-safe extraction of values from JSON tokens using JSON Path expressions. Used extensively across NP Retail for parsing API responses, webhook payloads, and configuration JSON.

**Pattern:**
```
JsonHelper.GetJText(token, '$.address.street', 100, false, 'default street')
JsonHelper.GetJInteger(token, '$.count', true)  // Required — errors if missing
JsonHelper.GetJBoolean(token, '$.active', false) // Optional — returns false if missing
```

**Key features:**
- Typed getters: `GetJText`, `GetJCode`, `GetJDT` (DateTime), `GetJDate`, `GetJDecimal`, `GetJInteger`, `GetJBigInteger`, `GetJBoolean`
- Optional `MaxLength` parameter with `TestMaxLength` validation mode (errors if value exceeds limit)
- Required vs. Optional mode — required missing values throw descriptive errors with absolute JSON Path
- `RecordToJson` — converts any BC record to a structured JSON object with metadata (id, name, company, position, recordId) and all field values typed
- `FieldToJsonValue` — handles all AL field types: Boolean, Integer, Decimal, Date, Time, DateTime, Duration, BigInteger, Guid, Media/MediaSet (base64), and fallback to formatted text

## Json Parser (6150648)

Provides a navigator for exploring complex JSON structures by sequentially entering/leaving objects and arrays. Supports multi-level navigation with a stack-based approach.

**Pattern:**
```
parser.Parse(jsonText)
  .EnterObject('order')
    .EnterObject('customer')
      .GetProperty('name', customerName)
    .ExitObject()
    .EnterArray('items')
      // iterate items
    .ExitArray()
  .ExitObject()
```

**Key features:**
- `Parse(Text)` / `Load(JsonObject)` — initialize parser from text or existing JsonObject
- `EnterObject` / `TryEnterObject` — navigate into a named object property
- `EnterArray` / `TryEnterArray` — navigate into a named array property
- `ExitObject` / `ExitArray` — return to parent level
- `GetProperty` overloads: Text, Integer, BigInteger, Boolean, Decimal, Guid, DateTime, List of Text, Dictionary of [Text, Text]
- `GetValues` — extract all values from current array as List of JsonValue or List of JsonObject
- Requires BC18+ (guarded with `#if not BC17`)
