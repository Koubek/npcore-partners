---
type: reference
tags: [np-retail, pos, pos-background-tasks, codeunits, interfaces, enums]
relates:
  - np-retail/pos/pos-background-tasks/overview.md
updated: 2026-05-09
---

# POS Background Tasks — API Reference

## Codeunits

| ID | Name | SingleInstance | Purpose |
|----|------|---------------|---------|
| 6059869 | NPR POS Backgr. Task Manager | Yes | Central task queue manager. Enqueues, dispatches, and handles completion/error/cancellation for background tasks |
| — | POSAPIStackCheck | No | Verifies AL callstack originated from POS API trigger |
| — | POSPageStackCheck | No | Verifies AL callstack originated from POS Page trigger |
| — | UnknownPOSBgndTask | No | Default handler for unregistered task types |

### Codeunit Details

**NPR POS Backgr. Task Manager** (6059869):

| Procedure | Description |
|-----------|-------------|
| `EnqueuePOSBackgroundTask(var WrapperTaskIdOut, TaskImplementation, var Parameters, Timeout)` | Queue a task for execution. Validates stack origin. Generates wrapper task ID |
| `CancelPOSBackgroundTask(WrapperTaskId)` | Cancel a queued task by wrapper ID |
| `GetQueue(var QueuedTasksOut)` | Returns list of queued wrapper task IDs |
| `GetCancellationQueue(var QueuedCancellationsOut)` | Returns list of cancellation requests |
| `TryGetPBTTaskId(WrapperTaskId, var PBTTaskIdOut): Boolean` | Resolves wrapper ID to platform PB task ID |
| `GetQueuedTask(WrapperTaskId, var ParametersOut, var TimeoutOut)` | Retrieves task parameters for execution |
| `AddMappedId(PBTTaskId, WrapperTaskId)` | Registers mapping between platform and wrapper IDs |
| `ClearQueues()` | Clears all internal queues |
| `BackgroundTaskCompleted(PBTTaskId, Results)` | Called by POS page on successful completion → calls `BackgroundTaskSuccessContinuation` |
| `BackgroundTaskError(PBTTaskId, ErrorCode, ErrorText, ErrorCallStack, var IsHandled)` | Called on error → captures Sentry span, calls `BackgroundTaskErrorContinuation` |
| `BackgroundTaskCancelled(PBTTaskId)` | Called on cancellation → calls `BackgroundTaskCancelled` on implementation |
| `CleanupTaskStateBeforeContinuation(PBTTaskId)` | Removes all state for a completed/errored/cancelled task |

## Interface

### NPR POS Background Task

Implemented by enum value codeunits. Procedures:

| Procedure | Signature | Context |
|-----------|-----------|---------|
| `ExecuteBackgroundTask` | `(TaskId: Integer; Parameters: Dictionary of [Text, Text]; var Results: Dictionary of [Text, Text])` | Background session |
| `BackgroundTaskSuccessContinuation` | `(TaskId: Integer; Parameters: Dictionary of [Text, Text]; Results: Dictionary of [Text, Text])` | User thread |
| `BackgroundTaskErrorContinuation` | `(TaskId: Integer; Parameters: Dictionary of [Text, Text]; ErrorCode: Text; ErrorText: Text; ErrorCallStack: Text)` | User thread |
| `BackgroundTaskCancelled` | `(TaskId: Integer; Parameters: Dictionary of [Text, Text])` | User thread |

## Enums

| Name | Values | Purpose |
|------|--------|---------|
| NPR POS Background Task | (extensible) | Maps enum values to codeunit implementations via interface. Each value implements NPR POS Background Task |
