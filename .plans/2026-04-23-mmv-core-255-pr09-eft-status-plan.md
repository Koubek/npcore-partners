# PR09 EFT `/cloud/status` Semantics Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers-extended-cc:executing-plans to implement this plan task-by-task.

**Goal:** Change `GetTransactionStatus` in the EFT Adyen Cloud API handler so `status: Failed` is reserved for unhandled system errors, while handled declines (wrong PIN, refused card, shopper cancel) report `status: Completed + successful: false`.

**Architecture:** Single-procedure rewrite that pivots the state-machine on `Finished` (lifecycle terminal marker) instead of `External Result Known`, then uses `External Result Known` to distinguish `Completed` (clean outcome, check `successful`) from `Failed` (system error). No schema change, no new fields, no new event subscribers.

**Tech Stack:** AL (Business Central), BC28 dev env (`.env`), `[HttpClientHandler]` test harness, `/bcdev` skill for compile/publish/test.

**Design doc:** `.plans/2026-04-23-mmv-core-255-pr09-eft-status-design.md`

**Branch:** `mmv/core-255-pr09-eft-status-semantics` (already created off `mmv/core-255-pr08-open-endpoint`).

---

## Task 0: Commit design doc on PR09 branch

**Files:**
- Add: `.plans/2026-04-23-mmv-core-255-pr09-eft-status-design.md`
- Add: `.plans/2026-04-23-mmv-core-255-pr09-eft-status-plan.md`
- Add: `.plans/2026-04-23-mmv-core-255-pr09-eft-status-plan.md.tasks.json`

**Step 1: Stage only the new .plans files (do NOT stage `Application/app.json` or `Test/app.json` — CLAUDE.md forbids committing those).**

```bash
git add .plans/2026-04-23-mmv-core-255-pr09-eft-status-design.md \
        .plans/2026-04-23-mmv-core-255-pr09-eft-status-plan.md \
        .plans/2026-04-23-mmv-core-255-pr09-eft-status-plan.md.tasks.json
```

**Step 2: Commit.**

```bash
git commit -m "$(cat <<'EOF'
docs(pos-api): add PR09 design + plan for /cloud/status semantics (CORE-255)

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>
EOF
)"
```

**Step 3: Verify clean state.**

```bash
git status --short
```

Expected: only `M Application/app.json` and `M Test/app.json` remain (local BC28 dev bumps — do not commit).

---

## Task 1: Flip assertions in existing declined-payment test (TDD red phase)

This test currently asserts the OLD semantics (`status = 'Failed'` for a handled decline). Rewrite its assertions to match the NEW semantics. It will fail against the current (unchanged) `GetTransactionStatus` — that is the TDD red.

**Files:**
- Modify: `Test/src/Tests/API/EFTAPITests.Codeunit.al:852-925`

**Step 1: Open the file and locate `EFT_E2E_FailedPayment_StatusReturnsFailed`.**

Read `Test/src/Tests/API/EFTAPITests.Codeunit.al` around lines 852-925 to refresh the full procedure body (mock handler attribute, variables, assertions).

**Step 2: Rename the procedure and flip assertions.**

Change the procedure name from `EFT_E2E_FailedPayment_StatusReturnsFailed` to `EFT_E2E_DeclinedPayment_StatusIsCompletedWithSuccessfulFalse`.

Change the `// [SCENARIO]` comment to:
```
// [SCENARIO] Full E2E: prepare -> start (mocked declined) -> poll (Completed + successful:false) -> verify no paymentDelta
```

Replace these assertions (around lines 906-910):
```al
Assert.IsTrue(ResponseBody.Get('status', JToken), 'Poll should return status');
Assert.AreEqual('Failed', JToken.AsValue().AsText(), 'Status should be Failed after declined payment');

Assert.IsTrue(ResponseBody.Get('successful', JToken), 'Poll should return successful');
Assert.IsFalse(JToken.AsValue().AsBoolean(), 'successful should be false for declined payment');
```

With:
```al
Assert.IsTrue(ResponseBody.Get('status', JToken), 'Poll should return status');
Assert.AreEqual('Completed', JToken.AsValue().AsText(), 'Status should be Completed for a handled decline (terminal gave a clean negative result)');

Assert.IsTrue(ResponseBody.Get('successful', JToken), 'Poll should return successful');
Assert.IsFalse(JToken.AsValue().AsBoolean(), 'successful should be false for a handled decline');
```

