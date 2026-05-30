---
type: guide
tags: [np-retail, workflow, development, bcdev]
relates: [np-retail/conventions.md]
updated: 2026-05-09
sources:
  - https://github.com/navipartner/npcore-partners/blob/master/CLAUDE.md
  - https://github.com/navipartner/npcore-partners/blob/master/CLOUD_AGENTS.md
---

## Prerequisites

- bcdev CLI (`~/claude_plugin_marketplace/bcdev-cli/bin/bcdev-ensure`)
- AL ID Manager API (for acquiring new object/field IDs)
- Crane container (provision via SOAP API)
- VSCode with NP Retail Workflow Language extension (for POS actions)

## Local Dev Setup

1. **Get a BC container:** Use Crane SOAP API with `CLOUD-CORE` template. Wait 35 minutes after creation (demo data import).
2. **Set app.json version:** Update `platform`, `application`, `runtime`, `preprocessorSymbols` to match container's BC version. Save backup as `app.json.orig`. Do not commit.
3. **Set `preprocessorSymbols`:** Only the target version e.g. `["BC27", "BC2700"]`.
4. **Download symbols:** `bcdev ensure`
5. **Create `launch.json`:** At `Application/.vscode/launch.json` and `Test/.vscode/launch.json` (gitignored). Use Crane URL, port 443, `serverInstance: "BC"`, `authentication: "UserPassword"`.
6. **Linux symlink (if on Linux):** `cd Application/src && ln -sf _ControlAddIns _ControlAddins`

## Compile & Test

- Compile with `-suppressWarnings` unless investigating
- Run tests from the `Test/` app
- For POS testing: append `?page=6150750` to the BC URL

## ID Management

- Use `/al-id-manager` skill to get next ID for:
  - New objects (tables, codeunits, pages, enums, etc.)
  - Table/tableextension fields
  - Enum/enumextension values
- ID ranges in app.json: 6014400–6014699, 6059767–6060166, 6150613–6151612, 6184471–6185130, 6248181–6249170

## CI/CD

- Weekly release every Sunday (master → release tag)
- Fern API documentation repo: github.com/navipartner/documentation
- NuGet feed for partners: docs.navipartner.com/docs/partner/artifact_feeds/ (requires access)

## Container Lifecycle

- **Create:** SOAP `CreateCursorContainer` with `CLOUD-CORE` template → 35 min wait
- **Start stopped container:** SOAP `StartContainer` (no wait needed)
- **Stop when done:** SOAP `StopContainer`
- API endpoint: `https://api.navipartner.dk/npcase/crane/api/v1/`
- Auth: `Ocp-Apim-Subscription-Key` header with `crane_key` env var
