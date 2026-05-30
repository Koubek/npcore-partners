---
type: concept
tags: [np-retail, infrastructure, bc-health]
relates: [np-retail/infrastructure/bc-health-check/api.md]
updated: 2026-05-09
---

# BC Health Check in NP Retail

A minimal health-check endpoint (available from BC23+) that exposes a SOAP/ODATA web service (`npr_bc_healthcheck`) as a Codeunit web service. It is registered automatically via `NPR BC Health Check Mgt.` on initialization.

The service simply reads the `Company Information` record to verify the BC instance is responsive and the database is accessible. Intended for external monitoring/load balancer health probes.