Add an extra assertion after the existing `resultCode` / `resultMessage` checks:
```al
Assert.IsTrue(EFTTransactionRequest."External Result Known", 'External Result Known should be true — terminal returned a clean decline');
```
(This replaces/augments the existing `External Result Known` assertion at the bottom so the test explicitly captures the "handled decline" invariant.)

Leave the no-delta-fields assertions unchanged (they remain valid — no payment line is inserted for a decline).

**Step 3: Do NOT run the test yet.** We're writing red tests in Task 1 + Task 2 and will run them together in Task 3.

---

## Task 2: Add new system-error test + mock handler (TDD red phase, second case)

Add a new test that simulates a true system error (HTTP 500 from Adyen) and asserts `status: Failed`.

**Files:**
- Modify: `Test/src/Tests/API/EFTAPITests.Codeunit.al`

**Step 1: Add the test procedure.** Place it immediately after the renamed declined-payment procedure (so the three E2E payment tests — happy, declined, system-error — sit together).

```al
[Test]
[TestPermissions(TestPermissions::Disabled)]
[HandlerFunctions('MockAdyenCloudSystemErrorResponse')]
procedure EFT_E2E_SystemError_StatusReturnsFailed()
var
    LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
    Assert: Codeunit Assert;
    EFTTransactionRequest: Record "NPR EFT Transaction Request";
    Response: JsonObject;
    Body: JsonObject;
    QueryParams: Dictionary of [Text, Text];
    Headers: Dictionary of [Text, Text];
    ResponseBody: JsonObject;
    JToken: JsonToken;
    SaleId: Guid;
    TransactionId: Text;
    TransactionGuid: Guid;
begin
    // [SCENARIO] Full E2E: prepare -> start (mocked HTTP 500, InvokeAPI TryFunction returns false)
    //            -> poll returns Failed (system error, External Result Known = false)
    Initialize();
    InitializeAdyenPaymentTypeSetup();

    // [GIVEN] A sale with one item line (100.00)
    SaleId := CreateTestSale();

    // [WHEN] POST /pos/sale/:saleId/eft/prepare
    Body.Add('amount', _Item."Unit Price");
    Response := LibraryNPRetailAPI.CallApi('POST', '/pos/sale/' + FormatGuid(SaleId) + '/eft/prepare', Body, QueryParams, Headers);

    // [THEN] Prepare returns OK
    Assert.IsTrue(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Prepare EFT should succeed');
    ResponseBody := LibraryNPRetailAPI.GetResponseBody(Response);
    Assert.IsTrue(ResponseBody.Get('transactionId', JToken), 'Prepare should return transactionId');
    TransactionId := JToken.AsValue().AsText();

    // [WHEN] POST /pos/sale/:saleId/eft/:transactionId/cloud/start (mocked HTTP 500)
    Clear(Body);
    Response := LibraryNPRetailAPI.CallApi('POST', '/pos/sale/' + FormatGuid(SaleId) + '/eft/' + TransactionId + '/cloud/start', Body, QueryParams, Headers);

    // [THEN] Start still returns OK with processed=true (the API call itself was handled by our handler)
    Assert.IsTrue(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Start EFT should respond 200 even on system error');
    ResponseBody := LibraryNPRetailAPI.GetResponseBody(Response);
    Assert.IsTrue(ResponseBody.Get('processed', JToken), 'Start should return processed');
    Assert.IsTrue(JToken.AsValue().AsBoolean(), 'processed should be true');

    // [WHEN] GET /pos/sale/:saleId/eft/:transactionId/cloud/status
    Clear(Body);
    Clear(QueryParams);
    Response := LibraryNPRetailAPI.CallApi('GET', '/pos/sale/' + FormatGuid(SaleId) + '/eft/' + TransactionId + '/cloud/status', Body, QueryParams, Headers);

    // [THEN] Poll returns Failed — this is the "unknown state, lock the station" case
    Assert.IsTrue(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Poll EFT should succeed');
    ResponseBody := LibraryNPRetailAPI.GetResponseBody(Response);

    Assert.IsTrue(ResponseBody.Get('status', JToken), 'Poll should return status');
    Assert.AreEqual('Failed', JToken.AsValue().AsText(), 'Status should be Failed only for unhandled system errors');

    Assert.IsTrue(ResponseBody.Get('successful', JToken), 'Poll should return successful');
    Assert.IsFalse(JToken.AsValue().AsBoolean(), 'successful should be false');

    // [THEN] System error must NOT include delta fields (no payment line created)
    Assert.IsFalse(ResponseBody.Contains('refreshedSaleLines'), 'System-error payment should NOT include refreshedSaleLines');
    Assert.IsFalse(ResponseBody.Contains('refreshedPaymentLines'), 'System-error payment should NOT include refreshedPaymentLines');
    Assert.IsFalse(ResponseBody.Contains('totalSalesAmountInclVat'), 'System-error payment should NOT include totalSalesAmountInclVat');

    // [THEN] EFT Transaction Request reflects unknown-outcome state
    Evaluate(TransactionGuid, TransactionId);
    EFTTransactionRequest.GetBySystemId(TransactionGuid);
    Assert.IsFalse(EFTTransactionRequest."External Result Known", 'External Result Known should be false — HTTP failed');
    Assert.IsFalse(EFTTransactionRequest.Successful, 'EFT Transaction should NOT be marked Successful');
    Assert.AreNotEqual(0DT, EFTTransactionRequest.Finished, 'Finished should be set — lifecycle ended (system error is still a terminal state). Locks the GetTransactionStatus pivot on Finished.');
end;
```

