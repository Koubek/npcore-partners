---
type: reference
tags: [np-retail, pos, pos-compliance, tables, codeunits, pages, enums, events]
relates:
  - np-retail/pos/pos-compliance/overview.md
updated: 2026-05-09
---

# POS Compliance — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150637 | NPR POS Audit Log | POS Audit Log | Entry No. (PK, AutoIncrement); Acted on POS Unit No.+Action Type; Active POS Sale SystemId | Central audit log with 34 action types, electronic signature chain, and compliance metadata |
| — | NPR POS Audit Profile | POS Audit Profile | Code | Audit configuration profile: enable/disable logging, notifier settings |

### NPR POS Audit Log Field Details

| Field No. | Name | Type | Description |
|-----------|------|------|-------------|
| 1 | Entry No. | Integer (AutoIncrement) | Primary key |
| 2 | Record ID | RecordID | Source record identifier |
| 3 | Table ID | Integer | Source table number |
| 4 | Table Name | Text[250] (FlowField) | Resolved table caption |
| 5 | Action Type | Option (34 values) | SIGN_IN, SIGN_OUT, RECEIPT_COPY, DIRECT_SALE_END, ITEM_RMA, WORKSHIFT_END, ARCHIVE_ATTEMPT, AUDIT_VERIFY, DATA_EXPORT, etc. |
| 6-7 | Acted on POS Entry No./Fiscal No. | Integer / Code[20] | Referenced POS entry |
| 8 | Acted on POS Unit No. | Code[10] | POS unit where action occurred |
| 9 | Active Salesperson Code | Code[20] | Current salesperson |
| 10 | Log Timestamp | DateTime | When logged |
| 11-13 | External ID/Code/Description | Code[20]/Code[20]/Text[250] | External system references |
| 14 | Electronic Signature | BLOB | Signed hash of the log entry |
| 15 | Previous Electronic Signature | BLOB | Chained previous signature |
| 18 | Signature Base Value | BLOB | Raw data that was signed |
| 20 | External Implementation | Text[30] | Which compliance handler signed |
| 21 | User ID | Code[50] | BC user ID |
| 22 | Certificate Thumbprint | Text[250] | Signing certificate |
| 23 | Additional Information | Text[250] | Extra context |
| 25-26 | External Type / Certificate Implementation | Code[20] / Text[30] | Integration metadata |
| 27 | Original Signature Base Value | BLOB | Original value before re-signing |
| 29 | Handled by External Impl. | Boolean | Was processed by country handler |
| 30 | Uploaded | Boolean | Has been sent to fiscal authority |
| 32 | Active POS Unit No. | Code[10] | Current POS unit context |
| 33 | Action Custom Subtype | Text[30] | Custom action sub-type for CUSTOM actions |
| 34 | Active POS Sale SystemId | Guid | Links to the active sale |

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6150619 | NPR POS Audit Log Mgt. | Central audit log management — creation, verification, archiving |
| — | NPR POS Audit Log Verify | Audit log signature chain verification |
| — | POSAuditProfileNotifier | Audit profile-based alerting/notifications |
| — | ComplianceFiscalMgt | Fiscal compliance dispatch manager |
| — | RetailLocalizationMgt | Country-specific localization configuration |

### NPR POS Audit Log Mgt. Key Procedures

| Procedure | Description |
|-----------|-------------|
| `IsEnabled(POSAuditProfileCode): Boolean` | Check if audit logging is active for profile |
| `ValidateLog(var POSAuditLog): Boolean` | Verify log entry signature chain |
| `ArchiveWorkshiftPeriod(POSWorkshiftCheckpoint)` | Archive workshift audit data |
| `CreateEntry(RecordID, Type, EntryNo, FiscalNo, UnitNo)` | Quick audit log creation |
| `CreateEntryExtended(RecordID, Type, EntryNo, FiscalNo, UnitNo, Description, AddInfo)` | Extended audit entry with description |
| `CreateEntryCustom(RecordID, Subtype, EntryNo, FiscalNo, UnitNo, Description, AddInfo)` | Custom action type audit entry |
| `CreateEntryFull(...)` | Full audit entry with all fields |
| `ShowAuditLogForRecord(RecordID)` | Open audit log filtered by record |
| `ShowAuditLogForPOSEntry(POSEntry)` | Open audit log filtered by POS entry |
| `LookupAuditHandler(var SelectedAuditHandler): Boolean` | Select compliance handler |
| `LogPartnerModification(POSUnitNo, Description)` | Log partner configuration changes |
| `InitializeLog(POSUnitNo)` | Initialize audit log for a POS unit |
| `PreparePOSActionAuthDescription(...)` | Build authorization description for audit |

### Events (NPR POS Audit Log Mgt.)

| Event | Type | Description |
|-------|------|-------------|
| `OnHandleAuditLogBeforeInsert(var POSAuditLog)` | Integration (local) | Sign/modify entry before insert |
| `OnHandleAuditLogAfterInsert(var POSAuditLog)` | Integration (local) | Post-insert processing (upload) |
| `OnArchiveWorkshiftPeriod(POSWorkshiftCheckpoint)` | Integration (local) | Country-specific archiving |
| `OnValidateLogRecords(var POSAuditLog, var Handled, var Error)` | Integration (internal) | Custom validation |
| `OnLookupAuditHandler(var tmpRetailList)` | Integration | Register audit handler options |
| `OnShowAdditionalInfo(POSAuditLog)` | Integration (internal) | Display extra info on audit card |

## Enums

| Name | Values | Purpose |
|------|--------|---------|
| NPR POS Audit Notification | (configurable) | Audit event notification types |
