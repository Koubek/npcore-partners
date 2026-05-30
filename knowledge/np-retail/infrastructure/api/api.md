---
type: reference
tags: [np-retail, api, infrastructure, rest]
relates: [np-retail/infrastructure/api/overview.md]
updated: 2026-05-09
---

# API Module — API Reference

## Interfaces

| Name | Procedures | Description |
|------|-----------|-------------|
| "NPR API Module Resolver" | Resolve(var Request: Codeunit "NPR API Request"): Interface "NPR API Request Handler"; GetRequiredPermissionSet(): PermissionSetName: Text | Routes a request to its module handler; returns the required permission set name |
| "NPR API Request Handler" | Handle(var Request: Codeunit "NPR API Request"): Codeunit "NPR API Response" | Processes a matched request and produces a response |

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6059812 | "NPR API Module" | NPR API Module | helloworld(0), pos(1), externalpos(2, obsolete), inventory(3), account(4), customer(5), ticketing(6185039, obsolete), ticket(6185040), memberships(6185106, obsolete), membership(6185107), speedgate(6185116), voucher(6185120), attractionWallet(6248328), ecommerce(6248518), loyalty(6248329), coupon(6248330), npdesigner(6248598, obsolete), pdfdesigner(6248599), retailprint(6248650), sale(6248660), system(6248682, obsolete), restaurant(6150920) | Module routing enum, implements NPR API Module Resolver. Each value maps a URL segment to a resolver codeunit |
| 6059810 | "NPR API Error Code" | NPR API Error Code | 37+ error codes (generic_error, saas_tenant_not_found, unsupported_http_method, resource_not_found, etc.) | Extensible enum of structured error codes returned in API error responses |
| 6059813 | "NPR API HTTP Status Code" | NPR API HTTP Status Code | 200 OK, 201 Created, 202 Accepted, 203 Non-Authoritative Information, 204 No Content, 206 Partial Content, 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 500 Internal Server Error, 502 Bad Gateway, 503 Service Unavailable, 504 Gateway Timeout | Wraps standard HTTP status codes for use in API response builder |
| 6059924 | "NPR NP API Key Status" | NaviPartner API Key Status | _(empty, 0), Active(1), Revoked(2) | API key lifecycle state |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6151254 | "NPR NaviPartner API Key" | NaviPartner API Key | PK: Id (Guid, clustered); Description (Text[30]) | Stores API key metadata (not the key itself). Fields: Id, Description, Status (enum), Key Secret Hint (partial preview). DataPerCompany=false |
| 6151255 | "NPR NaviPartner API Key Perm." | NaviPartner API Key Permission | PK: NPR NP API Key Id (Guid), Permission Set ID (Code[20], clustered) | Maps API keys to permission sets. Fields: NPR NP API Key Id, Permission Set ID (validated against Aggregate Permission Set), Permission Set Name (FlowField from Aggregate Permission Set). Validates that Permission Set ID != 'NPR NP RETAIL' on insert/rename |

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6185051 | "NPR API Request" | NPR API Request | Init, HttpMethod, ModuleName, FullPath, Paths, QueryParams, Headers, BodyJson, GetMatchedRouteTemplate, ApiVersion, Match(Method,fullPath), GetData(tableId,fields), GetData(tableId,fields,id), GetPageKey, ApplyPageKey, GetNextPageUrl, SkipCacheIfNonStickyRequest(tableIds) | None |
| 6185052 | "NPR API Request Processor" | NPR API Request Processor | httpmethod(message): Text (service-enabled), RegisterService, ProcessRequest | None |
| 6185053 | "NPR API Response" | NPR API Response | Init, SetStatusCode(3 overloads), AddHeader(2 overloads), SetJson(3 overloads), GetResponseJson, GetResponseJsonBase64, IsInitialized, RespondOK(5 overloads), RespondCreated(4 overloads), RespondNoContent, RespondBadRequest(5 overloads), RespondResourceNotFound(2 overloads), RespondForbidden, CreateSuccessResponse(3 overloads), CreateErrorResponse(4 overloads), AddSentryTag, AddSentrySpanAttribute(4 overloads), AddMetadataHeaders | InternalEvent InvokeCurrent (used for fluent interface bind) |
| 6150730 | "NPR API Session Metadata" | NPR API Session Metadata | SetStartTime, SetStartRowsRead, SetStartStatementsExecuted, GetStartTime, GetStartRowsRead, GetStartStatementsExecuted | None |
| 6151009 | "NPR API WS Session Init" | NPR API WS Session Init | IsInitialized, GetSessionStartTime | None (subscribes to OnCompanyOpenCompleted on Company Triggers codeunit for API/OData/SOAP client types) |
| 6150902 | "NPR API Node Service" | NPR API Node Service | getnode(): Integer (service-enabled), RegisterService | None |
| 6248565 | "NPR NP API Key Mgt." | NPR NP API Key Mgt. | CreateNewApiKey(description): Text, RotateApiKey(NPAPIKey): Text, RevokeApiKey(NPAPIKey), ActivateApiKey(NPAPIKey), SynchronizeApiKeyPermissionsToEntraApps(NPAPIKeyId/Record), RegisterEntraAppAndCredentials(NPAPIKey), RemoveEntraApp(NPAPIKey, EntraApp) | None (subscribes to OnAfterInsertEvent, OnAfterDeleteEvent, OnAfterRenameEvent on NPR NaviPartner API Key Perm. table) |
| 6248567 | "NPR JWT RS256 Verification" | NPR JWT RS256 Verification | VerifyCompleteJWT(jwtToken, publicKey, expectedIssuer, expectedAudience, clockSkew): Boolean, GetTenantId, GetJTI, GetSubject, GetLastDetectedIssues | None |