**Step 2: Add the mock handler.** Place it next to the other two `[HttpClientHandler]` handlers in the test file.

```al
[HttpClientHandler]
procedure MockAdyenCloudSystemErrorResponse(Request: TestHttpRequestMessage; var Response: TestHttpResponseMessage): Boolean
begin
    // HTTP 500 causes EFTAdyenCloudProtocol.InvokeAPI (a [TryFunction]) to hit its Error() branch
    // and return false, driving the Start handler's system-error fallback.
    Response.Content.WriteFrom('{"error":"Adyen terminal unreachable"}');
    Response.HttpStatusCode := 500;
    Response.ReasonPhrase := 'Internal Server Error';
    exit(false);
end;
```

**Step 3: Do NOT run tests yet.** Red-run happens in Task 3.

---

## Task 3: Compile + run red tests to confirm the two failing assertions

Before changing production code, confirm both tests fail for the right reason. Per CLAUDE.md use the `/bcdev` skill.

**Step 1: Compile Application + Test apps.**

Invoke `/bcdev` with the build command (target BC28, `-suppressWarnings`). Make sure both apps publish cleanly.

**Step 2: Run the three EFT E2E test procedures.**

Use `/bcdev` to run test codeunit `NPR EFT API Tests`, filtered to:
- `EFT_E2E_HappyPath_PrepareStartPollComplete` (should still PASS — unchanged semantics)
- `EFT_E2E_DeclinedPayment_StatusIsCompletedWithSuccessfulFalse` (should FAIL — current code still returns `'Failed'`)
- `EFT_E2E_SystemError_StatusReturnsFailed` (should FAIL — current code returns `'Initiated'` since `External Result Known = false` + `Started <> 0DT`, falling through to the `Initiated` branch)

**Step 3: Read the failure output carefully.**

Declined test expected failure message:
```
Status should be Completed for a handled decline ... Expected: 'Completed' / Actual: 'Failed'
```

System-error test expected failure message:
```
Status should be Failed only for unhandled system errors ... Expected: 'Failed' / Actual: 'Initiated'
```

If EITHER test fails for a different reason (compile error, missing setup, wrong mock wiring), STOP and fix that before moving on — do NOT proceed to Task 4 on a false-red.

---

## Task 4: Rewrite `GetTransactionStatus` (TDD green phase)

**Files:**
- Modify: `Application/src/POS Payment/EFT/Integrations/Adyen/APICloud/APIPOSEFTAdyenCloud.Codeunit.al:323-335`

**Step 1: Replace the procedure body.**

Current (lines 323-335):
```al
local procedure GetTransactionStatus(EFTTransactionRequest: Record "NPR EFT Transaction Request"): Text
begin
    if not EFTTransactionRequest."External Result Known" then begin
        if EFTTransactionRequest.Started <> 0DT then
            exit('Initiated');
        exit('Prepared');
    end;

    if EFTTransactionRequest.Successful then
        exit('Completed');

    exit('Failed');
end;
```

Replace with:
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

No comments added — the code is self-explanatory given the field semantics, and CLAUDE.md says no "thinking out loud" comments.

**Step 2: Do not modify any other file.** Scope is strictly this one procedure.

---

## Task 5: Recompile and re-run tests (TDD green verification)

**Step 1: Compile** Application + Test apps via `/bcdev` (BC28, `-suppressWarnings`). Must be clean.

