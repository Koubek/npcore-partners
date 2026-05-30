---
type: reference
tags: [np-retail, infrastructure, job-queue, monitoring]
relates: [np-retail/infrastructure/job-queue/overview.md]
updated: 2026-05-09
---

# Job Queue Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| — | "NPR Job Queue Refresh Setup" | Job Queue Refresh Setup | — | Configuration for monitored job queue refresh cycle (time zone, external refresher flag) |
| — | "NPR Job Queue Notification Profile" | Job Queue Notif Profile | Code | Notification profile definition for job failure alerts |
| — | "NPR Managed By App Job Queue" | Managed By App Job Queue | — | Tracks which job queue entries are managed by the application |
| — | "NPR Monitored Job Queue Entry" | Monitored Job Queue Entry | — | Tracks JQ entries under active monitoring with status and refresh info |
| — | "NPR Job Queue Refresh Log" | Job Queue Refresh Log | — | Audit log of monitored job queue refresh operations |
| — | "NPR Job Queue Runner User" | Job Queue Runner User | — | Maps job queue entries to specific user accounts for execution context |

## Codeunits

| ID | Name | Access | Description |
|----|------|--------|-------------|
| 6014663 | "NPR Job Queue Management" | Public | Central scheduling API: ScheduleNcTaskProcessing, ScheduleNcImportListProcessing, InitRecurringJobQueueEntry (many overloads), StartJobQueueEntry, CancelNpManagedJobs, AddPos*JobQueue, ScheduleFeatureFlagReport, RefreshNPRJobQueueList, EmitTelemetryDataOnError |
| — | "NPR Monitored Job Queue Mgt." | Internal | Monitored job lifecycle: AddMonitoredJobQueueEntry, RemoveMonitoredJobQueueEntry, RefreshJobQueues, IsMonitoredJobRefreshRoutineActive |
| — | "NPR Job Queue Param. Str. Mgt." | Public | Helper for building/parsing JQ parameter strings (key=value pairs serialized as CSV) |
| — | "NPR External JQ Refresher Mgt." | Internal | Logic for the external JQ refresher pattern |
| — | "NPR External JQ Refresher WS" | Public | Web service endpoint for external job queue refresh requests |
| — | "NPR Refresh Job Queue Entry" | — | Orchestrates refreshing a single monitored JQ entry |
| — | "NPR Job Queue Send Notif." | — | Sends notifications for job queue events based on notification profile |
| — | "NPR Job Queue User Handler" | — | Handles user context switching for JQ entries |
| — | "NPR Cleanup JQ Log Entries" | — | Cleanup routine for old job queue log entries |
| — | "NPR Update JQ On Hold Status" | — | Updates on-hold status for managed job queue entries |
| — | "NPR Add Job Queue To Monitored" | Public | Adds a job queue entry to the monitored list from external callers |

## Pages

| ID | Name | PageType | SourceTable | Description |
|----|------|----------|-------------|-------------|
| — | "NPR Job Queue Notification Profiles" | List | JobQueueNotifProfile | Manage notification profiles |
| — | "NPR Job Queue Refresh Setup" | Card | JobQueueRefreshSetup | Configure refresh cycle parameters |
| — | "NPR Job Queue Refresh Logs" | List | JobQueueRefreshLog | View refresh audit log |
| — | "NPR Job Queue Runner Users" | List | JobQueueRunnerUser | Map users to JQ entries |
| — | "NPR Monitored JQ Entries" | List | MonitoredJobQueueEntry | View all monitored JQ entries |
| — | "NPR Monitored JQ Entry Card" | Card | MonitoredJobQueueEntry | Details of a monitored JQ entry |
| — | "NPR Job Queue Entries" | PageExt | Job Queue Entry | Extension of standard JQ entry list page |
| — | "NPR Job Queue Entry Card" | PageExt | Job Queue Entry | Extension of standard JQ entry card |

## Enums

| ID | Name | Values | Description |
|----|------|--------|-------------|
| — | "NPR Ext JQ Refresher Options" | — | Options for external refresher strategy |

## Permission Sets

| Name | Description |
|------|-------------|
| "NPR Ext JQ Refresher" | Permissions for the external JQ refresher functionality |
