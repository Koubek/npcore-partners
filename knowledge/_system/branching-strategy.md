---
type: pattern
tags: [_system, splitting, atomicity]
relates: [_system/conventions.md, _system/templates.md]
updated: 2026-05-09
---

# Branching Strategy: When to Split Files

## Trigger Conditions

A file should be split when:
- Any `##` section exceeds ~50 lines
- A section covers a distinct subtopic with its own tag set
- The file has 5+ `##` sections and is still growing

## Split Process

1. Create `<topic>/<subtopic>.md` in the same directory
2. Replace the expanded section in the parent with: `## Limits → see limits.md`
3. Add the new file row to the directory's `00-INDEX.md` tag matrix
4. Set `relates: [parent.md]` in the child's frontmatter

## Example

```
Before                          After
workers/runtime.md (120 lines)  workers/runtime.md (35 lines)
                                workers/runtime/limits.md (reference)
                                workers/runtime/memory.md (concept)
                                workers/runtime/env-bindings.md (reference)
```

## Don't Split

- If the content is tightly coupled (removing it makes the parent incoherent)
- If the file is read as a single conceptual unit (e.g., a pattern with its code)
- Prematurely — wait for the trigger condition
