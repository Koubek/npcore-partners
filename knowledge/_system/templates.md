---
type: reference
tags: [_system, templates, sections]
relates: [_system/frontmatter-schema.md, _system/conventions.md]
updated: 2026-05-09
---

# Templates

Every content file follows the section ordering convention below. Any section is optional. New sections slot in by zone.

## Section Order

| Order | Zone | Possible Section Headers |
|-------|------|--------------------------|
| 1 | IDENTITY | Frontmatter only (extensible metadata) |
| 2 | CORE | `## Overview`, `## How it works` |
| 3 | INTERFACE | `## API`, `## Signatures`, `## Parameters`, `## Configuration` |
| 4 | BEHAVIOR | `## Limits`, `## Edge Cases`, `## Performance`, `## Security`, `## Errors`, `## Pricing` |
| 5 | USAGE | `## Example`, `## Steps`, `## Patterns` |
| 6 | CONTEXT | `## When to use`, `## Comparison`, `## Migration` |
| 7 | RELATIONS | `## Relates` |

## Template Types

| Type | Purpose | Typical Sections |
|------|---------|-----------------|
| `reference` | API signatures, limits, exact values | Overview, API, Parameters, Limits, Edge Cases, Relates |
| `concept` | What something is, how it works | Overview, How it works, Key Properties, When (not) to use, Relates |
| `pattern` | Accomplish a task with code | Context, Solution, Explanation, Variants, Relates |
| `guide` | Step-by-step multi-step process | Prerequisites, Steps, Verification, Troubleshooting, Relates |
| `comparison` | X vs Y tradeoffs | Table, When X, When Y, Migration, Relates |
