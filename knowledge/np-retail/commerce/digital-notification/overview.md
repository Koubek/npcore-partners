---
type: concept
tags: [np-retail, commerce, digital-notification]
relates: [pos/pos-core/overview.md, commerce/digital-receipt/overview.md]
updated: 2026-05-09
---

# Digital Notification — Overview

Asynchronous email notification delivery engine for NP Retail. Manages digital document notifications (order confirmations, receipts, etc.) sent to customers via email templates with retry logic, job queue scheduling, and error tracking.

## Purpose

- Queue-based notification delivery with retry (configurable max attempts)
- Email template integration via `NPR NP Email` codeunit
- Recurring job queue processor (1-minute interval)
- Error tracking per notification entry
- Filter support to exclude specific document types (e.g., Ecom Sales Document)

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR Digital Notification Setup` | Global configuration (enabled, max attempts) |
| `NPR Digital Notification Entry` | Individual notification queue entries |
| `DigitalDocHeaderBuffer` | Document header buffer for notification processing |
| `DigitalDocLineBuffer` | Document line buffer for notification processing |

## Key Codeunits

| Codeunit | ID | Purpose |
|----------|----|---------|
| `NPR Digital Notification Send` | 6150963 | Queue processor — sends pending notifications, manages retry |
| `DigitalOrderNotifMgt` | — | Order notification management |

## Enums

| Enum | Purpose |
|------|---------|
| `NPR Digital Document Type` | Document type classification for notifications |
