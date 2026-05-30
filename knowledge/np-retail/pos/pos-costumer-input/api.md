---
type: reference
tags: [np-retail, pos, costumer-input, pos-costumer-input]
relates:
  - np-retail/pos/pos-costumer-input/overview.md
updated: 2026-05-09
---

# POS Costumer Input Module — API Reference

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6014519 | "NPR POS Costumer Input Context" | NPR POS Costumer Input Context | MONEY_BACK(0), RETURN_INFORMATION(1), SALES_CARDHOLDER_VERIFICATION(2), ACQUIRE_SIGNATURE(3) | Defines the scenario for customer data collection. Non-extensible |
| 6014561 | "NPR Information Collected" | NPR Information Collected | Signature(0), "Phone No."(1), "E-Mail"(2) | Identifies the type of information collected. Non-extensible |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6059810 | "NPR POS Costumer Input" | POS Costumer Input | PK: POS Entry No. Others: Context (Enum), Signature (BLOB), Phone Number (Text[50]), Date & Time (DateTime), E-Mail (Text[50]) | Original combined input table. Obsolete (Pending, 2025-06-15) — replaced by new entry-based model |
| 6151193 | "NPR POS Customer Input Entry" | Customer Input Entry | PK: Entry No. (Integer, AutoIncrement, Clustered). Others: POS Entry No. (TableRelation = NPR POS Entry), Date & Time (DateTime), Signature (BLOB), Context (Enum), Information Collected (Enum), Information Value (Text[80]), Information Context (Text[250]) | New flexible entry model. Each record captures single input event. Methods: ReadSignatureData(): Text, WriteSignatureData(SignatureText) |

### Table Details

**6151193 "NPR POS Customer Input Entry"** — The current input storage:
- `ReadSignatureData()`: Creates an InStream from the Signature BLOB and reads it as text (JSON format: array of stroke arrays)
- `WriteSignatureData(SignatureText)`: Creates an OutStream on the Signature BLOB and writes the JSON text

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR POS Costumer Input" | POS Costumer Input | "NPR POS Costumer Input" | (Obsolete) Input collection page |
| *(unknown)* | "NPR POS Costumer Input List" | POS Costumer Input List | "NPR POS Costumer Input" | (Obsolete) Input list |
| *(unknown)* | "NPR POS Customer Input Entries" | Customer Input Entries | "NPR POS Customer Input Entry" | New input entry drill-down |
| *(unknown)* | "SignatureViewer" | Signature Viewer | — | Page for viewing captured signature images |