### Codeunit Details

**6185051 "NPR API Request"** — Central request abstraction. Stores HTTP method, path segments, query params, headers, and body as a JsonToken. Key features:
- `Match(method, pathTemplate)` — Route matching with `:param` placeholder support, stores matched template
- `GetData(tableId, fields)` — Generic record reader: applies pagination via `pageSize`/`pageKey` query params, supports `sync` mode with `lastRowVersion` for incremental sync, returns `{data, morePages, nextPageKey, nextPageURL}`
- `ApiVersion()` — Reads `x-api-version` header, returns `Today()` as fallback
- `SkipCacheIfNonStickyRequest(tableIds)` — Checks `x-server-cache-id` header; if absent or mismatched, forces `SelectLatestVersion` to bypass caching for consistency-sensitive operations

**6185052 "NPR API Request Processor"** — Published as `npr_rest_api` web service. Entry point for all REST API requests. Responsibilities:
- Deserializes JSON envelope from proxy (`httpMethod`, `path`, `body`, `queryParams`, `headers`, `relativePathSegments`)
- Initializes Sentry transaction with optional distributed trace continuation via `x-sentry-trace-header`
- Resolves module from first path segment using `NPR API Module` enum
- Verifies the caller has the required permission set assigned
- Routes to handler based on HTTP method (GET/POST/PUT/PATCH/DELETE)
- Builds parameterized transaction name from matched route template

**6185053 "NPR API Response"** — Fluent API response builder. Uses a pattern with `EventSubscriberInstance = Manual` for fluent chaining. Features:
- Standard response methods: RespondOK (text/jsonObject/jsonArray/stream/jsonBuilder), RespondCreated, RespondNoContent, RespondBadRequest (with error code/message), RespondResourceNotFound, RespondForbidden
- Error responses use `NPR API Error Code` enum with structured `{code, message}` JSON
- Automatic `x-npr-*` metadata headers (start/end time, duration, SQL stats with `API_PERF_DEBUG`)
- Sentry integration: tags, span attributes, route template for performance monitoring
- Proxy metadata in response (`sentryTags`, `sentrySpanAttributes`, `sentryRouteTemplate`)

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| 6184874 | "NPR NaviPartner API URL" | NaviPartner API URL | StandardDialog | Shows the base API URL for the current company. URL varies by hosting: `api.npretail.app/{container}/BC/{company}` (Crane) or `api.npretail.app/{tenantId}/{env}/{company}` (others) |
| 6185107 | "NPR NP API Key List" | NaviPartner API Keys | List | API key management page. Actions: Create new key, Rotate key, Register Entra App, Revoke, Activate. Contains subpages for permissions and Entra app list |
| 6185108 | "NPR NP API Key Permission" | NaviPartner API Key Permissions | ListPart | Editable list part showing assigned permission sets for an API key |
| 6185109 | "NPR NP API Key Entra App List" | NaviPartner API Key Entra Application List | ListPart | Shows Entra ID applications linked to an API key. Source table is AAD Application. Has Delete action |

