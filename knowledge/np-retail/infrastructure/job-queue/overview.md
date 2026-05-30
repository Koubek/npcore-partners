---
type: concept
tags: [np-retail, infrastructure, job-queue, monitoring]
relates: [np-retail/infrastructure/job-queue/api.md]
updated: 2026-05-09
---

# Job Queue Management in NP Retail

The Job Queue module extends Business Central's built-in Job Queue with NP Retail-specific scheduling, monitoring, notification, and refresh capabilities. It is the central nervous system for background task orchestration across all NP Retail modules.

## Architecture

```
NPR Job Queue Management (public API)
  ├── ScheduleNcTaskProcessing()     → NPR Nc Task List Processing
  ├── ScheduleNcImportListProcessing() → NPR Nc Import List Processing
  ├── InitRecurringJobQueueEntry()   → Core JQ entry factory (many overloads)
  ├── AddPosItemPostingJobQueue()    → POS item posting recurring job
  ├── AddPosPostingJobQueue()        → POS GL posting (daily)
  ├── AddPosSaleDocumentPostingJobQueue() → POS sale document posting
  └── RefreshNPRJobQueueList()       → Monitored job queue refresh cycle

NPR Monitored Job Queue Mgt. (monitoring)
  ├── MonitoredJobQueueEntry (table)  → Tracks job queue entries under management
  ├── AddMonitoredJobQueueEntry()      → Adds JQ entry to monitored watchlist
  ├── RemoveMonitoredJobQueueEntry()   → Removes from monitoring
  └── RefreshJobQueues()              → Loop through monitored jobs, recreate if stale

NPR External JQ Refresher
  ├── ExtJQRefresherOptions (enum)    → Refresher strategy options
  ├── ExternalJQRefresherMgt (codeunit) → Logic for external JQ refresh
  └── ExternalJQRefresherWS (codeunit) → Web service for external JQ refresh
```

## Key Concepts

- **Monitored jobs**: NP Retail tracks certain JQ entries as "monitored" — if they go missing or get stuck, the system recreates them automatically.
- **Protected jobs**: Jobs marked `NPR NP Protected Job` cannot be deleted/modified by users through standard UI.
- **Auto-reschedule on error**: Jobs can be configured to auto-reschedule after a configurable delay (seconds) and optionally notify a notification profile.
- **Job timeout**: Configurable per job (default varies by job type, e.g. 4h for POS posting).
- **Heartbeat**: Monitored jobs can send heartbeat HTTP POST requests to a configurable URL.
- **Parameter string**: All custom scheduling parameters are serialized into the JQ entry's parameter string via `NPR Job Queue Param. Str. Mgt.`.
- **Telemetry**: On job failure, structured telemetry is emitted via `Session.LogMessage` with dimensions for environment, tenant, user, job details, error call stack.
- **Notification profiles**: `JobQueueNotifProfile` table maps error conditions to notification recipients.
