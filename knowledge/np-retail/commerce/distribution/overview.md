---
type: concept
tags: [np-retail, commerce, distribution]
relates: [inventory/item-hierarchy/overview.md, inventory/replenishment/overview.md]
updated: 2026-05-09
---

# Distribution — Overview

Inventory distribution management for multi-location retail. Supports managing distribution groups, creating distribution plans from item hierarchies, and generating purchase orders or transfer orders to fulfill demand across locations.

## Purpose

- Distribution group management (logical groups of locations/members)
- Manual and automatic distribution types
- Distribution plan creation from item hierarchy
- Automatic purchase order and transfer order generation
- Distribution matrix for visual planning
- Demand quantity calculation from replenishment demand lines

## Key Tables

| Table | Purpose |
|-------|---------|
| `NPR Distrib. Group` | Distribution group header |
| `NPR Distrib. Group Members` | Group members (locations) with distribution share percentage |
| `NPR Distribution Headers` | Distribution plan header |
| `NPR Distribution Lines` | Distribution plan lines (item, location, quantities) |
| `NPR Distribution Map` | Links distribution lines to resulting purchase/transfer documents |

## Key Codeunits

| Codeunit | Purpose |
|----------|---------|
| `NPR Distribution Mgmt` | Core distribution logic — plan creation, document generation |

## Pages

| Page | Purpose |
|------|---------|
| `DistribGroupList` | Distribution group list |
| `DistribGroup` | Group card |
| `DistribGroupMemberList` | Member list per group |
| `DistribGroupMemberCard` | Member card |
| `DistribGrpMembListpart` | Member list part |
| `DistribMatrix` | Distribution matrix view |
| `DistributionPlans` | Plan list |
| `DistributionPlan` | Plan card |
| `DistributionHeaders` | Header view |
| `DistributionOrders` | Generated order list |
| `DistributionLines` | Line detail view |