## PermissionSets

| ID | Name | Caption | Assignable | Description |
|----|------|---------|------------|-------------|
| 6014408 | "NPR API Core" | NPR API - Core | false | Base permission set including D365 AUTOMATION and Ext. Events - Subscr. Excludes NPR All Webhooks. Grants RIMD to all table data. Used by API modules as included permission set |
| 6014416 | "NPR All Webhooks" | NPR All Webhooks | false | Aggregates all webhook codeunits for exclusion from API permission sets. Grants X to: NPR Inc Ecom Sales Webhooks, NPR Retail Voucher Webhooks, NPR POS Webhooks, NPR MM MembershipWebHooks |

## EnumExtensions

| ID | Name | Extends | Values | Description |
|----|------|---------|--------|-------------|
| 6014420 | "NPR Webhook Event Category" | EventCategory | NPR POS(6014400), NPR Retail Vouchers(6014405), NPR Membership(6248397), NPR Sales Headers(6014410), NPR NPDesigner Manifest(6248595), NPR Restaurant(6014415) | Registers NP Retail webhook event categories in the BC event system |

## Labels

| Label Variable | Caption (EN) | Appears In | Usage Context |
|---------------|--------------|------------|---------------|
| EmptyPathErr | `The path is empty.` | NPR API Request Processor (6185052) | Error when request has empty relative path |
| UnsupportedHttpMethodErr | `Http method %1 is not supported` | NPR API Response (6185053) | Error for unsupported HTTP methods |
| UnsupportedErrorStatusCodeErr | `Status Code %1 is not a supported status code for error handling...` | NPR API Response (6185053) | Development error for invalid error status codes |
| ResourceNotFoundErr | `%1 Not Found` | NPR API Response (6185053) | Error when requested resource is not found |
| JwtInvalidFormatErr | `JWT token format is invalid` | NPR JWT RS256 Verification (6248567) | Invalid JWT structure |
| IssuerClaimMismatchErr | `Issuer claim does not match...` | NPR JWT RS256 Verification (6248567) | JWT issuer validation |
| AudienceClaimMismatchErr | `Audience claim does not match...` | NPR JWT RS256 Verification (6248567) | JWT audience validation |
| JwtExpiredErr | `JWT token has expired...` | NPR JWT RS256 Verification (6248567) | Token expiration error |
| JwtIssuedInFutureErr | `JWT token was issued in the future...` | NPR JWT RS256 Verification (6248567) | Future issue date error |
| JwtNotYetValidErr | `JWT token is not yet valid...` | NPR JWT RS256 Verification (6248567) | Not-before claim violation |
| JwtMissingClaimErr | `Requested claim is missing...` | NPR JWT RS256 Verification (6248567) | Missing claim error |
| JwtpayloadEmptyErr | `JWT payload is empty` | NPR JWT RS256 Verification (6248567) | Empty JWT payload |
| FailedToCreateApiKeyErr | `Failed to create API key...` | NPR NP API Key Mgt. (6248565) | API key creation failure |
| FailedToRevokeApiKeyErr | `Failed to revoke API key...` | NPR NP API Key Mgt. (6248565) | API key revocation failure |
| FailedToActivateApiKeyErr | `Failed to activate API key...` | NPR NP API Key Mgt. (6248565) | API key activation failure |
| FailedToRotateApiKeyErr | `Failed to rotate API key...` | NPR NP API Key Mgt. (6248565) | API key rotation failure |
| FailedToRegisterEntraAppErr | `Failed to register entra app...` | NPR NP API Key Mgt. (6248565) | Entra app registration failure |
| FailedToRemoveEntraAppErr | `Failed to remove existing Entra ID application...` | NPR NP API Key Mgt. (6248565) | Entra app removal failure |
| InvalidApiKeyFormatErr | `Invalid API Key format.` | NPR NP API Key Mgt. (6248565) | Wrong JWT structure for API key |
| InvalidApiKeySignatureErr | `Invalid API Key signature.` | NPR NP API Key Mgt. (6248565) | Signature validation failure |
| OnlySaaSSupportedErr | `NaviPartner API Key feature is supported in SaaS only!` | NPR NP API Key Mgt. (6248565) | Feature is cloud-only |
| AtLeastOnePermissionSetMustBeAssignedErr | `At least one permission set must be assigned...` | NPR NP API Key Mgt. (6248565) | Permission set required before Entra App registration |
| EntraAppNotFoundErr | `Entra ID application with Client ID %1 not found.` | NPR NP API Key Entra App List (6185109) | Entra app lookup failure |

