# PR09 — Distinguish handled decline from system error in EFT /cloud/status

CORE-255 · Branch: `mmv/core-255-pr09-eft-status-semantics` (base: `mmv/core-255-pr08-open-endpoint`)

## Problem

`GET /pos/sale/:saleId/eft/:transactionId/cloud/status` currently returns `status: Failed` for both:

1. **Handled declines** — the Adyen terminal reported a clean negative result (wrong PIN, refused card, shopper cancelled on the terminal, insufficient funds). The system functioned correctly; the cardholder simply didn't authenticate/authorize.
2. **Unhandled system errors** — the HTTP call never got a usable response back (Adyen returned 5xx, `Http.Send` threw, response couldn't be parsed). The station doesn't know whether the shopper was charged.

These two cases need very different UX on the API consumer side. A handled decline is "try another card"; an unhandled system error is "park the active sale, lock the station, page an employee." Conflating them forces the consumer to build heuristics on secondary fields.

## Design

The `NPR EFT Transaction Request` table already exposes three fields that, together, form a complete lifecycle state machine:

| Field | Meaning |
|---|---|
| `Started` | Timestamp when the Adyen HTTP call was kicked off. `0DT` = never started. |
| `Finished` | Timestamp set by the EFT framework (`EFTFrameworkMgt.EndGenericRequest`) when the handler chain returns. `0DT` = still in flight. Set in both success, handled-decline, and system-error paths. |
| `External Result Known` | `true` when the terminal returned a clean outcome (success *or* decline). `false` when we couldn't determine the outcome (HTTP/parse failure — `ProcessResponse` else-branch sets it to `not Started`). |

### New mapping in `GetTransactionStatus`

```al
local procedure GetTransactionStatus(EFTTransactionRequest: Record "NPR EFT Transaction Request"): Text
begin
    if EFTTransactionRequest.Finished = 0DT then begin
        if EFTTransactionRequest.Started = 0DT then
            exit('Prepared');
        exit('Initiated');
    end;

    if EFTTransactionRequest."External Result Known" then
        exit('Completed');

    exit('Failed');
end;
```

### State → status table

| Scenario | `Started` | `Finished` | `External Result Known` | `Successful` | Status | Change |
|---|---|---|---|---|---|---|
| Just prepared | 0DT | 0DT | false | false | `Prepared` | — |
| `/cloud/start` in flight (concurrent poll) | ≠0DT | 0DT | false | false | `Initiated` | — |
| Adyen returned success | ≠0DT | ≠0DT | true | true | `Completed` | — |
| Wrong PIN / refused / shopper cancel | ≠0DT | ≠0DT | true | false | **`Completed`** | **was `Failed`** |
| HTTP 5xx / `Http.Send` throws / parse fails | ≠0DT | ≠0DT | false | false | **`Failed`** | only remaining `Failed` case |

### Response shape

Unchanged. The endpoint already emits `successful`, `resultCode`, `resultMessage`, `cardNumber`, `cardName`, `authorizationNumber` whenever `External Result Known` is `true`. Those fields now populate for `Completed` in the handled-decline case too (which was already the behavior — only the `status` label changes for that scenario).

### What consumers should do

- `status: Failed` → "the station is in an unknown state, park the active sale and alert an employee"
- `status: Completed` + `successful: false` → "the transaction was attempted cleanly but not authorized; let the shopper try another card" (use `resultCode` / `resultMessage` for UX text)
- `status: Completed` + `successful: true` → success path, unchanged
- `status: Prepared` / `Initiated` → pre-call / in-call lifecycle, no consumer action

## Files touched

### Application

- `Application/src/POS Payment/EFT/Integrations/Adyen/APICloud/APIPOSEFTAdyenCloud.Codeunit.al`
  - `GetTransactionStatus` — rewrite the state-mapping as above. No changes to the handler procedures themselves, no new fields, no new event subscribers.

### Test

- `Test/src/Tests/API/EFTAPITests.Codeunit.al`
  - Update `EFT_E2E_FailedPayment_StatusReturnsFailed` → rename to `EFT_E2E_DeclinedPayment_StatusIsCompleted` and flip assertions: `status = 'Completed'`, `successful = false`, `resultCode` non-empty, `resultMessage` non-empty, no payment-delta fields, `External Result Known = true`.
  - Add `EFT_E2E_SystemError_StatusReturnsFailed`:
    - Uses a new `[HttpClientHandler] MockAdyenCloudSystemErrorResponse` that sets `Response.HttpStatusCode := 500` so `EFTAdyenCloudProtocol.InvokeAPI` (a `[TryFunction]`) hits its `Error(ErrorInvokeLbl, ...)` branch and returns `false`.
    - Flow: prepare → start (mocked 500) → poll → assert `status = 'Failed'`, `successful = false`, `External Result Known = false`, no payment-delta fields.
    - Existing happy-path test `EFT_E2E_HappyPath_PrepareStartPollComplete` is unaffected.

### Docs (separate repo, flagged at PR time — not in this PR)

- `navipartner/documentation` Fern `.yml` for `/pos/sale/:saleId/eft/:transactionId/cloud/status`: tighten the `status` enum description. Handled-decline responses have `status: Completed, successful: false`. `Failed` is only emitted for unhandled system errors.

## Risk / compatibility

- **Breaking for any consumer that checks `status == 'Failed'` to branch on decline UX.** Historically the consumer has `successful` available alongside `status`, so a robust consumer already keys off `successful`. The POS frontend and any integrator doc samples should be audited — mitigated by updating the Fern spec at the same time as this PR.
- `Initiated` remains observable only via concurrent polling during the 5-minute blocking `/cloud/start`. Unchanged from today.
- No schema change, no data migration. Existing in-flight records' final status is recomputed on the next poll from existing fields.

## Build & test commands (BC28 env from `.env`)

Using `/bcdev` skill:
- Compile Application + Test apps with `-suppressWarnings`.
- Publish both.
- Run test codeunit `NPR EFT API Tests` (the three EFT E2E procedures — happy, declined, new system-error).

## Commit / PR

One commit on `mmv/core-255-pr09-eft-status-semantics`:

> `refactor(pos-api): distinguish handled decline from system error in /cloud/status (CORE-255)`

PR body notes: behavior change for `status` field on the poll endpoint; `Failed` now reserved for unknown/system-error states; handled declines (wrong PIN, refused, shopper cancel) now report `Completed + successful: false`; downstream Fern spec update follow-up in `navipartner/documentation`.
