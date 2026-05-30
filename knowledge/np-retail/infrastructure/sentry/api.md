---
type: reference
tags: [np-retail, sentry, infrastructure, telemetry]
relates: [np-retail/infrastructure/sentry/overview.md]
updated: 2026-05-09
---

# Sentry Module — API Reference

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6248500 | "NPR Sentry Span Status" | NPR Sentry Span Status | Ok, Cancelled, Unknown, InvalidArgument, DeadlineExceeded, NotFound, AlreadyExists, PermissionDenied, ResourceExhausted, Aborted, OutOfRange, Unimplemented, InternalError, Unavailable, DataLoss, Unauthenticated | Maps to gRPC status codes for span completion state |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6151217 | "NPR Sentry Session Rec Example" | NPR Sentry Session Rec Example | MyField (Integer, clustered) | Example table for propagating Sentry trace context across session/task boundaries |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6248497 | "NPR Sentry" | NPR Sentry | InitScopeAndTransaction (7 overloads), FinalizeScope, StartSpan, AddLastErrorInEnglish, AddLastErrorIfProgrammingBug, AddError (2 overloads), AddTransactionTag, AddTransactionData, SetTransactionName, HttpInvoke (3 overloads), PageRunModal (2 overloads), Confirm, StrMenu, FindSet (2 overloads), Find (2 overloads), Delete (2 overloads), DeleteAll, Next (2 overloads), IsEmpty, CodeunitRun (2 overloads), ReportRun (2 overloads), GetCurrentTraceId, GetCurrentSpanId, IsCurrentTransactionSampled, HasActiveTransaction | None |
| 6248498 | "NPR Sentry Span" | NPR Sentry Span | Create, Finish (2 overloads), SetStartTime, SetStatus, SetStatusFromHttpCode, SetStatusFromResult, SetMetadata (2 overloads), ToJson, GetId | None |
| 6248500 | "NPR Sentry Error" | NPR Sentry Error | Create, ToJson, GetParentId, GetExceptionType | None |
| 6184897 | "NPR Sentry Error Handling" | NPR Sentry Error Handling | SplitErrorStacktrace, CleanStackFrame, IsLastErrorAProgrammingBug, GetCurrCallStack | None |
| 6184896 | "NPR Sentry Http" | NPR Sentry Http | TryParseSentryTraceHeader, AddSentryTraceHeader, GetBaseUrl | None |
| 6150966 | "NPR Sentry Metadata" | NPR Sentry Metadata | WriteFrontendMetadataJson, WriteTagsForBackendEvent, WriteSpanTags, GetEnvironment, WriteModulesJson, OnCustomMethod (subscriber) | Subscribes to `OnCustomMethod` on "NPR POS JavaScript Interface" (codeunit) for `getSentryMetadata` |
| 6150994 | "NPR Sentry Scope" | NPR Sentry Scope | InitScopeAndTransaction (4 overloads), StartSpan, HttpInvoke, ReportRun (2 overloads), PageRunModal (2 overloads), RecordFindSet, RecordFind, RecordDelete, RecordIsEmpty, RecordNext, DeleteAll, CodeunitRun, Confirm, StrMenu, AddError, AddLastErrorInEnglish, FinalizeScope, GetCurrentTraceId, GetCurrentSpanId, IsCurrentTransactionSampled, HasActiveTransaction | None |
| 6248499 | "NPR Sentry Transaction" | NPR Sentry Transaction | Create (2 overloads), Finish, GetRootSpanId, GetTraceId, GetSampled, GetRelease, IsActive, SetStatus, AddTag, AddData, SetDescription, SetOperation, SetSource, Log | None |

### Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| 6185086 | "NPR Sentry Example" | NPR Sentry Example | Card | Example page demonstrating Sentry transaction/scoping in page actions |

### Example Codeunits

| ID | Name | Caption | Implements | Description |
|----|------|---------|------------|-------------|
| 6184892 | "NPR POS Action Sentry Example" | NPR POS Action Sentry Example | "NPR IPOS Workflow" | Example POS workflow demonstrating Sentry spans, HTTP calls, page interaction, DB queries, and error reporting |
| 6248502 | "NPR Sentry Session Example" | NPR Sentry Session Example | — | Example codeunit for background sessions with Sentry trace continuation |

## Events

| ID | Name | Caption | Raised By | When | Parameters |
|----|------|---------|-----------|------|------------|
| — | OnCustomMethod | — | "NPR POS JavaScript Interface" (codeunit) | Front-end invokes `getSentryMetadata` | Method (Text), Context (JsonObject), POSSession (Codeunit "NPR POS Session"), FrontEnd (Codeunit "NPR POS Front End Management"), var Handled (Boolean) |

## Labels

| Label Variable | Caption (EN) | Appears In | Usage Context |
|---------------|--------------|------------|---------------|
| ActionDescription | `Sentry Telemetry example` | "NPR POS Action Sentry Example" (6184892) | POS workflow action description |
