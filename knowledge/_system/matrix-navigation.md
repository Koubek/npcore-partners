---
type: concept
tags: [_system, navigation, index]
relates: [_system/conventions.md]
updated: 2026-05-09
---

# Matrix Navigation

## How LLMs Discover Files

Every `00-INDEX.md` contains a tag-presence matrix. The LLM scans it by tag intersection:

```
Task tags: [workers, limits, pricing]

Workers 00-INDEX.md matrix:

File            | workers | runtime | limits | env | kv | pricing
----------------|---------|---------|--------|-----|-----|--------
runtime.md      |    ✓    |    ✓    |        |     |     |
limits.md       |    ✓    |         |   ✓    |     |     |    ✓   ← HIT
env-bindings.md |    ✓    |         |        |  ✓  |     |
```

The file `limits.md` hits all three task tags → read this file first.

## Performance at Scale

The scan is O(tags × files) at the current directory level. With 50 files and 6 tags = 300 cells to visually scan. The matrix is always at the top of the index, immediately after the heading — no scrolling.

## No-Match Strategy

If no file matches all tags, the LLM picks the file with the most tag intersections. If that still misses, fall back to reading the index's file descriptions and then specific files.
