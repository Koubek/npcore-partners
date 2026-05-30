---
type: concept
tags: [np-retail, accounts, member-module, membership, loyalty]
relates: [pos/pos-core/overview.md, accounts/gdpr/overview.md]
updated: 2026-05-09
---

# Member Module — Overview

Comprehensive membership and loyalty management for NP Retail. Covers member lifecycle (registration, admission, alteration, renewal), loyalty points management, membership cards, communication, subscription services, admission services (scanner stations), and integration with POS for member transactions.

## Purpose

- **Member Management**: Full member lifecycle — create, edit, search, picture, communication preferences
- **Membership Management**: Membership types, entry tracking, auto-renewal, lim/cap configuration
- **Loyalty Program**: Points tracking, loyalty journal, tags, point entry tagging
- **Card Management**: Member card lifecycle, auto-renewal, card notifications
- **Admission Services**: Scanner station management, service entry logging, service setup
- **POS Integration**: Member lookup and selection at POS, POS actions for member operations
- **Delegated Registration**: Third-party member registration workflow
- **Foreign Members**: Cross-company member management
- **GDPR Integration**: Member data privacy management
- **Subscription**: Recurring subscription billing for memberships
- **Cloudflare Media**: Member photo/media storage via Cloudflare

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR MM Member` | Core member record |
| `NPR MM Membership Entry` | Membership transaction entries |
| `NPR MM Member Card` | Member card records |
| `NPR MM Loyalty Journal` | Loyalty point transactions |
| `NPR MM Point Entry` | Point earning/redeeming entries |
| `NPR MM Member Communication` | Member communication preferences |
| `NPR MM Admission Service Entry` | Admission scanner entries |
| `NPR MM Admission Scanner Stations` | Scanner station configuration |
| `NPR MM Membership Auto Renew` | Auto-renewal configuration |
| `NPR MM Foreign Members Setup` | Cross-company member setup |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `MMMemberRetailIntegr` | POS integration for member operations |
| `MMMembershipMgtInternal` | Core membership management logic |
| `MMMemberPOSUI` | POS UI handling for member screens |
| `MMGDPRManagement` | GDPR compliance for member data |
| `MMMemberWebServiceMgr` | Web service layer for member API |
| `MMMemberTicketManager` | Member ticket management |
| `MMMemberLimMgr` | Member limit/cap management |
| `MMAlterationJnlMgmt` | Member alteration journal |
| `MMForeignMembersMgr` | Cross-company member operations |
| `MMMembershipAutoRenew` | Auto-renewal processing |
| `MMImportMembers` | Bulk member import |
| `MMAttemptMemberArrival` | Arrival attempt processing |

## Enum

| Enum | Purpose |
|------|---------|
| `NPR MM Member Unique Identity` | Unique identity types for member identification |

## Query

| Query | Purpose |
|-------|---------|
| `MMMemberCardNotific` | Card notification query for members |

## Report

| Report | Purpose |
|--------|---------|
| `MMMemberEvaluation` | Member evaluation report |
