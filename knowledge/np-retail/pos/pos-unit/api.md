---
type: reference
tags: [np-retail, pos, unit, pos-unit]
relates:
  - np-retail/pos/pos-unit/overview.md
updated: 2026-05-09
---

# POS Unit Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6014684 | "NPR POS Unit Group" | POS Unit Group | PK: No. (Code[20]). Others: Description (Text[100]) | Logical grouping of POS units. OnDelete updates Salesperson references and deletes group lines. OnRename is blocked |
| *(unknown)* | "NPR POS Unit Group Line" | POS Unit Group Line | PK: No. + Line No. | Membership records linking POS units to groups |
| 6151176 | "NPR POS Hardware Profile" | POS Hardware Profile | PK: Code (Code[20]). Others: IP Address (Text[25]) | Hardware configuration for POS peripherals |
| 6150631 | "NPR POS Unit Event" | POS Unit Event | PK: POS Unit No. (Clustered). Others: Active Event No. (Code[20], TableRelation = Job WHERE NPR Event = CONST(true)) | Links POS units to active events. Methods: FindActiveEvent(POSUnitNo): Code[20], SetActiveEvent(POSUnitNo, EventNo), DeleteActiveEvent(POSUnitNo) |
| *(unknown)* | "NPR POS Ticket Receipt Text" | POS Ticket Receipt Text | — | Receipt text definitions (footer/header messages) |
| *(unknown)* | "NPR POS Unit Rcpt Text Profile" | POS Unit Rcpt Text Profile | — | Profiles mapping receipt text configurations to units |

## Pages

| ID | Name | Caption | Source Table | Description |
|----|------|---------|-------------|-------------|
| *(unknown)* | "NPR POS Unit Groups" | POS Unit Groups | "NPR POS Unit Group" | List of unit groups |
| *(unknown)* | "NPR POS Unit Group Card" | POS Unit Group Card | "NPR POS Unit Group" | Unit group card with lines |
| *(unknown)* | "NPR POS Unit Group Lines" | POS Unit Group Lines | "NPR POS Unit Group Line" | Group membership subpage |
| *(unknown)* | "NPR POS Hardware Profile" | POS Hardware Profile | "NPR POS Hardware Profile" | Hardware profile list+card |
| *(unknown)* | "NPR POS Unit Event List" | POS Unit Event List | "NPR POS Unit Event" | Event assignment list |
| *(unknown)* | "NPR POS Ticket Receipt Text" | POS Ticket Receipt Text | "NPR POS Ticket Receipt Text" | Receipt text configuration |
| *(unknown)* | "NPR POS Unit Rcpt Text Profile" | POS Unit Rcpt Text Profile | "NPR POS Unit Rcpt Text Profile" | Receipt text profile card |
| *(unknown)* | "NPR POS Unit Rcpt Txt Profiles" | POS Unit Rcpt Txt Profiles | "NPR POS Unit Rcpt Text Profile" | Receipt text profiles list |
| *(unknown)* | "NPR POS Unit to Bin Relation" | POS Unit to Bin Relation | — | Page linking POS units to payment bins |
