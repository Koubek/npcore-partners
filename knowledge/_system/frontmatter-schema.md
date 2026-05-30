---
type: reference
tags: [_system, frontmatter, metadata]
relates: [_system/templates.md, _system/conventions.md]
updated: 2026-05-09
---

# Frontmatter Schema

Every file in `knowledge/` starts with YAML frontmatter between `---` delimiters.

## Required Keys

| Key | Type | Description | Example |
|-----|------|-------------|---------|
| `type` | string | One of: reference, concept, pattern, guide, comparison | `reference` |
| `tags` | array[string] | Kebab-case tags for matrix navigation | `[workers, runtime, limits]` |
| `relates` | array[string] | Paths to related files (relative to `knowledge/` root) | `[workers/env-bindings.md]` |
| `updated` | date | Last content update | `2026-05-09` |

## Optional Keys

| Key | Type | Description | Example |
|-----|------|-------------|---------|
| `sources` | array[string] | URLs for source material | `[https://developers.cloudflare.com/...]` |
| `deprecated` | boolean | Whether this knowledge is deprecated | `false` |
| `since` | string | Version or date when this became relevant | `"2024-04"` |
| `min_plan` | string | Minimum plan required (for pricing) | `paid` |

## Extensibility

Add any new key-value pairs below the known keys. The LLM reads frontmatter as structured data — new keys are just new properties.
