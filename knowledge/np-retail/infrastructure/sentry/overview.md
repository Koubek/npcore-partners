---
type: concept
tags: [np-retail, sentry, infrastructure, telemetry]
relates: [np-retail/infrastructure/api/overview.md, np-retail/conventions.md]
updated: 2026-05-09
---

# Sentry Telemetry in NP Retail

NP Retail uses [Sentry](https://sentry.io/) as its external telemetry and performance monitoring platform, replacing Business Central's built-in Application Insights for production observability.

## Why Sentry Over Application Insights

- **Customer-level isolation** — Each tenant gets its own DSN (stored in Azure Key Vault via `SentryIODragonglassEU`), keeping telemetry data separate per customer
- **Distributed tracing** — Native support for `sentry-trace` header propagation across HTTP boundaries, linking BC transactions to POS front-end and external service calls
- **Rich span model with gRPC-status semantics** — 16 span status values (Ok, Cancelled, InternalError, Unauthenticated, etc.) map directly to Sentry's performance model
- **Custom tagging and metadata** — Every event carries tenant, POS unit, store, app version, environment (Crane/Sandbox/SaaS/OnPrem), and session context
- **Selective sampling** — Configurable per-transaction sampling rate with distributed sampling decisions via the sentry-trace header

## Architecture

The Sentry module sits between NP Retail application code and BC's `Session.LogMessage` telemetry pipeline:

```
Application Code → NPR Sentry (public API) → NPR Sentry Scope → NPR Sentry Transaction
                                                       ↓
                                              Session.LogMessage → BC Telemetry → Sentry (via DSN)
```

All Sentry payloads are serialized to JSON and emitted via `Session.LogMessage` with `TelemetryScope::ExtensionPublisher`, using `NPRSentryTransaction` and `NPRSentryException` as message tags. The JSON payload is chunked into 7500-character pieces (key `NPRSentryJson`, `NPRSentryJson_1`, ...) to fit BC's telemetry dimension limits.

## Key Concepts

### Transaction → Spans → Errors

Each unit of work is a **transaction** (e.g., an API call, a POS action, a background session). A transaction contains a tree of **spans** — timed intervals representing individual operations (HTTP calls, DB queries, page interactions, codeunit invocations). When an error occurs, an **error event** is attached to the transaction and linked to the active span.

### Programming Bug Detection (`AddLastErrorIfProgrammingBug`)

This is the most important API for error classification. It distinguishes genuine programming bugs from expected user or environmental errors.

`SentryErrorHandling.IsLastErrorAProgrammingBug()` checks the last error text/code against a curated list of English-language BC platform error patterns:

| Category | Examples |
|----------|----------|
| Arithmetic | `DivideByZero`, overflow |
| Concurrency | Deadlock on table modification |
| JSON parsing | Property not found |
| XML parsing | Invalid token, namespace prefix not defined |
| Transaction violations | Write in read-only session, modal in write transaction |
| Codeunit.Run violations | Return value used in write transaction |
| Network | HTTP timeout, connection failure, request aborted |

If the error matches any of these patterns, it's classified as a programming bug and sent to Sentry. Otherwise it's silently ignored (user mistake or transient condition).

### Sentry-Trace Header Propagation

The `NPR Sentry Http` codeunit parses and generates `sentry-trace` headers (`{traceId}-{spanId}-{sampled}`). This enables:

- **Incoming** — APIs receiving a sentry-trace header can continue the trace from the caller
- **Outgoing** — HTTP calls from BC can propagate the current trace context to downstream services
- **Distributed sampling** — The sampling decision is carried in the header so all services in the trace agree

### Session Linking

Sentry traces can span across session boundaries. The pattern:

1. A parent transaction records its `TraceId`, `SpanId`, and `Sampled` flag into a record table
2. The child session (via `TaskScheduler.CreateTask`, `StartSession`, or `EnqueueBackgroundTask`) reads these values
3. The child calls `InitScopeAndTransaction(..., ExternalTraceId, ExternalSpanId, ExternalSampled)` to continue the trace

This is demonstrated by the `NPR Sentry Session Rec Example` table and `NPR Sentry Session Example` codeunit.

### Auto-Instrumentation Wrappers

`NPR Sentry` provides wrapper methods that transparently instrument common BC operations:

- **Database** — `FindSet`, `Find`, `Next`, `Delete`, `DeleteAll`, `IsEmpty` — each creates a span with DB operation metadata (table name, read isolation, rows read)
- **UI** — `PageRunModal`, `Confirm`, `StrMenu` — captures user interaction outcomes (OK/Cancel)
- **HTTP** — `HttpInvoke` — wraps HttpClient calls with span timing and sentry-trace propagation
- **Codeunit** — `CodeunitRun` — instruments cross-codeunit calls
- **Report** — `ReportRun` — instruments report execution

### Span Limit

The scope enforces a hard limit of 200 spans per transaction. When exceeded, tracing is disabled for the remainder and a `span_limit_reached` tag is added to the transaction.

## Dependencies

The Sentry module depends on these NP Retail modules:

- **POS** — `NPR POS JavaScript Interface` (for frontend metadata via `getSentryMetadata`), `NPR POS Session`, `NPR POS Unit` (table), `NPR POS Front End Management`, `NPR POS Setup`
- **Infrastructure** — `Azure Key Vault Mgt.`, `Environment Information`, `Tenant Information`, `Azure AD Tenant`
- **System** — `NAV App Installed App`, `Active Session`, `User Setup`, `Company Information`, `Regex`

It is consumed by any code that needs telemetry: API codeunits, POS workflows, background tasks, page actions.

## Conditional Compilation

All code is guarded with `#if not (BC17 or BC18 or BC19 or BC20 or BC21)`, meaning Sentry is only active on Business Central 2022 release wave 2 (BC22) and later. On older versions, all calls are no-ops.
