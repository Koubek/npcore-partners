---
type: concept
tags: [np-retail, accounts, billing]
relates: [accounts/accounts/overview.md]
updated: 2026-05-09
---

# Billing — Overview

Event-driven billing system for NP Retail. Tracks billable events and sends them to an external billing service for invoice generation. Supports both on-prem and cloud billing integration with configurable event types and queue-based processing.

## Purpose

- Billable event tracking and queuing
- Event-driven billing data collection
- External billing service integration (REST API)
- Job-queue-based data sender for reliable delivery
- Data integrity validation before sending

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR Billing Event` | Billable event queue entries |
| `NPR Billing Queue` | Billing queue status tracking |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `EventBillingClient` | Billing service REST API client |
| `BillingDataSenderJQ` | Job queue data sender for batch billing |
| `BillingDataCheck` | Billing data validation and integrity check |

## Enums

| Enum | Purpose |
|------|---------|
| `BillingEventType` | Types of billable events |
| `BillingQueueStatus` | Queue processing status values |

## Subfolders

| Path | Contents |
|------|----------|
| `Data/` | Billing data definitions and schemas |
| `Events/` | Billing event definitions |
