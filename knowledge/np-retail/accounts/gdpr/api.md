---
type: reference
tags: [np-retail, accounts, gdpr, tables, codeunits, pages]
relates: [accounts/gdpr/overview.md]
updated: 2026-05-09
---

# GDPR — API Reference

## Tables

| Table | Purpose |
|-------|---------|
| `NPR GDPR Setup` | Global config — retention period, anonymization schedule, default agreement |
| `NPR GDPR Agreement` | Agreement header — `Code`, `Description`, `Effective Date` |
| `NPR GDPR Agreement Version` | Versioned content — `Agreement Code`, `Version No.`, `Content`, `Effective Date` |
| `NPR GDPR Consent Log` | Audit trail — `Contact/Customer No.`, `Agreement Code`, `Version No.`, `Consent Granted`, `Date/Time`, `User ID` |
| `NPR GDPR Anonymization Request` | Anonymization request tracking — `Status`, `Request Date`, `Completed Date`, `Customer No.` |
| `NPR Customer to Anonymize` | Anonymization queue — customers pending anonymization |
| `NPR Customer GDPR Log Entries` | Per-customer GDPR activity log |
| `NPR Customer GDPR Setup` | Per-customer GDPR preferences and status |

## Codeunits

### "NPR GDPR Management"

Core GDPR management codeunit. Key procedures:

- `AnonymizeCustomer(CustomerNo)` — anonymizes customer personal data
- `ProcessAnonymizationQueue()` — batch process pending anonymization requests
- `LogConsent(CustomerNo, AgreementCode, VersionNo, Granted)` — records consent action
- `CheckConsent(CustomerNo, AgreementCode): Boolean` — verifies active consent
- `GetActiveAgreementVersion(AgreementCode): Integer` — gets current effective version
- `ScheduleAnonymization(CustomerNo)` — adds customer to anonymization queue

### "NPR GDPR Management" (Member variant - in Member Module)

Member-specific GDPR processing. Extends core GDPR with member data anonymization:
- `AnonymizeMember(MemberNo)` — anonymizes member personal data
- `AnonymizeMemberPoints(MemberNo)` — handles loyalty point data per retention policy

## Pages

| Page | Source Table | Purpose |
|------|-------------|---------|
| `GDPRSetup` | NPR GDPR Setup | Global GDPR configuration |
| `GDPRAgreementList` | NPR GDPR Agreement | Agreement list |
| `GDPRAgreementCard` | NPR GDPR Agreement | Agreement editor |
| `GDPRAgreementVersions` | NPR GDPR Agreement Version | Version list per agreement |
| `GDPRConsentLog` | NPR GDPR Consent Log | Consent audit trail |
| `GDPRAnonymizationReq` | NPR GDPR Anonymization Request | Anonymization request management |
| `CustomerstoAnonList` | NPR Customer to Anonymize | Anonymization queue |
| `CustomerGDPRLogEntries` | NPR Customer GDPR Log Entries | Per-customer GDPR log |
| `CustomerGDPRSetup` | NPR Customer GDPR Setup | Per-customer GDPR setup |
