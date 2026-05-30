---
type: reference
tags: [np-retail, pos, mobile-emergency, mobile-emergency-pos]
relates:
  - np-retail/pos/mobile-emergency-pos/overview.md
updated: 2026-05-09
---

# Mobile Emergency POS Module — API Reference

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| *(unknown)* | "NPR Emergency mPOS PmntIntgr" | Emergency mPOS PmntIntgr | Extensible | Payment integration type for emergency POS (e.g., Adyen) |
| *(unknown)* | "NPR Emergency mPOS ScannerType" | Emergency mPOS ScannerType | Extensible | Scanner hardware type for emergency POS |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6150955 | "NPR Emergency mPOS Setup" | Emergency mPOS Setup | PK: Code (Code[20]) | Central setup. ~15 fields covering NP Pay payment integration (Adyen enc key, API key, merchant account, environment), payment methods (Cash/EFT/Manual), terminal config (Url, Poi Id, Store Id, Scanner Type), BC connection (CSV Url, POS Unit, Salesperson, SMS/Email templates), environment detection (on-prem vs SaaS). Method: GetSetup(): Text (returns full JSON config) |
| *(unknown)* | "NPR Emergency POS Pay Methods" | Emergency POS Pay Methods | PK: Emergency POS Setup Code + POS Payment Method Code | Manual payment methods available in emergency mode alongside primary cash/EFT |
| *(unknown)* | "NPR NP Pay POS Payment Setup" | NP Pay POS Payment Setup | PK: Code | NP Pay/Adyen payment integration configuration (encryption keys, API key, merchant account, environment) |

### Table Details

**6150955 "NPR Emergency mPOS Setup"** — Full configuration provider:
- `GetSetup()`: Builds a comprehensive JSON object with all emergency POS configuration:
  - Adyen terminal details (EncKeyId, EncKeyVersion, EncKeyPassphrase, ApiKey, MerchantAccount, Environment, TerminalUrl, PoiId, StoreId)
  - Payment methods (Cash, EFT as JsonObject with Code/Description/MonetaryUnit/RoundingType; ManualPaymentMethods as JsonArray)
  - BC environment detection (OnPrem → BasicAuth with OData V4 + API URLs; SaaS → OAuth with AAD Tenant ID + Environment Name)
  - Company info (Name, ID), communication templates (SMS, Email), salesperson code, CSV URL
  - Scanner type

## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
|----|------|---------|---------------|---------------|
| 6248184 | "NPR Emergency mPOS Api" | NPR Emergency mPOS Api | InitEmergencyMPOSWebService(), GetSetup(setupCode): Text, GetSetupCodes(): Text, WebServiceCodeunitId(): Integer | None (web service endpoint) |

### Codeunit Details

**6248184 "NPR Emergency mPOS Api"** — Public web service codeunit:
- `OnRun()`: Creates/verifies the `emergency_mpos_service` tenant web service
- `InitEmergencyMPOSWebService()`: Called from setup to register the web service with tenant-scoped access (All Tenants = false via OnBeforeInsertWebServiceAggregate subscriber)
- `GetSetup(setupCode)`: Returns full JSON configuration for a given setup code (delegates to `"NPR Emergency mPOS Setup".GetSetup()`)
- `GetSetupCodes()`: Returns JSON array of all configured setup codes
- Web service is accessible at: `.../api/<tenant>/<company>/emergency_mpos_service`

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR Emergency mPOS Setup List" | Emergency mPOS Setup List | "NPR Emergency mPOS Setup" | Setup list page |
| *(unknown)* | "NPR Emergency mPOS Setup" | Emergency mPOS Setup | "NPR Emergency mPOS Setup" | Setup card/editor |
| *(unknown)* | "NPR Emergency POS Pay Methods" | Emergency POS Pay Methods | "NPR Emergency POS Pay Methods" | Manual payment method configuration |
| *(unknown)* | "NPR NP Pay POS Payment Setup" | NP Pay POS Payment Setup | "NPR NP Pay POS Payment Setup" | NP Pay/Adyen configuration |
| *(unknown)* | "NPR NP Pay POS Payment Setups" | NP Pay POS Payment Setups | "NPR NP Pay POS Payment Setup" | NP Pay setup list |
| *(unknown)* | "NPR QR Code Scan Part" | QR Code Scan Part | — | QR code scanning page part |
