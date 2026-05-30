---
type: reference
tags: [np-retail, integration, printnode, tables, codeunits, pages]
relates: [integration/printnode/overview.md]
updated: 2026-05-09
---

# PrintNode — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `PrintNodeSetup` | Global config (API key, default printer, retry settings, timeout) |
| `PrintNodePrinter` | Printer record (Printer ID from PrintNode, Name, Description, Status, Capabilities) |

## Codeunits

| Codeunit | Purpose |
|----------|---------|
| `PrintNodeMgt` | Manages printer discovery (syncs printers from PrintNode cloud), submits print jobs (raw text, PDF, URL-based), monitors printer status |
| `PrintNodeAPIMgt` | Low-level API wrapper for PrintNode REST API. Handles authentication (API key header), HTTP requests (GET/POST/DELETE), response parsing (JSON), error handling |

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `PrintNodeSetup` | PrintNodeSetup | API key configuration, default printer selection |
| `PrintNodePrinterList` | PrintNodePrinter | List of printers synced from PrintNode |
| `PrintNodePrinterSettings` | PrintNodePrinter | Per-printer settings (default copies, paper size, orientation) |
