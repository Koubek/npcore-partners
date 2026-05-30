---
type: reference
tags: [np-retail, infrastructure, json]
relates: [np-retail/infrastructure/json/overview.md]
updated: 2026-05-09
---

# JSON Module — API Reference

## Codeunits

| ID | Name | Caption | Access | Key Procedures | Description |
|----|------|---------|--------|---------------|-------------|
| 6184982 | "NPR Json Builder" | NPR Json Builder | **Public** | Initialize, StartObject, EndObject, StartArray, EndArray, AddProperty (10 overloads), AddValue (8 overloads), AddProperties (2 overloads), AddNestedObject, AddObject, AddArray, Build, BuildAsArray, BuildAsJsonToken, BuildAsText, IsInitialized, InitRecord | Fluent JSON document builder with stack-based nesting. Requires BC18+ |
| 6059994 | "NPR Json Helper" | NPR Json Helper | **Public** | GetJText (6 overloads), GetJCode (2 overloads), GetJDT (2 overloads), GetJDate, GetJDecimal, GetJInteger (4 overloads), GetJBigInteger, GetJBoolean, GetJsonToken (2 overloads), TokenExists, RecordToJson (2 overloads), FieldToJsonValue | Type-safe JSON value extraction and record-to-JSON conversion |
| 6150648 | "NPR Json Parser" | NPR JSON Parser | **Public** | Parse, Load, EnterObject, TryEnterObject, ExitObject, EnterArray, TryEnterArray, ExitArray, GetProperty (16 overloads), GetValues (2 overloads) | JSON structure navigator with fluent enter/exit pattern. Requires BC18+ |

## Key Procedures Detail

### NPR Json Builder (6184982)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `Initialize` | — | Codeunit | Must be called first. Returns self for chaining |
| `StartObject` | — | Codeunit | Starts unnamed object (top-level or in array) |
| `StartObject` | PropertyName (Text) | Codeunit | Starts named object property |
| `EndObject` | — | Codeunit | Closes current object, pops parent from stack |
| `StartArray` | — | Codeunit | Starts unnamed array |
| `StartArray` | PropertyName (Text) | Codeunit | Starts named array property |
| `EndArray` | — | Codeunit | Closes current array, pops parent from stack |
| `AddProperty` (10 overloads) | PropertyName + value | Codeunit | Adds named property. Types: Boolean, Integer, Decimal, Text, Date, Time, DateTime, JsonObject, JsonValue, null |
| `AddValue` (8 overloads) | value | Codeunit | Adds value to current array. Types: Boolean, Integer, Decimal, Text, Date, Time, DateTime, JsonValue, null |
| `AddNestedObject` | PropertyName, JsonBuilder | Codeunit | Adds a pre-built JsonObject as a nested property |
| `Build` | — | JsonObject | Returns the constructed JSON as JsonObject |
| `BuildAsText` | — | Text | Returns the constructed JSON as formatted text string |
| `IsInitialized` | — | Boolean | Returns true if builder has been initialized with a root token |
| `InitRecord` | var Record, InitPrimaryKey (Boolean) | Codeunit | Initializes a record variable for use within the builder |

### NPR Json Helper (6059994)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `GetJText` | Token, Path, [MaxLength], [TestMaxLength], Required, [DefaultValue] | Text | Extracts text value. Supports truncation (CopyStr) or validation (TestMaxValueLength) modes |
| `GetJCode` | Token, Path, [MaxLength], Required | Text | Extracts and upper-cases code value |
| `GetJDT` | Token, Path, Required, [DefaultValue] | DateTime | Extracts DateTime. Handles ISO 8601 string format with timezone offset |
| `GetJDate` | Token, Path, Required | Date | Extracts Date from ISO 8601 date string |
| `GetJDecimal` | Token, Path, Required | Decimal | Extracts decimal value |
| `GetJInteger` | Token, Path, Required, [DefaultValue], [AllowZero] | Integer | Extracts integer value |
| `GetJBoolean` | Token, Path, Required | Boolean | Extracts boolean (supports "1"/"0" string format) |
| `GetJsonToken` | Token, TokenKey | JsonToken | Selects token by JSON path (errors if not found) |
| `RecordToJson` | TableNo (Integer), RecordPosition (Text) | JsonObject | Converts a BC record to JSON by table number and position string |
| `RecordToJson` | RecRelatedVariant (Variant) | JsonObject | Converts a BC record to JSON — includes id, name, company, position, recordId, and all field values |

### NPR JSON Parser (6150648)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `Parse` | JsonText (Text) | Codeunit | Initializes parser from JSON text |
| `Load` | JsonObj (JsonObject) | Codeunit | Initializes parser from existing JsonObject |
| `EnterObject` | PropertyName | Codeunit | Navigates into named object property. Errors if not found |
| `TryEnterObject` | PropertyName | Boolean | Returns false instead of erroring |
| `ExitObject` | — | Codeunit | Returns to parent level |
| `EnterArray` | PropertyName | Codeunit | Navigates into named array property |
| `TryEnterArray` | PropertyName | Boolean | Returns false instead of erroring |
| `ExitArray` | — | Codeunit | Returns to parent level |
| `GetProperty` (Text) | PropertyName, var Value (Text), [var HasProperty] | Codeunit | Extracts property as text |
| `GetProperty` (Integer) | PropertyName, var Value (Integer), [var HasProperty] | Codeunit | Extracts property as integer |
| `GetProperty` (Boolean) | PropertyName, var Value (Boolean), [var HasProperty] | Codeunit | Extracts property as boolean |
| `GetProperty` (List) | PropertyName, var Value (List of [Text]), [var HasProperty] | Codeunit | Extracts array property as list |
| `GetProperty` (Dict) | PropertyName, var Value (Dictionary of [Text, Text]), [var HasProperty] | Codeunit | Extracts object property as dictionary |
| `GetValues` | var ValueList (List of [JsonValue]) | Codeunit | Extracts all array element values |
| `GetValues` | var ObjectList (List of [JsonObject]) | Codeunit | Extracts all array element objects |
