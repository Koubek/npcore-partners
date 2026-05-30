---
type: concept
tags: [np-retail, accounts, gdpr]
relates: [accounts/member-module/overview.md]
updated: 2026-05-09
---

# GDPR — Overview

GDPR compliance management for NP Retail. Provides customer data anonymization, consent tracking, agreement management with versioning, anonymization request handling, and audit logging for GDPR-related data processing activities.

## Purpose

- Customer data anonymization workflows
- GDPR consent management with agreement versioning
- Anonymization request tracking and processing
- GDPR setup and configuration
- Consent audit log for compliance reporting
- Customer anonymization queue management

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR GDPR Setup` | Global GDPR configuration |
| `NPR GDPR Agreement` | GDPR agreement definitions |
| `NPR GDPR Agreement Version` | Versioned agreement content |
| `NPR GDPR Consent Log` | Consent grant/revoke audit log |
| `NPR GDPR Anonymization Request` | Data anonymization requests |
| `NPR Customer to Anonymize` | Customer anonymization queue |
| `NPR Customer GDPR Log Entries` | Customer GDPR activity log |
| `NPR Customer GDPR Setup` | Per-customer GDPR configuration |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NPR GDPR Management` | GDPR core logic — anonymization, consent, data requests |
| `NPR GDPR Management (Member)` | Member-specific GDPR processing |
