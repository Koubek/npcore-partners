---
type: concept
tags: [np-retail, pos, pos-background-tasks]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/infrastructure/sentry/overview.md
updated: 2026-05-09
---

# POS Background Tasks Module

Provides asynchronous task execution within the POS page context. Enables non-blocking operations (e.g., async EFT integrations) without modal page popups or blocking the UI thread.

## Architecture

The module wraps Business Central's `PageBackgroundTask` API with a queue-and-dispatch pattern. The central orchestrator is `NPR POS Backgr. Task Manager` (6059869), a SingleInstance codeunit that manages a stateful task queue within a POS page trigger callstack.

### Task Lifecycle
1. **Enqueue** — Call `EnqueuePOSBackgroundTask()` with an `NPR POS Background Task` enum value, parameters dictionary, and timeout
2. **Dispatch** — The POS page polls `GetQueue()` and starts background tasks via `EnqueuePageBackgroundTask()`
3. **Execute** — Background session runs `ExecuteBackgroundTask()` on the task implementation
4. **Completion** — `BackgroundTaskCompleted()` fires on user-thread; calls `BackgroundTaskSuccessContinuation()` on the implementation
5. **Error** — `BackgroundTaskError()` captures error details via Sentry, calls `BackgroundTaskErrorContinuation()`
6. **Cancel** — `BackgroundTaskCancelled()` triggers when user-thread cancels

### Interface

`NPR POS Background Task` (defined as an enum with interface implementation pattern):
- `ExecuteBackgroundTask(TaskId, Parameters, var Results)` — Runs in background session
- `BackgroundTaskSuccessContinuation(TaskId, Parameters, Results)` — Runs back on user thread
- `BackgroundTaskErrorContinuation(TaskId, Parameters, ErrorCode, ErrorText, ErrorCallStack)` — Error handler
- `BackgroundTaskCancelled(TaskId, Parameters)` — Cancellation handler

### Stack Check Safety

`POSAPIStackCheck` and `POSPageStackCheck` codeunits verify that background task operations only execute in callstacks originating from a POS page trigger, preventing misuse from non-POS contexts.

### Example Subdirectory

Contains an example/template implementation demonstrating the interface pattern for partners.

### Unknown Task Handler

`UnknownPOSBgndTask.Codeunit.al` — Default handler for unregistered task types, preventing crashes on unrecognized enum values.

## Dependencies

- **POS Core** — POS page background task dispatching via Dragonglass control add-in
- **Sentry** — Full execution tracing (enqueue, execute, complete, error, cancel spans)

## Limitations

- Only works in AL callstacks originating from POS page triggers
- Maximum 5 concurrent page background child sessions (BC platform limit)
- Error levels only support `Error` (warnings don't work on POS pages)
- No synchronous return values — polling-based pattern required
