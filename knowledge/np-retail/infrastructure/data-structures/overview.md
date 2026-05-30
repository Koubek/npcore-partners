---
type: concept
tags: [np-retail, infrastructure, data-structures]
relates: []
updated: 2026-05-09
---

# Data Structures Module

The Data Structures module provides foundational collection types that are missing from Business Central's AL language, implemented as codeunit wrappers around native .NET collection types. Currently provides a HashSet and a Stack specialized for Integer values.

## Purpose

- **HashSet of Integer** — O(1) lookup/insert/delete for integer sets, using AL's `Dictionary of [Integer, Boolean]` as backing store (boolean value is dummy, only keys matter)
- **Stack of Integer** — LIFO (last-in-first-out) collection, backed by AL's `List of [Integer]`, with Push/Pop/Peek operations and error handling for empty stack

## Design

Both data structures are minimal wrappers that adapt .NET collections to AL conventions:

| Collection | Backing Store | Operations | Error Handling |
|-----------|---------------|------------|----------------|
| HashSet | `Dictionary[Integer, Boolean]` | Add, Contains, Count, Remove, RemoveAll | No errors (Dictionary handles duplicates) |
| Stack | `List[Integer]` | Push, Pop, Peek, Contains, Count | Error on Pop/Peek from empty stack |

## Usage

These are used internally by NP Retail modules that need efficient integer set operations or stack-based processing. The choice of `Dictionary[K, V]` for HashSet (using Boolean as dummy) is intentional — `Dictionary.ContainsKey` provides O(1) lookup, while `List.Contains` is O(n).
