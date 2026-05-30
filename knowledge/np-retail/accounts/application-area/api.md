---
type: reference
tags: [np-retail, accounts, application-area, codeunits]
relates: [accounts/application-area/overview.md]
updated: 2026-05-09
---

# Application Area — API Reference

## Codeunits

### "EnableApplicationAreas"

Application area management codeunit. Key procedures:

- `EnableNPRApplicationAreas()` — registers and enables all NP Retail application areas
- `DisableNPRApplicationAreas()` — deactivates NP Retail application areas
- `GetApplicationAreaStatus(AreaName): Boolean` — checks if a specific application area is enabled
- `RegisterApplicationArea(AreaName, Description)` — registers a new application area

Operates through the standard BC Application Area Management facade (`Application Area Mgmt. Facade` codeunit).
