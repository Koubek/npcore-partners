---
type: reference
tags: [np-retail, infrastructure, feature-management]
relates: [np-retail/infrastructure/feature-management/overview.md]
updated: 2026-05-09
---

# Feature Management Module — API Reference

## Enums

| ID | Name | Caption | Values | Extensible | Description |
|----|------|---------|--------|------------|-------------|
| 6014577 | "NPR Feature" | NPR Feature | " " (Unknown), Retail, Ticket Essential, Ticket Advanced, Ticket Wallet, Ticket Dynamic Price, NaviConnect, Membership Essential, Membership Advanced, HeyLoyalty, Shopify, Shopify Ecommerce Order Experience, POS Scenarios Obsoleted, New POS Editor, POS Statistics Dashboard, NP Email, New Email Experience, POS Webservice Sessions, New Sales Receipt Experience, New EFT Receipt Experience, Magento, POS License Billing Integration, MemberMediaInCloudflare, New Attraction Print Experience, New Restaurant Print Experience, New Voucher Reservation | ✓ | Extensible enum mapping every NP Retail product area to its feature implementation |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6060019 | "NPR Feature" | NaviPartner Feature | Id (clustered), Feature (unique) | Stores enabled/disabled state per Feature enum value, plus Description |

## Pages

| ID | Name | Caption | PageType | SourceTable | Description |
|----|------|---------|----------|-------------|-------------|
| 6151094 | "NPR Feature Management" | NaviPartner Feature Management | List | NPR Feature | Admin page listing all features with enable/disable toggle; refreshes experience tier on close |

## Interfaces

| Name | Methods | Description |
|------|---------|-------------|
| "NPR Feature Management" | AddFeature(), IsFeatureEnabled(): Boolean, SetFeatureEnabled(Boolean) | Contract each `NPR Feature` enum value implements to provide feature logic |

## Codeunits

| ID | Name | Description |
|----|------|-------------|
| — | "NPR Unknown Feature" | Fallback implementation for unrecognized/empty feature values |
| — | "NPR Retail Feature" | Retail module's feature implementation |
| — | "NPR POS Stat Dashboard Feature" | POS Statistics Dashboard feature |
| — | Various ($FEATURE_NAME$ Feature) | One codeunit per enum value, implementing the interface |
