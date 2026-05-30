---
type: reference
tags: [infrastructure, job-queue, np-retail, tables, codeunits, pages, enums, reports, tableextensions, pageextensions, permissionsets]
relates:
  - infrastructure/job-queue/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Job Queue/_public/AddJobQueueToMonitored.Codeunit.al
  - Application/src/Job Queue/CleanupJQLogEntries.Codeunit.al
  - Application/src/Job Queue/ExternalJQRefresherMgt.Codeunit.al
  - Application/src/Job Queue/_public/ExternalJQRefresherWS.Codeunit.al
  - Application/src/Job Queue/ExtJQRefresher.PermissionSet.al
  - Application/src/Job Queue/ExtJQRefresherEntraApp.Report.al
  - Application/src/Job Queue/ExtJQRefresherOptions.Enum.al
  - Application/src/Job Queue/JobQueueEntries.PageExt.al
  - Application/src/Job Queue/JobQueueEntry.TableExt.al
  - Application/src/Job Queue/JobQueueEntryCard.PageExt.al
  - Application/src/Job Queue/_public/JobQueueManagement.Codeunit.al
  - Application/src/Job Queue/JobQueueNotifProfile.Table.al
  - Application/src/Job Queue/JobQueueNotifProfiles.Page.al
  - Application/src/Job Queue/_public/JobQueueParamStrMgt.Codeunit.al
  - Application/src/Job Queue/JobQueueRefreshLog.Table.al
  - Application/src/Job Queue/JobQueueRefreshLogs.Page.al
  - Application/src/Job Queue/JobQueueRefreshSetup.Page.al
  - Application/src/Job Queue/JobQueueRefreshSetup.Table.al
  - Application/src/Job Queue/JobQueueRunnerUser.Table.al
  - Application/src/Job Queue/JobQueueRunnerUsers.Page.al
  - Application/src/Job Queue/JobQueueSendNotif.Codeunit.al
  - Application/src/Job Queue/JobQueueUserHandler.Codeunit.al
  - Application/src/Job Queue/ManagedByAppJobQueue.Table.al
  - Application/src/Job Queue/_public/MonitoredJobQueueEntry.Table.al
  - Application/src/Job Queue/MonitoredJobQueueMgt.Codeunit.al
  - Application/src/Job Queue/_public/MonitoredJQEntries.Page.al
  - Application/src/Job Queue/_public/MonitoredJQEntryCard.Page.al
  - Application/src/Job Queue/RefreshJobQueueEntry.Codeunit.al
  - Application/src/Job Queue/UpdateJQOnHoldStatus.Codeunit.al
---

