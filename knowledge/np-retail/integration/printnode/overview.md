---
type: concept
tags: [np-retail, integration, printnode]
relates: [pos/pos-core/overview.md]
updated: 2026-05-09
---

# PrintNode — Overview

PrintNode cloud printing integration for NP Retail. Enables remote printing from Business Central to any printer connected via the PrintNode agent, supporting receipt printing, label printing, and document printing across POS and back-office scenarios.

## Purpose

- Cloud-based printer management via PrintNode API
- Print job submission to PrintNode-connected printers
- Printer discovery and registration in BC
- Printer status monitoring
- Configurable print settings per printer (copies, media size, orientation)

## Key Tables

| Table | Purpose |
|-------|---------|
| `PrintNodeSetup` | Global PrintNode integration configuration |
| `PrintNodePrinter` | Registered printer records |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `PrintNodeMgt` | Core management — printer discovery, job submission, status checks |
| `PrintNodeAPIMgt` | PrintNode REST API communication (HTTP requests, auth) |

## Pages

| Page | Purpose |
|------|---------|
| `PrintNodeSetup` | Integration setup card |
| `PrintNodePrinterList` | Registered printer list |
| `PrintNodePrinterSettings` | Per-printer settings (defaults, capabilities) |
