---
type: reference
tags: [np-retail, conventions, naming, rules]
relates: [np-retail/workflow.md]
updated: 2026-05-09
sources:
  - https://github.com/navipartner/npcore-partners/blob/master/CLAUDE.md
---

## Overview

Coding conventions extracted from the repo's CLAUDE.md and codebase patterns. These are enforced by convention (not tooling) and must be followed when contributing.

## Variable Naming

| Scope | Convention | Example | Rule |
|-------|-----------|---------|------|
| Global (codeunit/table/page-level ar) | Underscore prefix | _Item, _POSUnit | Readers know it's codeunit-lived state |
| Locals, parameters, return vars | No underscore | Item, POSUnit | Anything with underscore in local scope is a bug |
| Parameter colliding with local | Postfix Param | VATBusPostingGroupParam | Keep local clean, distinguish at call site |

## Public Object Convention

- Public objects go inside a _public/ subfolder within their module
- This signals intentional visibility (default is Access = Internal)
- Example: Application/src/Sentry/_public/Sentry.Codeunit.al

## Error Handling

- User-facing errors: use Label declarations (translatable)
- Inject TableCaption/FieldCaption dynamically (never hardcode English)
- Sentry errors: use Sentry.AddLastErrorIfProgrammingBug()
- Guaranteed developer attention: append "This is a programming bug" to error text
- Never log API request/response bodies to blob/media fields (slow in BC SaaS; Cloudflare already captures these)

## Version-Specific Code

- Use preprocessor symbols: BC17, BC1700 ... BC27, BC2700
- Define **only** the target version when compiling locally (not all versions)
- #if BC17 or BC18 means "only for those versions" — defining BC17 when targeting BC27 would incorrectly include OnPrem-only code

## Dependency Injection for Testability

- Pass records by reference (ar) in all internal functions
- This allows tests to inject temporary-record mocks (skip DB)
- Design new modules with interface-implementation mocks from the start

## Commit Rules

- Never commit pp.json changes (pipeline manages this)
- Place LLM-generated plan .md files in .plans/yyyy-mm-dd-username-plan-headline.md
- Update Fern API docs in 
avipartner/documentation when changing AL APIs
- All changes must be compatible with BC SaaS (	arget: "Cloud" for BC > 20)

## Build Compatibility

- app.json targets BC17 (oldest supported)
- CI loops through BC17 → BC27 (latest SaaS)
- Runtime formula: untime = BC_version - 11 (BC27 → runtime 16.0)
- Suppress warnings in compilation unless investigating