# Job Queue — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6014632 | "NPR Job Queue Notif. Profile" | Job Queue Notification Profile | "Code" | — |
| 6151230 | "NPR Job Queue Refresh Log" | Job Queue Refresh Log | "JQ Runner User Name" | — |
| 6059870 | "NPR Job Queue Refresh Setup" | Job Queue Refresh Setup | "Primary Key" | — |
| 6151290 | "NPR Job Queue Runner User" | Job Queue Runner User | "Entry No." | — |
| 6151117 | "NPR Managed By App Job Queue" | Monitored Job | ID | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6248633 | "NPR Add Job Queue To Monitored" |  | — | — |
| 6014664 | "NPR Cleanup JQ Log Entries" |  | PurgeOldJobQueueLogEntries, OnValidateJobQueueEntryObjectIDtoRun, InitJQLogCleanupJob_OnCompanyInitialize, RefreshJobQueueEntry, AddJQLogCleanupJob | — |
| 6248231 | "NPR External JQ Refresher Mgt." |  | ManageExternalJQRefresherTenants, CreateSaaSSetup, ValidateExternalJQRefresherTenantManager, CreateTenantWebService, RemoveTenantWebService | — |
| 6248230 | "NPR External JQ Refresher WS" |  | RefreshJobQueues | — |
| 6014663 | "NPR Job Queue Management" |  | ScheduleNcTaskProcessing, ScheduleNcTaskProcessing, ScheduleNcTaskProcessing, ScheduleNcTaskCountResetJob, ScheduleNcImportListProcessing | OnRefreshserCheckIfCreateMissingCustomJobs, OnBeforeRenewMonitoredJobQueueEntry, OnBeforeBuildMonitoredFromJobQueueEntry |
| 6014501 | "NPR Job Queue Param. Str. Mgt." |  | Parse, ParamStringContains, HasParams, ContainsParam, GetParamValueAsText | — |
| 6014624 | "NPR Job Queue - Send Notif." |  | SendNotifications, TrySendEmalNotification, TrySendSmsNotification | — |
| 6151058 | "NPR Job Queue User Handler" |  | RefreshJobQueueEntries, HandleJobQueueEntriesOnBeforeLogInStart, HandleJobQueueEntriesOnAfterLogin, RefreshJobQueueEntriesOnAfterLogin, IsRefreshJobQueueEntriesEnabled | — |
| 6248395 | "NPR Monitored Job Queue Mgt." |  | SetRunByMonitoredJobRefreshRoutine, RefreshJobQueueEntries, RefreshOneJobQueueEntry, AddMonitoredJobQueueEntry, RemoveMonitoredJobQueueEntry | — |
| 6248478 | "NPR Refresh Job Queue Entry" |  | RefreshJobQueueEntry | — |
| 6184724 | "NPR Update JQ OnHold Status" |  | SetIfManuallySetOnHold | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6059842 | "NPR Job Queue Notif. Profiles" | Job Queue Notif. Profiles | "NPR Job Queue Notif. Profile" | — |
| 6185096 | "NPR Job Queue Refresh Logs" | Job Queue Refresh Logs | "NPR Job Queue Refresh Log" | — |
| 6150891 | "NPR Job Queue Refresh Setup" | Job Queue Refresh Setup | "NPR Job Queue Refresh Setup" | — |
| 6248219 | "NPR Job Queue Runner Users" | Job Queue Runner Users | "NPR Job Queue Runner User" | — |
| 6185041 | "NPR Monitored JQ Entries" | Monitored Jobs | "NPR Monitored Job Queue Entry" | — |
| 6185042 | "NPR Monitored JQ Entry Card" | Monitored Job | "Job Queue Entry" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6059851 | "NPR Ext. JQ Refresher Options" | create | create, delete, select, list, resetFailedAttempts |


## Reports

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014559 | "NPR Ext JQ Refresher Entra App" | Create new Job Queue Runner User | — |


## Table Extensions

| ID | Name | Caption | Extends |
| --- | --- | --- | --- |
| 6014472 | "NPR Job Queue Entry" | Notification Profile on Error | "Job Queue Entry" |


## Page Extensions

| ID | Name | Caption | Extends |
| --- | --- | --- | --- |
| 6014413 | "NPR Job Queue Entries" | Set On Hold | "Job Queue Entries" |
| 6014424 | "NPR Job Queue Entry Card" | Monitored Job | "Job Queue Entry Card" |


## Permission Sets

| ID | Name | Caption |
| --- | --- | --- |
| 6014420 | "NPR Ext JQ Refresher" | Ext JQ Refresher |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AddJobQueueToMonitored.Codeunit.al, CleanupJQLogEntries.Codeunit.al, ExternalJQRefresherMgt.Codeunit.al, ExternalJQRefresherWS.Codeunit.al, ExtJQRefresher.PermissionSet.al, ExtJQRefresherEntraApp.Report.al, ExtJQRefresherOptions.Enum.al, JobQueueEntries.PageExt.al, JobQueueEntry.TableExt.al, JobQueueEntryCard.PageExt.al, JobQueueManagement.Codeunit.al, JobQueueNotifProfile.Table.al, JobQueueNotifProfiles.Page.al, JobQueueParamStrMgt.Codeunit.al, JobQueueRefreshLog.Table.al, JobQueueRefreshLogs.Page.al, JobQueueRefreshSetup.Page.al, JobQueueRefreshSetup.Table.al, JobQueueRunnerUser.Table.al, JobQueueRunnerUsers.Page.al, JobQueueSendNotif.Codeunit.al, JobQueueUserHandler.Codeunit.al, ManagedByAppJobQueue.Table.al, MonitoredJobQueueEntry.Table.al, MonitoredJobQueueMgt.Codeunit.al, MonitoredJQEntries.Page.al, MonitoredJQEntryCard.Page.al, RefreshJobQueueEntry.Codeunit.al, UpdateJQOnHoldStatus.Codeunit.al
