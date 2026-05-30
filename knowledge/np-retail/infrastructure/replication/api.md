---
type: reference
tags: [infrastructure, replication, np-retail, tables, codeunits, pages, enums, interfaces, reports, xmlports]
relates:
  - infrastructure/replication/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Replication/ExportReplicationSetup.XmlPort.al
  - Application/src/Replication/ImportReplicationSetup.XmlPort.al
  - Application/src/Replication/RepCheckMissingFields.Report.al
  - Application/src/Replication/Import/RepGetBCGenericData.Codeunit.al
  - Application/src/Replication/Import/RepGetDefDimSubs.Codeunit.al
  - Application/src/Replication/Import/RepGetItemVarSubs.Codeunit.al
  - Application/src/Replication/_public/ReplicationAPI.Codeunit.al
  - Application/src/Replication/_public/ReplicationCounterMgmt.Codeunit.al
  - Application/src/Replication/_public/ReplicationEndpoint.Page.al
  - Application/src/Replication/_public/ReplicationEndpoint.Table.al
  - Application/src/Replication/_public/ReplicationEndPointMeth.Enum.al
  - Application/src/Replication/_public/ReplicationEndpoints.Page.al
  - Application/src/Replication/Error Logging/ReplicationErrorLog.Page.al
  - Application/src/Replication/Error Logging/ReplicationErrorLog.Table.al
  - Application/src/Replication/_public/ReplicationIEndpointMeth.Interface.al
  - Application/src/Replication/ReplicationImportEntry.Codeunit.al
  - Application/src/Replication/_public/ReplicationRegister.Codeunit.al
  - Application/src/Replication/_public/ReplicationServiceSetup.Table.al
  - Application/src/Replication/_public/ReplicationSetupCard.Page.al
  - Application/src/Replication/_public/ReplicationSetupList.Page.al
  - Application/src/Replication/ReplicationSetupSource.Page.al
  - Application/src/Replication/ReplicationSetupSource.Table.al
  - Application/src/Replication/_public/RepSpecFieldMappings.Page.al
  - Application/src/Replication/_public/RepSpecialFieldMapping.Table.al
  - Application/src/Replication/_public/RepWSFunctions.Codeunit.al
  - Application/src/Replication/RepWSFunctionsClient.Codeunit.al
  - Application/src/Replication/_public/RepWSIFunctions.Interface.al
---

# Replication — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6014589 | "NPR Replication Endpoint" | Replication Endpoint | "Service Code", "EndPoint ID" | — |
| 6014584 | "NPR Replication Error Log" | Replication Error Log | "Entry No." | — |
| 6014588 | "NPR Replication Service Setup" | Replication API Setup | "API Version" | — |
| 6014634 | "NPR Replication Setup (Source)" | Replication Setup (Source Company) | "Primary Key" | — |
| 6014602 | "NPR Rep. Special Field Mapping" | Replication Special Field Mapping | "Service Code", "EndPoint ID", "Table ID", "Field ID", Priority | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6014605 | "NPR Rep. Get BC Generic Data" |  | SendRequest, GetBCData, ProcessImportedContent, HandleArrayElementEntity, InitializeRecRef | OnAfterRecordIsModified |
| 6014672 | "NPR Rep. Get Def. Dim. Subs." |  | UpdateReferenceIDFields | — |
| 6014592 | "NPR Rep. Get Item Var. Subs." |  | SkipBarcodeGeneration | — |
| 6014589 | "NPR Replication API" |  | Update, Update, ShowSetup, ShowErrorLog, ShowErrorLogEntries | — |
| 6014626 | "NPR Replication Counter Mgmt." |  | UpdateReplicationCounter, CheckReplicationCounterUpdateIsEnabled, UpdateReplicationCounterOnBeforeInsertVarietyGroup, UpdateReplicationCounterOnBeforeModifyVarietyGroup, UpdateReplicationCounterOnBeforeRenameVarietyGroup | — |
| 6014622 | "NPR Replication Import Entry" |  | RunProcessImportEntry, ProcessImportEntry, GetServiceEndpoint, SendProcessErrorEmailNotification | — |
| 6014608 | "NPR Replication Register" |  | OnRegisterService, RegisterServiceWithEndPoints, OnAfterRegisterServices, RegisterItemServiceEndPoints, RegisterItemCatSpecialFieldMappings | — |
| 6059774 | "NPR Rep. WS Functions" |  | GetLastReplicationCounter, GetReplicationCounterKeyIndex, InitRepWSFunctions | — |
| 6014692 | "NPR Rep. WS Functions Client" |  | GetLastReplicationCounter, BuildODataV4URI | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6014504 | "NPR Replication Endpoint" | Replication Endpoint | "NPR Replication Endpoint" | — |
| 6014500 | "NPR Replication Endpoints" | Replication Service Endpoints | "NPR Replication Endpoint" | — |
| 6014487 | "NPR Replication Error Log" | Replication Error Log | "NPR Replication Error Log" | — |
| 6014495 | "NPR Replication Setup Card" | Replication API Setup Card | "NPR Replication Service Setup" | — |
| 6014499 | "NPR Replication Setup List" | Replication API Setup List | "NPR Replication Service Setup" | — |
| 6059849 | "NPR Replication Setup (Source)" | Replication Setup (Source Company) | "NPR Replication Setup (Source)" | — |
| 6014672 | "NPR Rep. Spec. Field Mappings" | Replication Special Field Mappings | "NPR Rep. Special Field Mapping" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014474 | "NPR Replication EndPoint Meth" | Get BC Generic Data | Get BC Generic Data |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR Replication IEndpoint Meth" | SendRequest, GetDefaultFileName, ProcessImportedContent, CheckResponseContainsData |
| "NPR Rep. WS IFunctions" | GetLastReplicationCounter |


## Reports

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014415 | "NPR Rep. Check Missing Fields" | Check Missing Fields | — |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014400 | "NPR Export Replication Setup" | Export Replication Setup | — |
| 6014402 | "NPR Import Replication Setup" | Import Replication Setup | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: ExportReplicationSetup.XmlPort.al, ImportReplicationSetup.XmlPort.al, RepCheckMissingFields.Report.al, RepGetBCGenericData.Codeunit.al, RepGetDefDimSubs.Codeunit.al, RepGetItemVarSubs.Codeunit.al, ReplicationAPI.Codeunit.al, ReplicationCounterMgmt.Codeunit.al, ReplicationEndpoint.Page.al, ReplicationEndpoint.Table.al, ReplicationEndPointMeth.Enum.al, ReplicationEndpoints.Page.al, ReplicationErrorLog.Page.al, ReplicationErrorLog.Table.al, ReplicationIEndpointMeth.Interface.al, ReplicationImportEntry.Codeunit.al, ReplicationRegister.Codeunit.al, ReplicationServiceSetup.Table.al, ReplicationSetupCard.Page.al, ReplicationSetupList.Page.al, ReplicationSetupSource.Page.al, ReplicationSetupSource.Table.al, RepSpecFieldMappings.Page.al, RepSpecialFieldMapping.Table.al, RepWSFunctions.Codeunit.al, RepWSFunctionsClient.Codeunit.al, RepWSIFunctions.Interface.al
