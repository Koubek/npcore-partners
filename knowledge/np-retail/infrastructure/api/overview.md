---
type: concept
tags: [np-retail, api, infrastructure, rest]
relates: [np-retail/conventions.md]
updated: 2026-05-09
---

# NP Retail Custom REST API

NP Retail replaces standard Business Central OData and SOAP web services with a custom REST API layer that runs on its own infrastructure. All endpoints are served through the `api.npretail.app` domain.

## Architecture

The API is split across two source directories:

- **`_API`** — Core framework: session management, request/response abstractions, module routing, API key authentication, and webhook event categories
- **`_API_SERVICES`** — Module implementations: one subdirectory per API domain (POS, ticketing, memberships, ecommerce, etc.)

### Request Flow

```
Outside BC → api.npretail.app (Cloudflare Workers proxy)
    → BC OData/Codeunit (npr_rest_api webservice)
        → NPR API Request Processor (6185052)
            → NPR API Module Resolver (interface)
                → Resolver per module → Handler per module
```

The proxy forwards requests to the `NPR API Request Processor` codeunit, published as the `npr_rest_api` OData webservice. The processor deserializes the incoming JSON, resolves the module from the first path segment via `NPR API Module` enum, checks permission sets, and delegates to the module's handler.

### Module Resolution

Each API domain maps to a value in `enum 6059812 "NPR API Module"`, which implements the `NPR API Module Resolver` interface. The enum value provides:
- **Segment name** — the first URL path segment (e.g., `pos`, `ticket`, `membership`)
- **Implementation** — the codeunit that handles resolution for that module

When a segment name is mapped to an `NPR API Module` enum value, the resolver's `Resolve()` method returns an `NPR API Request Handler` implementation that processes the actual business logic.

### Endpoint Routing

Within each module, the handler's `Handle()` procedure receives an `NPR API Request` object with the full path, HTTP method, query parameters, headers, and body. Handlers use `request.Match(method, pathTemplate)` to route to specific operations (e.g., `request.Match('GET', '/pos/unit/:id')`).

## Authentication & Authorization

NP Retail uses a custom API key system for authentication:

- **API Keys** — JWT-based (RS256 signed) keys issued by the `bc-rest-api-proxy-auth` service at `https://bc-rest-api-proxy-auth.npretail.app/api`
- **Key Lifecycle** — Created, rotated, revoked, or activated via `NPR NP API Key Mgt.` (6248565), which calls the proxy-auth service
- **Entra App Registration** — Each API key can be linked to one or more Entra ID applications for OAuth2/OIDC flows
- **Permission Sets per Key** — Each API key is assigned granular permission sets (e.g., `NPR API POS`, `NPR API Ticket`) via the `NPR NaviPartner API Key Perm.` table. Only `NPR NP RETAIL` is explicitly forbidden.
- **JWT Verification** — The `NPR JWT RS256 Verification` codeunit (6248567) validates JWT claims (iss, aud, exp, iat, nbf), with signature verification prepared but currently commented out

### Permission Enforcement

The `NPR API Request Processor` checks that the calling user has the required permission set for each module:
```
HasUserPermissionSetAssigned(UserSecurityId, CompanyName, apiModuleResolver.GetRequiredPermissionSet())
```
This ensures that even users with "BC365 FULL ACCESS + NPR RETAIL" cannot call a module without the specific permission set being explicitly assigned.

## Versioning

API versioning is done via the `x-api-version` HTTP header (a date value). The `NPR API Request.ApiVersion()` method returns the header value or `Today()` if absent. Individual handlers can branch on this value for backward compatibility.

## Cross-Cutting Concerns

- **Sentry Tracing** — Every request is instrumented with Sentry spans via `NPR Sentry`. The processor creates parse, handle, and finalization spans. The proxy forwards scoped `x-sentry-trace-header` for distributed tracing.
- **Cache Awareness** — `Request.SkipCacheIfNonStickyRequest()` uses the `x-server-cache-id` header to determine whether caching is safe (same-server requests may use cache; cross-server requests force `SelectLatestVersion`).
- **Performance Metadata** — Response headers include `x-npr-start-time`, `x-npr-end-time`, `x-npr-duration`, and (with `API_PERF_DEBUG` define) SQL row/statement counts.
- **Webhooks** — The `NPR All Webhooks` permission set consolidates all webhook codeunits for easy exclusion from API permission sets. Webhook event categories are defined in `NPR Webhook Event Category` enum extension.

## Module-Service Pattern

Each `_API_SERVICES` module follows a consistent structure:

```
ModuleDir/
  ModuleResolver.Codeunit.al   — implements NPR API Module Resolver
  ModuleHandler.Codeunit.al    — implements NPR API Request Handler
  ModuleAPI.Codeunit.al        — business logic (optional)
  ApiFunctions.Enum.al         — function enum for the module (optional)
  Module.PermissionSet.al      — permission set for the module
```

## Relation to Fern API Docs

The public API documentation (OpenAPI/Swagger) is maintained in a separate repository (`navipartner/documentation`) using Fern, an API documentation platform. The Fern docs define the schema and endpoints that the BC codeunits implement.
