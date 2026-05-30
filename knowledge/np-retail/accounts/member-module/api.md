---
type: reference
tags: [np-retail, accounts, member-module, membership, loyalty, tables, codeunits, pages, enums, queries, reports]
relates: [accounts/member-module/overview.md]
updated: 2026-05-09
---

# Member Module — API Reference

## Tables (Selected)

| Table | Purpose |
|-------|---------|
| `NPR MM Member Info Capture` | Member info capture at POS |
| `NPR MM Membership Entry` | Membership entry ledger |
| `NPR MM Membership Entry Link` | Links membership entries to source documents |
| `NPR MM Member Card` | Member card records |
| `NPR MM Member Communication` | Communication preferences |
| `NPR MM Loyalty Journal` | Loyalty point journal |
| `NPR MM Loyalty Journal Line Tag` | Tags for loyalty journal lines |
| `NPR MM Loyalty Tag` | Loyalty tag definitions |
| `NPR MM Point Entry Tag` | Point entry tagging |
| `NPR MM Member Point Entry Tag` | Member-scoped point entry tags |
| `NPR MM Member Notific Entry` | Member notification queue entries |
| `NPR MM Member Notific Setup` | Notification configuration |
| `NPR MM Language` | Member language preferences |
| `NPR MM Admission Scanner Stations` | Scanner station configuration |
| `NPR MM Admission Service Entry` | Admission service transaction log |
| `NPR MM Admission Service Log` | Detailed admission service audit log |
| `NPR MM Admission Service Setup` | Admission service configuration |
| `NPR MM Members Alter Group` | Alteration group definitions |
| `NPR MM Members Alter Line` | Alteration line details |
| `NPR MM Membership Auto Renew` | Auto-renewal configuration |
| `NPR MM Member Arrival Log Entry` | Member arrival logging |
| `NPR MM Membership Lim Setup` | Member limit/cap setup |
| `NPR MM Member Comm Setup` | Communication integration setup |
| `NPR MM Foreign Members Setup` | Cross-company member setup |
| `NPR MM Members Points Summary` | Points summary per member |
| `NPR MM Memp Entry Tag Buff` | Temporary buffer for entry tag processing |

## Codeunits (Selected)

| Codeunit | Purpose |
|----------|---------|
| `MMMemberRetailIntegr` | POS integration events — handles member lookup, point earning/redeeming at POS |
| `MMMembershipMgtInternal` | Core membership logic — create/modify/terminate memberships |
| `MMMemberPOSUI` | POS member UI — member search, display, selection |
| `MMGDPRManagement` | GDPR operations — member data anonymization, consent tracking |
| `MMMemberWebServiceMgr` | SOAP/REST web service layer for external member API access |
| `MMMemberTicketManager` | Member ticket purchasing, redemption, and management |
| `MMMemberLimMgr` | Membership limit enforcement — spending caps, visit limits |
| `MMAlterationJnlMgmt` | Member alteration journal — tracks changes to member records |
| `MMForeignMembersMgr` | Cross-company member management (shared membership across legal entities) |
| `MMMembershipAutoRenew` | Scheduled auto-renewal processing for memberships |
| `MMImportMembers` | Bulk member import from external sources |
| `MMAttemptMemberArrival` | Processes member arrival attempts (scanner-based check-in) |
| `MMMemberCreateDemoData` | Creates demo member data for testing |

## Subdirectory Modules

| Path | Contents |
|------|----------|
| `DelegatedRegistration/` | Self-service/third-party member registration |
| `Integrations/` | External system integration (loyalty, CRM) |
| `Loyalty/` | Loyalty program specific logic and configurations |
| `Media/Cloudflare/` | Cloudflare-based member photo/media storage |
| `MemberAlteration/` | Member alteration journal processing |
| `MemberArrivalSS/` | Self-service member arrival kiosk |
| `MemberMgt/` | Core member management logic |
| `POSAction/` | POS action handlers for member operations |
| `ParkSale/` | Parked sale handling for member transactions |
| `Subscription/` | Recurring subscription billing |
| `_API/` | REST API endpoints for member module |
| `_public/` | Publicly exposed objects |

## Pages (Selected)

| Page | Purpose |
|------|---------|
| `MMCreateMembership` | Create new membership |
| `MMEditMembershipEntries` | Edit membership entry ledger |
| `MMMembershipKiosk` | Self-service kiosk page |
| `MMMembershipLoyaltyJnl` | Loyalty journal entry |
| `MMMemberCaptureList` | Member info capture list |
| `MMMemberRemoteSearch` | Remote member search |
| `MMMembersAutoRenewList` | Auto-renewal list |
| `MMAdmissionServiceLog` | Admission service log view |
| `MMForeignMembersSetup` | Foreign member configuration |

## Enums

| Enum | Purpose |
|------|---------|
| `NPR MM Member Unique Identity` | Defines unique member identifier types |

## Queries

| Query | Purpose |
|-------|---------|
| `MMMemberCardNotific` | Retrieves member card notifications for processing |

## Reports

| Report | Purpose |
|--------|---------|
| `MMMemberEvaluation` | Member evaluation and scoring report |
