---
type: concept
tags: [np-retail, pos, pos-compliance]
relates:
  - np-retail/pos/pos-core/overview.md
updated: 2026-05-09
---

# POS Compliance Module

Handles fiscal compliance, audit logging, and country-specific regulatory requirements for NP Retail POS. Provides a centralized audit log with electronic signing, country-specific fiscal handlers, and configurable audit profiles.

## Architecture

### Core Audit Log
The `NPR POS Audit Log` table (6150637) records all auditable POS events with:
- 34 action types (SIGN_IN, SIGN_OUT, DIRECT_SALE_END, RECEIPT_COPY, etc.)
- Electronic signature chain via BLOB fields (Signature Base Value, Electronic Signature, Previous Electronic Signature)
- Point-in-time logging with timestamps, user IDs, and POS unit context
- Multiple indexed access paths (by POS Unit, Entry No., Sale SystemId)

### Audit Profile System
Configurable profiles via `NPR POS Audit Profile` table:
- Enable/disable audit logging per POS unit
- Controls which events are captured
- Notifier integration via `POSAuditProfileNotifier` for alerting

### Country-Specific Handlers
Organized as subdirectories:
- `[AT] Fiskaly` — Austrian fiscalization via Fiskaly
- `[BE] Fiscal Sealing` — Belgian fiscal sealing
- `[BG] Fiscal` — Bulgarian fiscal requirements
- `[CRO] Fina` — Croatian fiscalization
- `[DE] Fiskaly` — German fiscalization via Fiskaly (TSE)
- `[DK] Skat` — Danish SKAT compliance
- `[ES] Fiskaly` — Spanish fiscalization
- `[FR] NF525` — French NF525/CertInfra
- `[HU] Laurel` — Hungarian fiscal (Laurel)
- `[HU] NTCA/MultiSoft-EInvoice` — Hungarian e-invoice
- `[IRL] Advisory Council` — Irish compliance
- `[IT] Entrate` — Italian fiscal (Entrate/Ricevuta)
- `[KSA] Handler` — Saudi Arabian compliance (ZATCA)
- `[NO] Lovdata` — Norwegian Bokføringsloven
- `[RO] Fiscal` — Romanian fiscalization
- `[RS] E-Invoice` — Serbian e-invoice
- `[RS] Fiskalizacija` — Serbian fiscalization
- `[SE] CleanCash` — Swedish CleanCash
- `[SI] Davki` — Slovenian fiscal

### Key Flows

**Audit Entry Creation**: `POSAuditLogMgt.CreateEntryFull()` captures:
- Record context (Record ID, Table ID)
- POS session context (Unit No., Salesperson Code, Active Sale)
- Action type, timestamps, user ID
- External references (IDs, descriptions, implementation codes)
- Fires `OnHandleAuditLogBeforeInsert` / `OnHandleAuditLogAfterInsert` for crypto processing

**Audit Verification**: `POSAuditLogVerify` validates signature chains — inserts verification entries and rolls back DB changes while preserving error state.

**Workshift Archiving**: `ArchiveWorkshiftPeriod()` creates archive entries for workshift checkpoints, firing `OnArchiveWorkshiftPeriod` for compliance-specific archiving.

**Localization Management**: `RetailLocalizationMgt` acts as a country-specific configuration hub.

### Integration Points for Country Modules

- `OnHandleAuditLogBeforeInsert` — Sign the audit entry (compute hash, apply electronic signature)
- `OnHandleAuditLogAfterInsert` — Upload audit data to fiscal authority
- `OnArchiveWorkshiftPeriod` — Country-specific workshift archiving
- `OnValidateLogRecords` — Custom validation logic per jurisdiction
- `OnLookupAuditHandler` — Register country-specific handler selection

## Dependencies

- **POS Core** — POS session, POS unit, POS entry records
- **POS Action** — Various action flows that trigger audit entries
