---
type: concept
tags: [np-retail, pos, mobile-emergency, mobile-emergency-pos]
relates:
  - np-retail/pos/pos-core/overview.md
  - np-retail/pos/pos-payment/overview.md
  - np-retail/pos/mpos/overview.md
updated: 2026-05-09
---

# Mobile Emergency POS Module

The Mobile Emergency POS module provides a lightweight POS fallback solution that operates when the primary POS system is unavailable. It exposes a public web service API (`emergency_mpos_service`) for external mobile applications to create sales, process payments, and manage receipts during outages.

## Architecture

This module publishes a public codeunit web service (`"NPR Emergency mPOS Api"`, codeunit 6248184) that external apps call to:
- Fetch setup configuration for emergency POS operations
- List available setup codes

### Setup Configuration

The `"NPR Emergency mPOS Setup"` table (6150955) stores per-instance configuration:

| Category | Fields |
|----------|--------|
| **Payment** | NP Pay POS Payment Setup (Adyen encryption keys, API key, merchant account, environment), Cash Payment Method, EFT Payment Method, Manual Payment Methods, Payment Integration type |
| **Terminal** | Terminal URL, POI ID, Store ID, Scanner Type |
| **Communication** | CSV URL, SMS Template, Email Template |
| **Sales** | Salesperson/Purchaser Code, POS Unit |
| **BC Environment** | On-prem vs SaaS, OData V4 URL, API URL, Auth Type (BasicAuth vs OAuth), Tenant ID, Company ID |

### Emergency POS Payment Methods

The `"NPR Emergency POS Pay Methods"` table enumerates manual payment methods that can be used during emergency mode alongside the primary cash/EFT methods.

### Payment Integrations

The `"NPR Emergency mPOS PmntIntgr"` enum configures the payment provider for emergency transactions (e.g., Adyen terminal integration via NP Pay).

### Scanner Configuration

The `"NPR Emergency mPOS ScannerType"` enum defines supported scanner types for barcode scanning in emergency mode.

### Web Service API

The emergency POS service is registered as a tenant web service named `emergency_mpos_service` and provides:

- `GetSetup(setupCode)` — Returns a JSON object with all emergency POS configuration (payment methods, terminal details, BC connection info, etc.)
- `GetSetupCodes()` — Returns a JSON array of all configured setup codes

## Dependencies

- **POS Core** — POS Unit, POS Payment Method references
- **POS Payment** — Payment method configuration
- **NP Pay** — Adyen terminal payment integration
- **Infrastructure** — Azure AD Tenant, Environment Information, Key Vault (for encryption keys)

## Extension Points

Partners can add new payment integrations by adding values to the extensible `"NPR Emergency mPOS PmntIntgr"` enum and creating corresponding setup entries.
