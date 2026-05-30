---
type: concept
tags: [np-retail, demo, demo-module]
relates:
updated: 2026-05-09
---

# Demo Module

Provides demo data creation and configuration helpers for NP Retail trial/onboarding scenarios. Automates user setup, MPOS QR code generation, payment gateway configuration, and collect store setup.

## Key Functions

### MPOS User Creation
`CreateMPOSUser(Username, Password, Company_Name, URL, POSUnit)`:
1. Creates or updates user setup with POS unit assignment
2. Creates or updates MPOS QR code record with connection parameters
3. Generates and persists the QR code for mobile POS connectivity

### Payment Gateway Demo Configuration
- `UpdatePasswordPaymentGateway(PaymentCode, "Demo Password")` — sets up Adyen API password for demo
- `UpdatePasswordCollectStore(StoreCode, Password)` — configures collect store API credentials for demo

### Dependencies
- **MPOS** — QR code generation for mobile POS
- **Payment Gateway** (Adyen) — demo password setup
- **Collect Store** (NpCs) — store credential setup
- **Web Service Auth** — API password management
