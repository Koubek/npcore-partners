---
type: reference
tags: [np-retail, commerce, digital-notification, tables, codeunits, pages, enums]
relates: [commerce/digital-notification/overview.md]
updated: 2026-05-09
---

# Digital Notification — API Reference

## Tables

### "NPR Digital Notification Setup"

Fields: `Enabled`, `Max Attempts` (0=unlimited).

### "NPR Digital Notification Entry"

Fields: `Entry No.`, `Sent` (Boolean), `Attempt Count`, `Sent Date-Time`, `Email Template Id`, `Recipient E-mail`, `Language Code`, `Document Type`, `Error Message`.

## Enums

### "NPR Digital Document Type"

Values: `Ecom Sales Document`, (additional retail document types).

## Codeunits

### Codeunit 6150963 "NPR Digital Notification Send" (Internal, BC22+)

Key procedures:

- `SendNotifications()` — filters pending entries and sends each via `NPR NP Email`
- `SendNotification(var NotifEntry): Boolean` — send single notification
- `SendNotification(var NotifEntry, var AlreadySent): Boolean` — send with duplicate detection using UPDLOCK isolation
- `SetJobQueueEntry(Create)` — create or cancel recurring job queue entry (1-min interval)
- `ResetAttemptCount(var NotifEntry)` — reset sent status, attempt count, and error message
- `FilterNotificationsToSend(var NotifEntry)` — filter unsent, non-Ecom entries with max attempts

**Event Subscriber:**
- `Codeunit NPR Job Queue Management - OnRefreshNPRJobQueueList` — auto-refreshes job queue when setup is enabled

### Codeunit "DigitalOrderNotifMgt"

Manages order notification lifecycle (creation of notification entries from document events).

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `DigitalNotificationSetup` | NPR Digital Notification Setup | Enable/disable, max attempts configuration |
| `DigitalNotifEntries` | NPR Digital Notification Entry | Notification queue list with status |

## Job Queue

Recurring job entry: Object Type=Codeunit, Object ID=6150963, interval=1 minute. Description: "Digital Order Notifications Processor".
