---
type: concept
tags: [np-retail, pos, mpos]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/mobile-emergency-pos/overview.md
updated: 2026-05-09
---

# MPOS Module

The MPOS module provides mobile point-of-sale capabilities for NP Retail. It includes helper functions for the mobile frontend, QR code-based workflows, admission ticket scanning, receipt management, and payment integration configuration.

## Architecture

MPOS extends the Dragonglass POS framework for mobile devices (tablets, phones). It uses `POS Type` on the POS Unit to identify mobile devices and provides dedicated backend code for mobile-specific workflows.

### Core Components

- **MPOS Helper Functions** (6059984) — Utility codeunit for mobile session info retrieval:
  - `GetUsername()` / `GetDatabaseName()` / `GetTenantID()` — Session metadata for mobile app context
  - `BuildJSONParams(RequestMethod, BaseAddress, Endpoint, PrintJob, RequestType, ErrorCaption)` — Builds standardized JSON parameter objects for print/API requests

- **MPOS QR Code** — QR code generation and scanning workflow:
  - `"NPR MPOS QR Code"` table — Individual QR code records
  - `"NPR MPOS QR Codes"` table — QR code batch/grouping
  - Pages: QRCode, QRCodeList, QRCodeFactBox

- **MPOS Payment Integration** — Configures payment methods for mobile:
  - `"NPR MPOS Payment Integration"` enum — Available payment integration types
  - `"NPR MPOS Scanner Type"` enum — Scanner hardware types (camera, Bluetooth, etc.)

- **MPOS Profile** (obsoleted, removed 2023-06-28) — Previously stored ticket admission web URLs. Moved to TM Ticket Setup; POS type identification now via POS Unit's POS Type field.

### Sub-systems

- **DataView** — Mobile-specific data display/presentation layer
- **Dragonglass Mobile Backend** — Backend services for the mobile Dragonglass frontend
- **PosActions** — Mobile-specific action definitions for the frontend

### MPOS Admission API

The `"NPR MPOS Admission API"` codeunit handles ticket/scanner admission integration for events and venues.

### End-of-Day Receipts

`"NPR MPOS EOD Receipts"` table and page manage end-of-day receipt printing from mobile devices.

## Dependencies

- **POS Core** — POS Unit identification, session management
- **POS Payment** — Payment processing integration

## Extension Points

Partners can extend MPOS by:
1. Adding values to the `"NPR MPOS Payment Integration"` enum for new payment providers
2. Adding values to the `"NPR MPOS Scanner Type"` enum for new scanner hardware
