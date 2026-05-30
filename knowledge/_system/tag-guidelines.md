---
type: guide
tags: [_system, tags, naming]
relates: [_system/conventions.md, _system/frontmatter-schema.md]
updated: 2026-05-09
---

# Tag Guidelines

## Rules

1. **kebab-case only.** `durable-objects` not `Durable Objects` or `durable_objects`.
2. **One domain tag per file.** The domain is always the first tag (e.g., `cloudflare`, `react-shadcn`).
3. **Prefer existing tags** from the domain's index matrix. Adding a new tag requires updating `_tags.md`.
4. **~3-6 tags per file.** Enough for precision, few enough for matrix readability.
5. **Tag = search term.** If someone searching for "limits" or "pricing" should find this file, include those tags.

## Tag Categories

| Category | Examples | Always Included? |
|----------|----------|------------------|
| Domain | `cloudflare`, `react-shadcn` | Yes |
| Topic | `workers`, `d1`, `react-19` | Yes |
| Subtopic | `runtime`, `limits`, `hooks` | As needed |
| Cross-cut | `pricing`, `migration`, `security` | If applicable |
| Template type | `reference`, `pattern`, etc. | No (frontmatter has `type`) |
