---
type: reference
tags: [np-retail, infrastructure, data-structures]
relates: [np-retail/infrastructure/data-structures/overview.md]
updated: 2026-05-09
---

# Data Structures — API Reference

## Codeunits

| ID | Name | Caption | Key Procedures | Backing Store | Description |
|----|------|---------|---------------|---------------|-------------|
| 6059769 | "NPR HashSet of [Integer]" | NPR HashSet of [Integer] | Add, Contains, Count, Remove, RemoveAll | `Dictionary of [Integer, Boolean]` | O(1) hash set for integers. Add is idempotent (errors on duplicate key from Dictionary). RemoveAll clears backing dictionary |
| 6150898 | "NPR Stack of [Integer]" | NPR Stack of [Integer] | Contains, Count, Push, Pop, Peek | `List of [Integer]` | LIFO stack for integers. Pop/Peek error on empty stack with specific error messages. Push appends to end of list |

## Key Procedures Detail

### NPR HashSet of [Integer] (6059769)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `Add` | Value (Integer) | — | Inserts value. Errors if value already exists (Dictionary.Add behavior) |
| `Contains` | Value (Integer) | Boolean | O(1) check for membership |
| `Count` | — | Integer | Returns number of elements |
| `Remove` | Value (Integer) | Boolean | Removes value. Returns false if not found |
| `RemoveAll` | — | — | Clears all elements |

### NPR Stack of [Integer] (6150898)

| Procedure | Parameters | Returns | Description |
|-----------|------------|---------|-------------|
| `Contains` | Value (Integer) | Boolean | O(n) linear search |
| `Count` | — | Integer | Returns number of elements |
| `Push` | Value (Integer) | — | Pushes value onto stack |
| `Pop` | — | Integer | Removes and returns top element. Errors if empty: `Cannot pop a value from an empty stack.` |
| `Peek` | — | Integer | Returns top element without removing. Errors if empty: `Cannot peek into an empty stack.` |
