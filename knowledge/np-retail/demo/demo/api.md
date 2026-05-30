---
type: reference
tags: [np-retail, demo, demo-module, codeunits]
relates: [np-retail/demo/demo/overview.md]
updated: 2026-05-09
---

# Demo — API Reference

## Codeunits

| ID | Name | Purpose |
|----|------|---------|
| 6059866 | NPRDemoHelperImplementation | Demo data creation and configuration helpers |

### NPRDemoHelperImplementation (6059866)
Key procedures:
- `CreateMPOSUser(Username: Text; Password: Text; Company_Name: Text; URL: Text; POSUnit: Code[20])` — creates user setup + MPOS QR code record with connection parameters, generates QR code
- `UpdatePasswordPaymentGateway(PaymentCode: Code[20]; "Demo Password": Text)` — updates Adyen payment gateway API password for demo environment
- `UpdatePasswordCollectStore(StoreCode: Code[20]; Password: Text)` — updates collect store API password credentials for demo