**Step 2: Run the three EFT E2E test procedures** (same three as Task 3). All three must now PASS:
- `EFT_E2E_HappyPath_PrepareStartPollComplete` → PASS (unchanged path: `External Result Known = true, Successful = true` → `Completed`)
- `EFT_E2E_DeclinedPayment_StatusIsCompletedWithSuccessfulFalse` → PASS (new: `External Result Known = true, Successful = false` → `Completed`)
- `EFT_E2E_SystemError_StatusReturnsFailed` → PASS (new: `Finished <> 0DT, External Result Known = false` → `Failed`)

**Step 3: Run the full `NPR EFT API Tests` codeunit** to confirm no collateral damage (Prepare tests, print tests, Poll_InvalidId test, etc.).

If any unrelated test fails, stop and investigate — do not force-commit over it.

---

## Task 6: LSP check for new warnings

Per CLAUDE.md: "if LSP plugins are available for the language, use them to make sure you have not introduced any new warnings or errors."

**Step 1:** Run `LSP` tool operation `documentSymbol` on:
- `Application/src/POS Payment/EFT/Integrations/Adyen/APICloud/APIPOSEFTAdyenCloud.Codeunit.al`
- `Test/src/Tests/API/EFTAPITests.Codeunit.al`

**Step 2:** Check the AL Language server diagnostics output (as reflected by the `/bcdev` compile output with `-suppressWarnings` disabled, if needed). Confirm no new warnings or errors attributable to this change.

**Step 3:** If any new warning appears that was not present before, resolve it before committing.

---

## Task 7: Commit implementation

**Files staged:**
- `Application/src/POS Payment/EFT/Integrations/Adyen/APICloud/APIPOSEFTAdyenCloud.Codeunit.al`
- `Test/src/Tests/API/EFTAPITests.Codeunit.al`

**Step 1: Verify `Application/app.json` and `Test/app.json` are NOT staged.** CLAUDE.md forbids committing those.

```bash
git status --short
```

Expected modified-but-not-staged: only `Application/app.json` and `Test/app.json`.

Staged: the two files above.

**Step 2: Commit.**

```bash
git add "Application/src/POS Payment/EFT/Integrations/Adyen/APICloud/APIPOSEFTAdyenCloud.Codeunit.al" \
        Test/src/Tests/API/EFTAPITests.Codeunit.al

git commit -m "$(cat <<'EOF'
refactor(pos-api): distinguish handled decline from system error in /cloud/status (CORE-255)

GET /pos/sale/:saleId/eft/:transactionId/cloud/status now returns
status=Failed only for unhandled system errors (HTTP failure, parse
error). Handled declines (wrong PIN, refused card, shopper cancel)
return status=Completed with successful=false, letting API consumers
cleanly distinguish "try another card" from "station needs employee
intervention".

The state mapping now pivots on Finished (lifecycle terminal marker)
rather than External Result Known, preserving the Initiated transient
state for the genuine in-flight case (concurrent poll during the
blocking /cloud/start call).

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>
EOF
)"
```

**Step 3:** Verify commit.

```bash
git log --oneline -3
git show --stat HEAD
```

---

## Task 8: Independent code review via `/pal:clink` codex gpt-5.4 extra-high

Per user's global CLAUDE.md: after execution, run an independent code review with `/pal:clink` codex CLI, gpt-5.4 extra-high reasoning.

**Step 1:** Invoke the `/pal:clink` skill with:
- CLI: `codex`
- Model: `gpt-5.4`
- Reasoning effort: `extra-high`
- Context: diff of this PR (`git diff origin/mmv/core-255-pr08-open-endpoint...HEAD`) + the design doc + this plan
- Ask for: correctness review of the `GetTransactionStatus` state mapping, test coverage adequacy, and any blind spots (e.g. unusual EFT lifecycle edge cases where `Finished` could be 0DT while the transaction is terminal).

**Step 2:** Read the review carefully. Apply any findings that are technically sound (per `superpowers-extended-cc:receiving-code-review`: verify, don't blindly agree). Commit fixes as a follow-up if warranted.

---

## Out of scope

- Fern `.yml` update in `navipartner/documentation` repo. Flagged at PR-open time as a follow-up (the spec doc lives in a separate repo, handled separately).
- POS frontend / control addin consumer changes. Consumers reading `successful` already get correct outcome today; the `status`-label change is additive clarity for integrators.
- Any change to `ProcessResponse`, `EndGenericRequest`, `External Result Known`, or other EFT framework internals.

---

## Task persistence

A companion `.plans/2026-04-23-mmv-core-255-pr09-eft-status-plan.md.tasks.json` is written next to this plan so a new session can resume via:

```
/superpowers-extended-cc:executing-plans .plans/2026-04-23-mmv-core-255-pr09-eft-status-plan.md
```