## _API_SERVICES — Module Implementations

Each module in `_API_SERVICES` follows the Resolver + Handler pattern:

| Module | Directory | Resolver Codeunit | Handler Codeunit | Permission Set | Additional Files |
|--------|-----------|-------------------|------------------|----------------|-----------------|
| HelloWorld | HelloWorld/ | APIHelloWorldResolver | APIHelloWorld | APIHelloWorld.PermissionSet | — |
| POS | POS/ | APIPOSResolver | APIPOSHandler | APIPOS.PermissionSet | POSWebhook.Enum, POSWebhooks, sub-dirs: Entry, External Sale, Global Entry, Sale, Salesperson, Store, Unit |
| Inventory | inventory/ | APIInventoryResolver | APIInventory | APIInventory.PermissionSet | — |
| User Accounts | UserAccounts/ | UserAccountResolver | UserAccountAPI | APIAccount.PermissionSet | UserAccountPaymMethodAPI |
| Customer | customer/ | APICustomerResolver | APICustomer | APICustomer.PermissionSet | sub-dir: _public, handlers/ |
| Ticketing | ticketing/ | TicketingModuleResolver | TicketingApiHandler | APITicketing.PermissionSet | TicketingAPI, TicketingApiFunctions.Enum, TicketingApiTranslations, sub-dir: handlers/ |
| Memberships | memberships/ | MembershipsModuleResolver | MembershipApiHandler | APIMembership.PermissionSet | MembershipsAPI, MembershipApiFunctions.Enum, MembershipApiTranslation, sub-dir: handlers/, PaymentMethod/ |
| Speedgate | speedgate/ | ApiSpeedgateResolver | ApiSpeedgateHandler | APISpeedgate.PermissionSet | ApiSpeedgate, ApiSpeedgateFunctions.Enum, sub-dir: handlers/ |
| Retail Vouchers | RetailVouchers/ | RetailVModuleResolver | RetailVouchersApiHandler | APIRetailVoucher.PermissionSet | RetailVouchersAPI, RetailVoucherApiFunctions.Enum, RetailVoucherWebhooks, sub-dir: Handlers/ |
| Attraction Wallet | attractionWallet/ | AttrWalletModuleResolver | AttrWalletAPIHandler | APIAttrWallet.PermissionSet | AttrWalletAPI, AttrWalletApiFunctions.Enum, sub-dir: handlers/ |
| Ecommerce | ecommerce/ | EcomResolver | EcomApiHandler | APIEcom.PermissionSet | EcomAPI, EcomApiFunctions.Enum, sub-dir: incomingEcommerceSalesDocuments/ |
| Coupons | Coupons/ | CouponModuleResolver | CouponAPIHandler | APICoupon.PermissionSet | CouponAPI, CouponApiFunctions.Enum, sub-dir: handlers/ |
| Designer Manifest | designerManifest/ | NPDesignerManifestResolver | NPDesignerManifestAPI | APINPDesigner.PermissionSet | — |
| Retail Print | retailprint/ | APIRetailPrintResolver | APIRetailPrint | APIRetailPrint.PermissionSet | — |
| Sale | sale/ | SaleResolver | SalesApiHandler | APISale.PermissionSet | SalesAPI, SalesApiFunctions.Enum, SalesApiAgent, sub-dir: — |
| System | system/ | APISystemResolver | APISystem | APISystem.PermissionSet | — |
| Restaurant | restaurant/ | APIRestaurantResolver | APIRestaurantHandler | APIRestaurant.PermissionSet | APIRestaurant, APIRestKitchenOrders, APIRestaurantMenu |
