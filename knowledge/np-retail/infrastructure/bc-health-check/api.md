---
type: reference
tags: [np-retail, infrastructure, bc-health]
relates: [np-retail/infrastructure/bc-health-check/overview.md]
updated: 2026-05-09
---

# BC Health Check Module — API Reference

## Codeunits

| ID | Name | Access | Description |
|----|------|--------|-------------|
| 6248444 | "NPR BC Health Check Mgt." | Internal | Registers the health check as a web service (`npr_bc_healthcheck`) — runs on module init |
| 6248440 | "NPR BC Health Check Service" | Public | Exposes `healthcheck()` procedure; reads Company Information table to verify DB responsiveness |

## Events

| Event | Publisher | Description |
|-------|-----------|-------------|
| OnInstall (implied) | Module install | `RegisterService()` called to publish the web service endpoint |

**Note:** Only compiled in BC23+ (`#if not BC17 and not BC18 and not BC19 and not BC20 and not BC21 and not BC22`).
