---
type: reference
tags: [infrastructure, api, api-services, np-retail, tables, codeunits, pages, enums, interfaces, permissionsets]
relates:
  - infrastructure/api-services/overview.md
updated: 2026-05-30
source_files:
  - Application/src/_API_SERVICES/UserAccounts/APIAccount.PermissionSet.al
  - Application/src/_API_SERVICES/attractionWallet/APIAttrWallet.PermissionSet.al
  - Application/src/_API_SERVICES/channelManager/APIChannelMgr.PermissionSet.al
  - Application/src/_API_SERVICES/Coupons/APICoupon.PermissionSet.al
  - Application/src/_API_SERVICES/customer/APICustomer.Codeunit.al
  - Application/src/_API_SERVICES/customer/APICustomer.PermissionSet.al
  - Application/src/_API_SERVICES/customer/_public/APICustomerEvents.Codeunit.al
  - Application/src/_API_SERVICES/customer/APICustomerResolver.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/APIEcom.PermissionSet.al
  - Application/src/_API_SERVICES/POS/External Sale/APIExternalPOSResolver.Codeunit.al
  - Application/src/_API_SERVICES/POS/External Sale/APIExternalPOSSale.Codeunit.al
  - Application/src/_API_SERVICES/POS/External Sale/APIEXTPOS.PermissionSet.al
  - Application/src/_API_SERVICES/HelloWorld/APIHelloWorld.Codeunit.al
  - Application/src/_API_SERVICES/HelloWorld/APIHelloWorld.PermissionSet.al
  - Application/src/_API_SERVICES/HelloWorld/APIHelloWorldResolver.Codeunit.al
  - Application/src/_API_SERVICES/inventory/APIInventory.Codeunit.al
  - Application/src/_API_SERVICES/inventory/APIInventory.PermissionSet.al
  - Application/src/_API_SERVICES/inventory/APIInventoryResolver.Codeunit.al
  - Application/src/_API_SERVICES/memberships/APIMembership.PermissionSet.al
  - Application/src/_API_SERVICES/designerManifest/APINPDesigner.PermissionSet.al
  - Application/src/_API_SERVICES/POS/APIPOS.PermissionSet.al
  - Application/src/_API_SERVICES/POS/Sale/APIPOSDeltaBuilder.Codeunit.al
  - Application/src/_API_SERVICES/POS/Entry/APIPOSEntry.Codeunit.al
  - Application/src/_API_SERVICES/POS/Entry/APIPOSEntryPrintMgt.Codeunit.al
  - Application/src/_API_SERVICES/POS/Global Entry/APIPOSGlobalEntry.Codeunit.al
  - Application/src/_API_SERVICES/POS/Global Entry/_public/APIPOSGlobalEntryext.Codeunit.al
  - Application/src/_API_SERVICES/POS/APIPOSHandler.Codeunit.al
  - Application/src/_API_SERVICES/POS/Sale/APIPOSPaymentLine.Codeunit.al
  - Application/src/_API_SERVICES/POS/APIPOSResolver.Codeunit.al
  - Application/src/_API_SERVICES/POS/Sale/APIPOSSale.Codeunit.al
  - Application/src/_API_SERVICES/POS/Sale/APIPOSSaleLine.Codeunit.al
  - Application/src/_API_SERVICES/POS/Salesperson/APIPOSSalesperson.Codeunit.al
  - Application/src/_API_SERVICES/POS/Store/APIPOSStore.Codeunit.al
  - Application/src/_API_SERVICES/POS/Unit/APIPOSUnit.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurant.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurant.PermissionSet.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurantHandler.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurantLocation.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurantMenu.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurantResolver.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestaurantSeating.Codeunit.al
  - Application/src/_API_SERVICES/restaurant/APIRestKitchenOrders.Codeunit.al
  - Application/src/_API_SERVICES/retailprint/APIRetailPrint.Codeunit.al
  - Application/src/_API_SERVICES/retailprint/APIRetailPrint.PermissionSet.al
  - Application/src/_API_SERVICES/POS/Entry/APIRetailPrintHandler.Codeunit.al
  - Application/src/_API_SERVICES/retailprint/APIRetailPrintResolver.Codeunit.al
  - Application/src/_API_SERVICES/RetailVouchers/APIRetailVoucher.PermissionSet.al
  - Application/src/_API_SERVICES/sale/APISale.PermissionSet.al
  - Application/src/_API_SERVICES/speedgate/ApiSpeedgate.Codeunit.al
  - Application/src/_API_SERVICES/speedgate/APISpeedgate.PermissionSet.al
  - Application/src/_API_SERVICES/speedgate/handlers/ApiSpeedgateAdmit.Codeunit.al
  - Application/src/_API_SERVICES/speedgate/ApiSpeedgateFunctions.Enum.al
  - Application/src/_API_SERVICES/speedgate/ApiSpeedgateHandler.Codeunit.al
  - Application/src/_API_SERVICES/speedgate/handlers/ApiSpeedgateReports.Codeunit.al
  - Application/src/_API_SERVICES/speedgate/ApiSpeedgateResolver.Codeunit.al
  - Application/src/_API_SERVICES/memberships/PaymentMethod/APISubscriptionPmtMethods.Codeunit.al
  - Application/src/_API_SERVICES/system/APISystem.Codeunit.al
  - Application/src/_API_SERVICES/system/APISystem.PermissionSet.al
  - Application/src/_API_SERVICES/system/APISystemResolver.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/APITicketing.PermissionSet.al
  - Application/src/_API_SERVICES/attractionWallet/AttrWalletAPI.Codeunit.al
  - Application/src/_API_SERVICES/attractionWallet/AttrWalletApiFunctions.Enum.al
  - Application/src/_API_SERVICES/attractionWallet/AttrWalletAPIHandler.Codeunit.al
  - Application/src/_API_SERVICES/attractionWallet/AttrWalletModuleResolver.Codeunit.al
  - Application/src/_API_SERVICES/channelManager/ChannelMgrApi.Codeunit.al
  - Application/src/_API_SERVICES/channelManager/ChannelMgrApiFunctions.Enum.al
  - Application/src/_API_SERVICES/channelManager/ChannelMgrApiHandler.Codeunit.al
  - Application/src/_API_SERVICES/channelManager/ChannelMgrModuleResolver.Codeunit.al
  - Application/src/_API_SERVICES/channelManager/handlers/ChannelMgrOrderAgent.Codeunit.al
  - Application/src/_API_SERVICES/Coupons/CouponAPI.Codeunit.al
  - Application/src/_API_SERVICES/Coupons/handlers/CouponApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/Coupons/CouponApiFunctions.Enum.al
  - Application/src/_API_SERVICES/Coupons/CouponAPIHandler.Codeunit.al
  - Application/src/_API_SERVICES/Coupons/CouponModuleResolver.Codeunit.al
  - Application/src/_API_SERVICES/customer/handlers/CustomerGDPRApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/EcomAPI.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/EcomApiFunctions.Enum.al
  - Application/src/_API_SERVICES/ecommerce/EcomApiHandler.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomCaptureImpl.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomCaptureStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomCouponStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/EcomCouponSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/EcomCreateCouponImpl.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomCreateCouponJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/EcomCreateCouponProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/EcomCreateCouponTryProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomCreateMembershipJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Membership/EcomCreateMMShipImpl.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Membership/EcomCreateMMShipProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Membership/EcomCreateMMShipTryProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Ticket/EcomCreateTicketImpl.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomCreateTicketJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Ticket/EcomCreateTicketProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Ticket/EcomCreateTicketTryProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomCreateVchrImpl.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomCreateVchrProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomCreateVchrTryProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomCreateVoucherJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Wallet/EcomCreateWalletMgt.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomDigitalNotifJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomDocFactBox.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/EcomDocSubpagesTask.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomHWalletProcessStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomJobManagement.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomLineCaptureImpl.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomLineCaptureProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomLineCaptureTryProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EComMembershipOperation.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomMembershipStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Membership/EcomMembershipSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomPmtMethodType.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomProcessWalletsJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomRelatedDocMgt.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomRelatedDocument.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomRelatedDocuments.Page.al
  - Application/src/_API_SERVICES/ecommerce/EcomResolver.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomSaleCaptureJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomSaleDocCaptureProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/EcomSalesCouponLink.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/EcomSalesCouponSource.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/handlers/EcomSalesDocApiAgentV2.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocApiEvents.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesDocConfirm.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocCrtStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocEvents.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocImplEvents.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesDocImplV2.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocPmtSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesDocPost.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocPostStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesDocProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocSource.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesDocTryProcess.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocType.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocument.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesDocuments.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesDocUtils.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesHeader.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesLine.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesLines.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesLineSubtype.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesLineType.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Membership/EcomSalesMembershipLink.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesOrderProcJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesPmtLine.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomSalesPmtLines.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/EcomSalesRetOrderProcJQ.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomSalesVoucherLink.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/EcomSubpagesSync.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomTicketStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Ticket/EcomTicketSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/capture/EcomTryCapture.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomVirtualItemDocStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomVirtualItemEvents.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/EcomVirtualItemMgt.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomVirtualItemProcestatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomVoucherLinkState.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomVoucherLookup.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/EcomVoucherStatus.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Voucher/EcomVoucherSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Wallet/EcomWalletSub.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/IncEcomDocCustomerMapping.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/IncEcomDocCustUpdateMode.Enum.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/IncEcomSalesDocSetup.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_public/IncEcomSalesDocSetup.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/IncEcomSalesWebhooks.Codeunit.al
  - Application/src/_API_SERVICES/POS/Sale/JQCleanupDeadPOSSales.Codeunit.al
  - Application/src/_API_SERVICES/POS/Sale/JQCleanupDeleteSale.Codeunit.al
  - Application/src/_API_SERVICES/POS/Sale/JQCleanupParkSale.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/LoyaltyApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MemberApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MemberCardApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipApiAddProperties.Interface.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/MembershipApiFunctions.Enum.al
  - Application/src/_API_SERVICES/memberships/MembershipApiHandler.Codeunit.al
  - Application/src/_API_SERVICES/memberships/MembershipApiTranslation.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipAttributesAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipCatalogAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipListAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipMiscApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipPhasesApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/memberships/MembershipsAPI.Codeunit.al
  - Application/src/_API_SERVICES/memberships/MembershipsModuleResolver.Codeunit.al
  - Application/src/_API_SERVICES/memberships/handlers/MembershipSubscrAgent.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/NpDcIssOnEcomSaleSLine.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/NpDcIssOnEcomSaleSLines.Page.al
  - Application/src/_API_SERVICES/designerManifest/NPDesignerManifestAPI.Codeunit.al
  - Application/src/_API_SERVICES/designerManifest/NPDesignerManifestResolver.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/_fastLine/virtualItems/Coupon/OnEcomSaleCouponModule.Codeunit.al
  - Application/src/_API_SERVICES/POS/POSWebhook.Enum.al
  - Application/src/_API_SERVICES/POS/POSWebhooks.Codeunit.al
  - Application/src/_API_SERVICES/RetailVouchers/RetailVModuleResolver.Codeunit.al
  - Application/src/_API_SERVICES/RetailVouchers/Handlers/RetailVoucherAgent.Codeunit.al
  - Application/src/_API_SERVICES/RetailVouchers/RetailVoucherApiFunctions.Enum.al
  - Application/src/_API_SERVICES/RetailVouchers/RetailVouchersAPI.Codeunit.al
  - Application/src/_API_SERVICES/RetailVouchers/RetailVouchersApiHandler.Codeunit.al
  - Application/src/_API_SERVICES/RetailVouchers/RetailVoucherWebhooks.Codeunit.al
  - Application/src/_API_SERVICES/sale/SaleResolver.Codeunit.al
  - Application/src/_API_SERVICES/sale/SalesAPI.Codeunit.al
  - Application/src/_API_SERVICES/sale/SalesApiAgent.Codeunit.al
  - Application/src/_API_SERVICES/sale/SalesApiFunctions.Enum.al
  - Application/src/_API_SERVICES/sale/SalesApiHandler.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/TicketingAPI.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/TicketingApiFunctions.Enum.al
  - Application/src/_API_SERVICES/ticketing/TicketingApiHandler.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/TicketingApiTranslations.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingCapacityAgent.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingCatalogAgent.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingImportAgent.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/TicketingModuleResolver.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingReportAgent.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingReservationAgent.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingTicketAgent.Codeunit.al
  - Application/src/_API_SERVICES/ticketing/handlers/TicketingTimeSlotsAgent.Codeunit.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/TicketReservationBuffer.Table.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/TicketReservationRemap.Page.al
  - Application/src/_API_SERVICES/ecommerce/incomingEcommerceSalesDocuments/TicketReservReqList.Page.al
  - Application/src/_API_SERVICES/POS/External Sale/TryCreateExtPOSSale.Codeunit.al
  - Application/src/_API_SERVICES/UserAccounts/UserAccountAPI.Codeunit.al
  - Application/src/_API_SERVICES/UserAccounts/UserAccountPaymMethodAPI.Codeunit.al
  - Application/src/_API_SERVICES/UserAccounts/UserAccountResolver.Codeunit.al
  - Application/src/_API_SERVICES/attractionWallet/handlers/WalletApiAgent.Codeunit.al
---

# API Services — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6059911 | "NPR Ecom Related Document" | Ecommerce Related Document | "Source Record Id" | — |
| 6059934 | "NPR Ecom Sales Coupon Link" | Ecom Sales Coupon Link | "Entry No." | — |
| 6151258 | "NPR Ecom Sales Header" | Ecommerce Sales Header | "Entry No." | — |
| 6151259 | "NPR Ecom Sales Line" | Ecommerce Sales Line | "Document Entry No.", "Line No." | — |
| 6248182 | "NPR Ecom Sales Membership Link" | Ecom Sales Membership Link | "Entry No." | — |
| 6151260 | "NPR Ecom Sales Pmt. Line" | Ecommerce Sales Line | "Document Entry No.", "Line No." | — |
| 6059925 | "NPR Ecom Sales Voucher Link" | Ecom Sales Voucher Link | "Entry No." | — |
| 6151190 | "NPR Inc Ecom Sales Doc Setup" | Incoming Ecommerce Sales Document Setup | "Primary Key" | — |
| 6060010 | "NPR NpDc Iss.OnEcomSale S.Line" | Issue On-Ecom-Sale Setup Line | "Coupon Type", "Line No." | — |
| 6151264 | "NPR Ticket Reservation Buffer" | Ticket Reservation Remap Buffer | "Entry No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6248370 | "NPR API Customer" |  | Handle, GetCustomer, CreateCustomer, CustomerToJson, SetDefaultCustomerNoSeries | — |
| 6248626 | "NPR API Customer Events" |  | OnBeforeGetCustomerNoSeries, OnBeforeGetCustomerTemplate, OnBeforeModifyCustomer, OnBeforeInsertCustomer, OnAfterInsertCustomer | OnBeforeGetCustomerNoSeries, OnBeforeGetCustomerTemplate, OnBeforeModifyCustomer |
| 6248371 | "NPR API Customer Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248215 | "NPR API External POS Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248216 | "NPR API External POS Sale" |  | Handle, ListSales, GetSale, CreateSale, VerifyRequest | — |
| 6185007 | "NPR API Hello World" |  | Handle, HelloWorld | — |
| 6185055 | "NPR API Hello World Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248290 | "NPR API Inventory" |  | Handle, GetItem, ListItems, ItemToJson, ItemToJson | — |
| 6248291 | "NPR API Inventory Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248628 | "NPR API POS Delta Builder" |  | StartDataCollection, BuildDeltaResponse | — |
| 6248620 | "NPR API POS Entry" |  | ListEntries, PrintPosEntry, GetEntry, EntryToJson, AddSalesLinesToJson | — |
| 6150992 | "NPR API POS Entry Print Mgt." |  | GetCapturedPrintJob, HasCapturedJob, ClearCapturedJob, OnBeforeSendLinePrint | — |
| 6248189 | "NPR API POS Global Entry" |  | InsertPosSalesEntries, GetGlobalEntry, GetGlobalEntryByReference, GetGlobalEntryByReferencePdf, SearchGlobalEntry | — |
| 6248260 | "NPR API POS Global Entry Ext" |  | OnBeforeApplyExtensionFields, SetPOSEntryExtensionData, SetPOSEntrySalesLineExtensionData, SetPOSEntryPaymentLineExtensionData, SetPOSInfoPOSEntryExtensionData | OnBeforeApplyExtensionFields, SetPOSEntryExtensionData, SetPOSEntrySalesLineExtensionData |
| 6185056 | "NPR API POS Handler" |  | Handle | — |
| 6248629 | "NPR API POS Payment Line" |  | ListPaymentLines, GetPaymentLine, CreatePaymentLine, DeletePaymentLine, CreateCashPayment | — |
| 6185057 | "NPR API POS Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248632 | "NPR API POS Sale" |  | AssertPOSUnitOpenForSale, GetSale, SearchSale, CreateSale, UpdateSale | — |
| 6248630 | "NPR API POS Sale Line" |  | ListSaleLines, GetSaleLine, CreateSaleLine, CreateSaleLineAddon, UpdateSaleLine | — |
| 6150690 | "NPR API POS Salesperson" |  | Login, ListSalesperson, GetSalesperson, BlockSalesperson, UnblockSalesperson | — |
| 6248435 | "NPR APIPOSStore" |  | GetPOSStores | — |
| 6248434 | "NPR APIPOSUnit" |  | GetPOSUnits, GetPOSUnit, GetCurrentPOSUnit, OpenPOSUnit, POSUnitToJson | — |
| 6248641 | "NPR API Restaurant" |  | GetRestaurants, GetTableIds | — |
| 6248640 | "NPR API Restaurant Handler" |  | Handle | — |
| 6248639 | "NPR API Restaurant Location" |  | GetLocations, GetLocation, BuildLocationObject, GetTableIds | — |
| 6248644 | "NPR API Restaurant Menu" |  | GetMenus, GetMenu, TryBuildMenuContent, BuildMenuContent, BuildCategory | — |
| 6248642 | "NPR API Restaurant Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248643 | "NPR API Restaurant Seating" |  | GetSeatings, GetSeating, BuildResponseEnvelope, BuildSeatingObject, GetSeatingLocationSystemID | — |
| 6248638 | "NPR API Rest. Kitchen Orders" |  | GetKitchenOrders, GetKitchenOrder, GetTableIds | — |
| 6248658 | "NPR API Retail Print" |  | Handle, PrintPriceLabel, CreateRetailJournalLineFromItemToken, InsertRetailJournalLine, InsertRetailJournalLine | — |
| 6151083 | "NPR API Retail Print Handler" |  | PrintBytesLocal, PrintFileLocal, PrintBytesHTTP, PrintBytesBluetooth, PrintViaPrintNodeRaw | — |
| 6150821 | "NPR API Retail Print Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6185116 | "NPR ApiSpeedgate" |  | Handle, TryAndAttemptAdmit, ValidateTokensForAdmitWithIntent, Handle, LogMessage | — |
| 6185119 | "NPR ApiSpeedgateAdmit" |  | GetSetup, GetScannerCategories, AddScannerItemsProfileLines, TryAdmit, Admit | — |
| 6185117 | "NPR ApiSpeedgateHandler" |  | SetRequest, SetRequest, GetResponse, HandleFunction | — |
| 6248381 | "NPR ApiSpeedgateReports" |  | LookupReferenceNumber, CreateLookupResponse, AsNull, AsNull, ErrorDescription | — |
| 6185115 | "NPR ApiSpeedgateResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6185107 | "NPR API SubscriptionPmtMethods" |  | GetPaymentMethods, GetPaymentMethod, CreatePaymentMethod, UpdatePaymentMethod, DeletePaymentMethod | — |
| 6248681 | "NPR API System" |  | Handle, GetNodeId | — |
| 6248682 | "NPR API System Resolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248329 | "NPR AttrWalletAPI" |  | Handle, Handle, ErrorToEnum, LogMessage, AttractionWalletTransactionTables | — |
| 6248330 | "NPR AttrWalletAPIHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6248328 | "NPR AttrWalletModuleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6151044 | "NPR ChannelMgrApi" |  | Handle, Handle, EnsureOrderErrorStatus, TryReadPartnerAndSellToRef, TryReadOrderIdFromPathSegment | — |
| 6151046 | "NPR ChannelMgrApiHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6151047 | "NPR ChannelMgrModuleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6151048 | "NPR ChannelMgrOrderAgent" |  | CreateOrder, ReplaceOrder, DeleteOrder, GetOrder, ListOrdersByPartner | — |
| 6248526 | "NPR CouponAPI" |  | Handle, Handle, GetTimeDifference, ErrorToEnum, LogMessage | — |
| 6248530 | "NPR CouponApiAgent" |  | CreateCoupon, GetCoupon, DeleteCoupon, VerifyCreateRequest, VerifyRequiredField | — |
| 6248528 | "NPR CouponAPIHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6248529 | "NPR CouponModuleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248663 | "NPR Customer GDPR Api Agent" |  | AnonymizeCustomer, CreateAnonymizationSuccessResponse, CheckForEmail | — |
| 6248360 | "NPR EcomAPI" |  | Handle, Handle, ErrorToEnum, LogMessage, LogMessage | — |
| 6248361 | "NPR EcomApiHandler" |  | SetRequest, GetResponse, HandleFunction, RunCreateDocAPIAgentBasedOnRequestHeaderVersion, RunGetDocAPIAgentBasedOnRequestHeaderVersion | — |
| 6248646 | "NPR EcomCaptureImpl" |  | Process, InsertPaymentLinePointsPmt, InsertPaymentLinePaymentMethod, InsertPaymentLineVoucherPmt, CalculateAmountToCapture | — |
| 6151118 | "NPR EcomCreateCouponImpl" |  | Process, CheckIfLineCanBeProcessed, IssueCoupons, ShowRelatedCouponsAction, ShowRelatedCouponsAction | — |
| 6151117 | "NPR EcomCreateCouponJQ" |  | Process, GetDefaultDuration, ProcessRecords, GetJQDescription, GetCodeunitId | — |
| 6151122 | "NPR EcomCreateCouponProcess" |  | HandleResponse, SetSalesDocCouponStatusError, SetSalesDocCouponStatusCreated, ShowRelatedCouponsAction, ShowRelatedCouponsAction | — |
| 6151119 | "NPR EcomCreateCouponTryProcess" |  | — | — |
| 6151049 | "NPR EcomCreateMembershipJQ" |  | Process, GetDefaultDuration, ProcessRecords, GetJQDescription, GetCodeunitId | — |
| 6248527 | "NPR EcomCreateMMShipImpl" |  | Process, DetermineMembershipOperation, IsMembershipCreateItem, CheckIfLineCanBeProcessed, ConfirmMembershipById | — |
| 6248533 | "NPR EcomCreateMMShipProcess" |  | HandleResponse, EmitError, SetSalesDocMembershipStatusError, SetSalesDocMembershipStatusCreated, ShowRelatedMembershipsAction | — |
| 6248534 | "NPR EcomCreateMMShipTryProcess" |  | — | — |
| 6248517 | "NPR EcomCreateTicketImpl" |  | ValidateTicketLines, ValidateEcommerceTicketLine, CreateRequestsForTicketLines, CreateReservationRequestsForToken, HandleFailedReservation | — |
| 6248511 | "NPR EcomCreateTicketJQ" |  | Process, GetDefaultDuration, ProcessRecords, GetJQDescription, GetCodeunitId | — |
| 6248548 | "NPR EcomCreateTicketProcess" |  | HandleResponse, UpdateVirtualItemDocStatus, ShowRelatedTicketsAction, ShowRelatedTicketsAction, SetUpdateRetryCount | — |
| 6248549 | "NPR EcomCreateTicketTryProcess" |  | — | — |
| 6248510 | "NPR EcomCreateVchrImpl" |  | Process, CheckIfLineCanBeProcessed, CreateVoucher, IssueOrTopUpSingleVoucher, ReserveVoucher | — |
| 6248514 | "NPR EcomCreateVchrProcess" |  | HandleResponse, SetSalesDocVoucherStatusError, SetSalesDocVoucherStatusCreated, ShowRelatedVouchersAction, ShowRelatedVouchersAction | — |
| 6248509 | "NPR EcomCreateVchrTryProcess" |  | — | — |
| 6248518 | "NPR EcomCreateVoucherJQ" |  | Process, GetDefaultDuration, ProcessRecords, GetJQDescription, GetCodeunitId | — |
| 6151072 | "NPR EcomCreateWalletMgt" |  | CreateWalletsForBundle, AddAssetsToWallets, GetTicketSystemIds, GetVoucherSystemIds, GetCouponSystemIds | — |
| 6151116 | "NPR EcomDigitalNotifJQ" |  | Process, GetDefaultDuration, ProcessRecords, GetJQDescription, GetCodeunitId | — |
| 6150899 | "NPR Ecom Doc Subpages Task" |  | BuildVouchersPayload, BuildMembershipsPayload, BuildTicketsPayload, BuildCouponsPayload, BuildWalletsPayload | — |
| 6248560 | "NPR Ecom Job Management" |  | CreateParameterSting, ParamBucketFilter, OpenJobQueueList, ScheduleJobQueue, ScheduleJobQueue | — |
| 6248647 | "NPR EcomLineCaptureImpl" |  | Process, CapturePaymentLine, CaptureVoucherLine | — |
| 6248649 | "NPR EcomLineCaptureProcess" |  | HandleResponse, EmitError, SetSalesDocCaptureProcessingStatusError, SetSalesDocCaptureProcessingStatusProcessed, UpdateEcomSalesHeaderInformationProcessed | — |
| 6248648 | "NPR EcomLineCaptureTryProcess" |  | — | — |
| 6151069 | "NPR EcomProcessWalletsJQ" |  | Process, GetDefaultDuration, ProcessRecords, GetJQDescription, GetCodeunitId | — |
| 6151062 | "NPR Ecom Related Doc Mgt" |  | AddSalesHeader, AddSalesInvoiceHeader, AddSalesCrMemoHeader, OpenRelatedDocument, AddRelatedDocument | — |
| 6248359 | "NPR EcomResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248538 | "NPR EcomSaleCaptureJQ" |  | Process, GetDefaultDuration, GetJQDescription, ScheduleJobQueue, ScheduleJobQueueWithConfirmation | — |
| 6248656 | "NPR EcomSaleDocCaptureProcess" |  | HandleResponse, UpdateTicketReservationExpiryTimeAfterCapture, EmitError, SetShowError, SetUpdateRetryCount | — |
| 6248615 | "NPR EcomSalesDocApiAgentV2" |  | CreateIncomingEcomDocument, GetIncomingEcomDocumentById, InsertSalesDocument, DeserializeIncomingEcomSalesHeader, ProcessIncomingSalesHeader | — |
| 6248606 | "NPR EcomSalesDocApiEvents" |  | OnAfterDeserializeIncomingEcomSalesHeader, OnBeforeProcessIncomingSalesHeaderInsertIncSalesHeader, OnAfterDeserializeIncomingEcomSalesLine, OnBeforeInsertIncomingSalesLineBeforeInsert, OnAfterDeserializeIncomingEcomSalesPaymentLine | OnAfterDeserializeIncomingEcomSalesHeader, OnBeforeProcessIncomingSalesHeaderInsertIncSalesHeader, OnAfterDeserializeIncomingEcomSalesLine |
| 6248614 | "NPR Ecom Sales Doc Confirm" |  | Process, SetUpdateRetryCount, GetUpdateRetryCount, SetShowError, GetShowError | — |
| 6248603 | "NPR Ecom Sales Doc Events" |  | OnSetSalesDocCreationStatusCreatedBeforeModifyRecord, OnSetSalesDocCreationStatusErrorBeforeModifyRecord, OnSetSalesDocStatusPendingBeforeModifyRecord, OnHandleResponseBeforeModifyRecord, OnBeforeGetItemNoAndVariantNoFromExternalNo | OnSetSalesDocCreationStatusCreatedBeforeModifyRecord, OnSetSalesDocCreationStatusErrorBeforeModifyRecord, OnSetSalesDocStatusPendingBeforeModifyRecord |
| 6248607 | "NPR EcomSalesDocImplEvents" |  | OnAfterInitCustomer, OnAfterDecideNewCustomer, OnBeforeHandleCustomerUpdateMode, OnInsertCustomerBeforeFinalizeCustomer, OnAfterPopulateGeneralSalesHeaderInformation | OnAfterInitCustomer, OnAfterDecideNewCustomer, OnBeforeHandleCustomerUpdateMode |
| 6248609 | "NPR Ecom Sales Doc Impl V2" |  | Process, InsertSalesDocument, InsertSalesHeader, MergeEcomDimSetID, InsertCustomer | — |
| 6248657 | "NPR Ecom Sales Doc Post" |  | SalesOrderPrepareVirtualItemsForPosting, ResetPostingQuantityOnSalesOrders, PostSalesOrder, PostSalesOrder | — |
| 6248610 | "NPR EcomSalesDocProcess" |  | HandleResponse, UpdateSalesDocPaymentLinePostingInformation, UpdateSalesDocVoucherPaymentLineCaptureOnPosting, UpdateSalesDocPaymentLineCaptureInformation, HandleSalesOrderProcessJQSchedule | — |
| 6248611 | "NPR EcomSalesDocTryProcess" |  | RunAPIBasedOnVersion | — |
| 6248601 | "NPR Ecom Sales Doc Utils" |  | GetTotalAmountCaption, GetPaymentAmountCaption, GetCapturedPaymentAmountCaption, GetCaptionClassWithCurrencyCode, GetCaptionWithCurrencyCode | — |
| 6248612 | "NPR EcomSalesOrderProcJQ" |  | Process, ProcessSalesOrders, ParamSalesOrderNo, GetDefaultDuration, GetJQDescription | — |
| 6248613 | "NPR EcomSalesRetOrderProcJQ" |  | Process, ProcessSalesReturnOrders, ParamSalesReturnOrderNo, GetDefaultDuration, GetJQDescription | — |
| 6248186 | "NPR Ecom Subpages Sync" |  | MarkDirty, ConsumeDirty | — |
| 6248650 | "NPR Ecom Try Capture" |  | GetResponse | — |
| 6248516 | "NPR EcomVirtualItemEvents" |  | OnAfterVoucherProcessBeforeCommit, OnAfterVoucherReferenceNoReservation, OnUpdateVirtualInformationInHeaderBeforeModify, OnAfterSetSalesDocVoucherStatusError, OnAfterSetSalesDocVoucherStatusCreated | OnUpdateVirtualInformationInHeaderBeforeModify, OnAfterSetSalesDocVoucherStatusError, OnAfterSetSalesDocVoucherStatusCreated |
| 6248551 | "NPR Ecom Virtual Item Mgt" |  | ProcessVirtualItemLine, ProcessVirtualItemLineWithConfirmation, CreateVouchers, CaptureEcomDocument, CreateVoucher | — |
| 6248545 | "NPR Inc Ecom Sales Webhooks" |  | OnSalesOrderCreated, OnSalesReturnOrderCreated, OnSalesOrderPosted, OnSalesReturnOrderPosted, OnSalesOrderCancelled | — |
| 6248637 | "NPR JQ Cleanup Dead POS Sales" |  | DeleteDeadSalesFromUnattendedUnits, SaleHasEFTApprovedLines | — |
| 6151087 | "NPR JQ Cleanup Delete Sale" |  | — | — |
| 6151088 | "NPR JQ Cleanup Park Sale" |  | — | — |
| 6248490 | "NPR LoyaltyApiAgent" |  | GetMembershipPoints, CreateReservationTransaction, CancelReservationTransaction, RegisterSaleTransaction, GetMembershipTransactions | — |
| 6248220 | "NPR MemberApiAgent" |  | FindMember, GetMemberById, BlockMember, UnblockMember, GetMemberImage | — |
| 6248223 | "NPR MemberCardApiAgent" |  | GetMemberCardByNumber, GetMemberCardById, BlockMemberCard, UnblockMemberCard, AddMemberCard | — |
| 6185123 | "NPR MembershipApiAgent" |  | GetMembershipByNumber, GetMembershipById, CreateMembership, BlockMembership, UnblockMembership | — |
| 6185122 | "NPR MembershipApiHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6248221 | "NPR MembershipApiTranslation" |  | MemberRoleToText, GenderAsText, NewsLetterAsText, MembershipEntryContextToText, GdprApprovalAsText | — |
| 6248485 | "NPR MembershipAttributesAgent" |  | ListMembershipAttributes, GetMembershipAttributeValues, SetMembershipAttributeValues, DeleteMembershipAttributeValues, MembershipAttributesDTO | — |
| 6248219 | "NPR MembershipCatalogAgent" |  | GetMembershipCatalog, GetCatalogDTO, CatalogItems, GetShortDescription, GetFullDescription | — |
| 6248487 | "NPR MembershipListAgent" |  | AddProperties, ListMemberships, GetData, GetRecords | — |
| 6248228 | "NPR MembershipMiscApiAgent" |  | resolveIdentifier, CheckMembershipNumber, StartMembershipDTO, CheckMemberNumber, StartMemberDTO | — |
| 6248225 | "NPR MembershipPhasesApiAgent" |  | GetMembershipTimeEntries, ActivateMembership, GetRenewalOptions, GetExtendOptions, GetUpgradeOptions | — |
| 6185113 | "NPR MembershipsAPI" |  | Handle, Handle, ErrorToEnum, LogMessage, CheckStickyCache | — |
| 6185106 | "NPR MembershipsModuleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248482 | "NPR MembershipSubscrAgent" |  | GetSubscription, EnterSubscription, TerminateSubscription, SubscriptionDto, GetTerminationSubsRequest | — |
| 6248597 | "NPR NPDesignerManifestAPI" |  | Handle, GetManifest, GetManifestByManifestId, GetManifestDTO | — |
| 6248598 | "NPR NPDesignerManifestResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6151147 | "NPR OnEcomSaleCouponModule" |  | IssueCoupons, IssueCoupon, OnInitCouponModules, OnHasIssueCouponsSetup, OnSetupIssueCoupon | — |
| 6150717 | "NPR POS Webhooks" |  | InvokeEndOfSaleWebhook, InvokeUnitBalancedWebhook, OnPOSSaleCompleted, OnPOSUnitBalanced | — |
| 6248249 | "NPR RetailVModuleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248253 | "NPR RetailVoucherAgent" |  | FindVouchers, CreateVoucher, GetVoucher, ReserveVoucher, CancelVoucherReservation | — |
| 6248251 | "NPR RetailVouchersAPI" |  | Handle, Handle, ErrorToEnum, LogMessage | — |
| 6248252 | "NPR RetailVouchersApiHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6248394 | "NPR Retail Voucher Webhooks" |  | OnVoucherCreated, OnVoucherPayment | — |
| 6248357 | "NPR SaleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248369 | "NPR SalesAPI" |  | Handle, Handle, ErrorToEnum, LogMessage | — |
| 6248182 | "NPR SalesApiAgent" |  | GetInvoiceByDocumentNoAsPdf, GetSalesInvoiceTableIds, ReportToBase64 | — |
| 6248376 | "NPR SalesApiHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6185040 | "NPR TicketingApi" |  | Handle, Handle, ErrorToEnum, LogMessage, CheckStickyCache | — |
| 6185082 | "NPR TicketingApiHandler" |  | SetRequest, GetResponse, HandleFunction | — |
| 6185046 | "NPR TicketingApiTranslations" |  | EncodeTicketTypeAdmissionKind, EncodeInclusion, EncodeCapacity, EncodeScheduleSelection, EncodeAllocationBy | — |
| 6185044 | "NPR TicketingCapacityAgent" |  | GetTimeSlots, GetTimeSlots, GetSchedules, GetSchedules, GenerateCapacityDTO | — |
| 6185041 | "NPR TicketingCatalogAgent" |  | GetCatalog, GetCatalog, ItemReferenceDTO, AdmissionDetailsDTO, AddPropertyNotNull | — |
| 6248470 | "NPR TicketingImportAgent" |  | ImportTickets, GetImportLog | — |
| 6185039 | "NPR TicketingModuleResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248288 | "NPR TicketingReportAgent" |  | GetDynamicPriceProfileList, GetDynamicPriceProfileWhereUsed, GetDynamicPriceProfileWhereUsedByItem, GetDynamicPriceProfileWhereUsedByAdmissionSchedule, GetDynamicPriceProfileWhereUsedByProfileCode | — |
| 6185083 | "NPR TicketingReservationAgent" |  | CreateReservation, UpdateReservation, CancelReservation, GetReservation, PreConfirmReservation | — |
| 6185080 | "NPR TicketingTicketAgent" |  | GetTicket, FindTickets, RequestRevokeTicket, ConfirmRevokeTicket, ValidateArrival | — |
| 6151041 | "NPR TicketingTimeSlotsAgent" |  | GetTimeSlots, GenerateResponse, ResolveAdmissions, AppendBomToBuffer, EmitItems | — |
| 6248183 | "NPR Try Create Ext POS Sale" |  | JsonToSale, JsonToSaleLine, JsonToPaymentLine, SetParameters | — |
| 6248416 | "NPR UserAccountAPI" |  | Handle, FindAccount, GetAccountById, CreateAccount, UpdateAccount | — |
| 6248418 | "NPR UserAccountPaymMethodAPI" |  | GetPaymentMethodsFromAccount, CreatePaymentMethodForAccount, UserAccountPaymentMethodDTO, GetTableIds | — |
| 6248415 | "NPR UserAccountResolver" |  | Resolve, GetRequiredPermissionSet | — |
| 6248331 | "NPR WalletApiAgent" |  | FindWalletUsingReferenceNumber, GetWalletUsingId, AddAssets, CreateWallet, GetAssetHistory | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6150948 | "NPR Ecom Coupon Sub" | Coupons | "NPR NpDc Coupon" | — |
| 6185130 | "NPR Ecom Doc FactBox" | Ecommerce Sales Document Factbox | "NPR Ecom Sales Header" | — |
| 6248183 | "NPR Ecom Membership Sub" | Memberships | "NPR MM Membership" | — |
| 6150950 | "NPR Ecom Related Documents" | Related Documents | "NPR Ecom Related Document" | — |
| 6248181 | "NPR Ecom Sales Doc Pmt Sub" | Payment Lines | "NPR Ecom Sales Pmt. Line" | — |
| 6248182 | "NPR Ecom Sales Doc Sub" | Sales Lines | "NPR Ecom Sales Line" | — |
| 6248188 | "NPR Ecom Sales Document" | Ecommerce Sales Document | "NPR Ecom Sales Header" | — |
| 6248189 | "NPR Ecom Sales Documents" | Ecommerce Sales Documents | "NPR Ecom Sales Header" | — |
| 6248186 | "NPR Ecom Sales Lines" | Ecommerce Sales Lines | "NPR Ecom Sales Line" | — |
| 6248187 | "NPR Ecom Sales Pmt Lines" | Payment Lines | "NPR Ecom Sales Pmt. Line" | — |
| 6150947 | "NPR Ecom Ticket Sub" | Tickets | "NPR TM Ticket" | — |
| 6150935 | "NPR Ecom Voucher Lookup" | Vouchers | "NPR NpRv Voucher" | — |
| 6150924 | "NPR Ecom Voucher Sub" | Vouchers | "NPR NpRv Voucher" | — |
| 6150949 | "NPR Ecom Wallet Sub" | Wallets | "NPR AttractionWallet" | — |
| 6185067 | "NPR Inc Ecom Sales Doc Setup" | Ecommerce Setup | "NPR Inc Ecom Sales Doc Setup" | — |
| 6150900 | "NPR NpDc Iss.OnEcomSale SLines" | Ecom Sales Coupon Issue Setup Lines | "NPR NpDc Iss.OnEcomSale S.Line" | — |
| 6150962 | "NPR Ticket Reservation Remap" | Change Ticket Reservation Token | "NPR Ticket Reservation Buffer" | — |
| 6150963 | "NPR Ticket Reserv. Req. List" | Ticket Reservation Tokens | "NPR Ticket Reservation Buffer" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6059826 | "NPR ApiSpeedgateFunctions" | No operation | NOOP, GET_SPEEDGATE_SETUP, GET_SCANNER_CATEGORIES, LOOKUP_REFERENCE_NUMBER, TRY_ADMIT, ADMIT, MARK_AS_DENIED, FAILED_BY_APP |
| 6059842 | "NPR AttrWalletApiFunctions" | No operation | NOOP, FIND_WALLET_USING_REFERENCE_NUMBER, GET_WALLET_USING_ID, GET_ASSET_HISTORY, ADD_WALLET_ASSETS, CREATE_WALLET, CONFIRM_PRINT_WALLET, CLEAR_CONFIRM_PRINT_WALLET |
| 6014580 | "NPR ChannelMgrApiFunctions" | No operation | NOOP, CREATE_ORDER, REPLACE_ORDER, DELETE_ORDER, GET_ORDER, LIST_ORDERS_BY_PARTNER, CONFIRM_ORDER |
| 6059843 | "NPR CouponApiFunctions" | No operation | NOOP, CREATE_COUPON, GET_COUPON, DELETE_COUPON, APPLY_COUPON_DISCOUNT, CHECK_COUPON, RESERVE_COUPON, CANCEL_COUPON_RESERVATION |
| 6059868 | "NPR EcomApiFunctions" | No operation | NOOP, CREATE_SALES_DOCUMENT, GET_SALES_DOCUMENT |
| 6059947 | "NPR Ecom Capture Status" | Pending | Pending, Partially Processed, Processed, Error |
| 6014618 | "NPR EcomCouponStatus" | Pending | Pending, Partially Processed, Processed, Error |
| 6014603 | "NPR EcomH_WalletProcessStatus" | Pending | Pending, Partially Processed, Processed, Error |
| 6014624 | "NPR ECom Membership Operation" |   | NoOperationSelected, CreateMembership, ConfirmMembership, RenewMembership, UpgradeMembership, ExtendMembership |
| 6014582 | "NPR EcomMembershipStatus" | Pending | Pending, Partially Processed, Processed, Error |
| 6059942 | "NPR Ecom Pmt Method Type" |   |  , Payment Method, Voucher |
| 6059933 | "NPR Ecom Sales Coupon Source" |   |  , Ecom Sales Document |
| 6059944 | "NPR EcomSalesDocCrtStatus" | Pending | Pending, Created, Canceled, Error |
| 6059945 | "NPR EcomSalesDocPostStatus" | Pending | Pending, Partially Invoiced, Invoiced |
| 6014632 | "NPR Ecom Sales Doc Source" | API | API, Entria, Shopify |
| 6059941 | "NPR Ecom Sales Doc Type" | Order | Order, Return Order |
| 6014581 | "NPR Ecom Sales Line Subtype" |   |  , Ticket, Voucher, Item, Membership, Coupon |
| 6059943 | "NPR Ecom Sales Line Type" | Comment | Comment, Item, Shipment Fee, Voucher, Ticket, Membership |
| 6014572 | "NPR EcomTicketStatus" | Pending | Pending, Processed, Error |
| 6059952 | "NPR EcomVirtualItemDocStatus" | Pending | Pending, Partially Processed, Processed, Error |
| 6059918 | "NPR EcomVirtualItemProcestatus" |   |  , Processed, Error |
| 6014579 | "NPR Ecom Voucher Link State" | Active | Active, Archived |
| 6059946 | "NPR EcomVoucherStatus" | Pending | Pending, Partially Processed, Processed, Error |
| 6059911 | "NPR IncEcomDocCustomerMapping" | E-mail | E-mail, Phone No., E-mail and Phone No., E-mail or Phone No., Customer No., Phone No. to Customer No. |
| 6059912 | "NPR IncEcomDocCustUpdateMode" | Create and Update | Create and Update, Create, Update, None |
| 6059827 | "NPR MembershipApiFunctions" | No operation | NOOP, GET_CATALOG, GET_MEMBERSHIP_USING_NUMBER, GET_MEMBERSHIP_USING_ID, BLOCK_MEMBERSHIP, UNBLOCK_MEMBERSHIP, GET_MEMBERSHIP_MEMBERS, LIST_MEMBERSHIPS |
| 6014552 | "NPR POS Webhook" |  | POSSaleCompleted, POSUnitBalanced |
| 6059855 | "NPR RetailVoucherApiFunctions" | No operation | NOOP, FIND_VOUCHERS, CREATE_VOUCHER, GET_VOUCHER, RESERVE_VOUCHER, CANCEL_RES_VOUCHER |
| 6059873 | "NPR SalesApiFunctions" | No operation | NOOP, GET_SALES_INVOICE_PDF |
| 6059815 | "NPR TicketingApiFunctions" | No operation | NOOP, CAPACITY_SEARCH, SCHEDULE_SEARCH, TIMESLOTS_SEARCH, CATALOG, GET_TICKET, FIND_TICKETS, VALIDATE_ARRIVAL |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR MembershipApiAddProperties" | AddProperties |


## Permission Sets

| ID | Name | Caption |
| --- | --- | --- |
| 6014427 | "NPR API Account" | NPR API - User Accounts |
| 6014425 | "NPR API AttrWallet" | NPR API - Attraction Wallet |
| 6014440 | "NPR API Channel Mgr" | NPR API - OTA Channel Manager |
| 6014430 | "NPR API Coupon" | NPR API - Coupon |
| 6014423 | "NPR API Customer" | NPR API - Customer |
| 6014426 | "NPR API Ecom" | NPR API - Ecommerce |
| 6014417 | "NPR API EXT POS" | NPR API - External POS |
| 6014411 | "NPR API HelloWorld" | NPR API - Hello World |
| 6014424 | "NPR API Inventory" | NPR API - Inventory |
| 6014415 | "NPR API Membership" | NPR API - Memberships |
| 6014431 | "NPR API NPDesigner" | NPR API - NPDesigner |
| 6014412 | "NPR API POS" | NPR API - POS |
| 6150920 | "NPR API Restaurant" | NPR API - Restaurant |
| 6014433 | "NPR API RetailPrint" | NPR API - Retail Print |
| 6014422 | "NPR APIRetailVoucher" | NPR API - Retail Voucher |
| 6014429 | "NPR API Sale" | NPR API - Sale |
| 6014418 | "NPR API Speedgate" | NPR API - Speedgate |
| 6014434 | "NPR API System" | NPR API - System |
| 6014414 | "NPR API Ticketing" | NPR API - Ticketing |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: APIAccount.PermissionSet.al, APIAttrWallet.PermissionSet.al, APIChannelMgr.PermissionSet.al, APICoupon.PermissionSet.al, APICustomer.Codeunit.al, APICustomer.PermissionSet.al, APICustomerEvents.Codeunit.al, APICustomerResolver.Codeunit.al, APIEcom.PermissionSet.al, APIExternalPOSResolver.Codeunit.al, APIExternalPOSSale.Codeunit.al, APIEXTPOS.PermissionSet.al, APIHelloWorld.Codeunit.al, APIHelloWorld.PermissionSet.al, APIHelloWorldResolver.Codeunit.al, APIInventory.Codeunit.al, APIInventory.PermissionSet.al, APIInventoryResolver.Codeunit.al, APIMembership.PermissionSet.al, APINPDesigner.PermissionSet.al, APIPOS.PermissionSet.al, APIPOSDeltaBuilder.Codeunit.al, APIPOSEntry.Codeunit.al, APIPOSEntryPrintMgt.Codeunit.al, APIPOSGlobalEntry.Codeunit.al, APIPOSGlobalEntryext.Codeunit.al, APIPOSHandler.Codeunit.al, APIPOSPaymentLine.Codeunit.al, APIPOSResolver.Codeunit.al, APIPOSSale.Codeunit.al, APIPOSSaleLine.Codeunit.al, APIPOSSalesperson.Codeunit.al, APIPOSStore.Codeunit.al, APIPOSUnit.Codeunit.al, APIRestaurant.Codeunit.al, APIRestaurant.PermissionSet.al, APIRestaurantHandler.Codeunit.al, APIRestaurantLocation.Codeunit.al, APIRestaurantMenu.Codeunit.al, APIRestaurantResolver.Codeunit.al, APIRestaurantSeating.Codeunit.al, APIRestKitchenOrders.Codeunit.al, APIRetailPrint.Codeunit.al, APIRetailPrint.PermissionSet.al, APIRetailPrintHandler.Codeunit.al, APIRetailPrintResolver.Codeunit.al, APIRetailVoucher.PermissionSet.al, APISale.PermissionSet.al, ApiSpeedgate.Codeunit.al, APISpeedgate.PermissionSet.al, ApiSpeedgateAdmit.Codeunit.al, ApiSpeedgateFunctions.Enum.al, ApiSpeedgateHandler.Codeunit.al, ApiSpeedgateReports.Codeunit.al, ApiSpeedgateResolver.Codeunit.al, APISubscriptionPmtMethods.Codeunit.al, APISystem.Codeunit.al, APISystem.PermissionSet.al, APISystemResolver.Codeunit.al, APITicketing.PermissionSet.al, AttrWalletAPI.Codeunit.al, AttrWalletApiFunctions.Enum.al, AttrWalletAPIHandler.Codeunit.al, AttrWalletModuleResolver.Codeunit.al, ChannelMgrApi.Codeunit.al, ChannelMgrApiFunctions.Enum.al, ChannelMgrApiHandler.Codeunit.al, ChannelMgrModuleResolver.Codeunit.al, ChannelMgrOrderAgent.Codeunit.al, CouponAPI.Codeunit.al, CouponApiAgent.Codeunit.al, CouponApiFunctions.Enum.al, CouponAPIHandler.Codeunit.al, CouponModuleResolver.Codeunit.al, CustomerGDPRApiAgent.Codeunit.al, EcomAPI.Codeunit.al, EcomApiFunctions.Enum.al, EcomApiHandler.Codeunit.al, EcomCaptureImpl.Codeunit.al, EcomCaptureStatus.Enum.al, EcomCouponStatus.Enum.al, EcomCouponSub.Page.al, EcomCreateCouponImpl.Codeunit.al, EcomCreateCouponJQ.Codeunit.al, EcomCreateCouponProcess.Codeunit.al, EcomCreateCouponTryProcess.Codeunit.al, EcomCreateMembershipJQ.Codeunit.al, EcomCreateMMShipImpl.Codeunit.al, EcomCreateMMShipProcess.Codeunit.al, EcomCreateMMShipTryProcess.Codeunit.al, EcomCreateTicketImpl.Codeunit.al, EcomCreateTicketJQ.Codeunit.al, EcomCreateTicketProcess.Codeunit.al, EcomCreateTicketTryProcess.Codeunit.al, EcomCreateVchrImpl.Codeunit.al, EcomCreateVchrProcess.Codeunit.al, EcomCreateVchrTryProcess.Codeunit.al, EcomCreateVoucherJQ.Codeunit.al, EcomCreateWalletMgt.Codeunit.al, EcomDigitalNotifJQ.Codeunit.al, EcomDocFactBox.Page.al, EcomDocSubpagesTask.Codeunit.al, EcomHWalletProcessStatus.Enum.al, EcomJobManagement.Codeunit.al, EcomLineCaptureImpl.Codeunit.al, EcomLineCaptureProcess.Codeunit.al, EcomLineCaptureTryProcess.Codeunit.al, EComMembershipOperation.Enum.al, EcomMembershipStatus.Enum.al, EcomMembershipSub.Page.al, EcomPmtMethodType.Enum.al, EcomProcessWalletsJQ.Codeunit.al, EcomRelatedDocMgt.Codeunit.al, EcomRelatedDocument.Table.al, EcomRelatedDocuments.Page.al, EcomResolver.Codeunit.al, EcomSaleCaptureJQ.Codeunit.al, EcomSaleDocCaptureProcess.Codeunit.al, EcomSalesCouponLink.Table.al, EcomSalesCouponSource.Enum.al, EcomSalesDocApiAgentV2.Codeunit.al, EcomSalesDocApiEvents.Codeunit.al, EcomSalesDocConfirm.Codeunit.al, EcomSalesDocCrtStatus.Enum.al, EcomSalesDocEvents.Codeunit.al, EcomSalesDocImplEvents.Codeunit.al, EcomSalesDocImplV2.Codeunit.al, EcomSalesDocPmtSub.Page.al, EcomSalesDocPost.Codeunit.al, EcomSalesDocPostStatus.Enum.al, EcomSalesDocProcess.Codeunit.al, EcomSalesDocSource.Enum.al, EcomSalesDocSub.Page.al, EcomSalesDocTryProcess.Codeunit.al, EcomSalesDocType.Enum.al, EcomSalesDocument.Page.al, EcomSalesDocuments.Page.al, EcomSalesDocUtils.Codeunit.al, EcomSalesHeader.Table.al, EcomSalesLine.Table.al, EcomSalesLines.Page.al, EcomSalesLineSubtype.Enum.al, EcomSalesLineType.Enum.al, EcomSalesMembershipLink.Table.al, EcomSalesOrderProcJQ.Codeunit.al, EcomSalesPmtLine.Table.al, EcomSalesPmtLines.Page.al, EcomSalesRetOrderProcJQ.Codeunit.al, EcomSalesVoucherLink.Table.al, EcomSubpagesSync.Codeunit.al, EcomTicketStatus.Enum.al, EcomTicketSub.Page.al, EcomTryCapture.Codeunit.al, EcomVirtualItemDocStatus.Enum.al, EcomVirtualItemEvents.Codeunit.al, EcomVirtualItemMgt.Codeunit.al, EcomVirtualItemProcestatus.Enum.al, EcomVoucherLinkState.Enum.al, EcomVoucherLookup.Page.al, EcomVoucherStatus.Enum.al, EcomVoucherSub.Page.al, EcomWalletSub.Page.al, IncEcomDocCustomerMapping.Enum.al, IncEcomDocCustUpdateMode.Enum.al, IncEcomSalesDocSetup.Page.al, IncEcomSalesDocSetup.Table.al, IncEcomSalesWebhooks.Codeunit.al, JQCleanupDeadPOSSales.Codeunit.al, JQCleanupDeleteSale.Codeunit.al, JQCleanupParkSale.Codeunit.al, LoyaltyApiAgent.Codeunit.al, MemberApiAgent.Codeunit.al, MemberCardApiAgent.Codeunit.al, MembershipApiAddProperties.Interface.al, MembershipApiAgent.Codeunit.al, MembershipApiFunctions.Enum.al, MembershipApiHandler.Codeunit.al, MembershipApiTranslation.Codeunit.al, MembershipAttributesAgent.Codeunit.al, MembershipCatalogAgent.Codeunit.al, MembershipListAgent.Codeunit.al, MembershipMiscApiAgent.Codeunit.al, MembershipPhasesApiAgent.Codeunit.al, MembershipsAPI.Codeunit.al, MembershipsModuleResolver.Codeunit.al, MembershipSubscrAgent.Codeunit.al, NpDcIssOnEcomSaleSLine.Table.al, NpDcIssOnEcomSaleSLines.Page.al, NPDesignerManifestAPI.Codeunit.al, NPDesignerManifestResolver.Codeunit.al, OnEcomSaleCouponModule.Codeunit.al, POSWebhook.Enum.al, POSWebhooks.Codeunit.al, RetailVModuleResolver.Codeunit.al, RetailVoucherAgent.Codeunit.al, RetailVoucherApiFunctions.Enum.al, RetailVouchersAPI.Codeunit.al, RetailVouchersApiHandler.Codeunit.al, RetailVoucherWebhooks.Codeunit.al, SaleResolver.Codeunit.al, SalesAPI.Codeunit.al, SalesApiAgent.Codeunit.al, SalesApiFunctions.Enum.al, SalesApiHandler.Codeunit.al, TicketingAPI.Codeunit.al, TicketingApiFunctions.Enum.al, TicketingApiHandler.Codeunit.al, TicketingApiTranslations.Codeunit.al, TicketingCapacityAgent.Codeunit.al, TicketingCatalogAgent.Codeunit.al, TicketingImportAgent.Codeunit.al, TicketingModuleResolver.Codeunit.al, TicketingReportAgent.Codeunit.al, TicketingReservationAgent.Codeunit.al, TicketingTicketAgent.Codeunit.al, TicketingTimeSlotsAgent.Codeunit.al, TicketReservationBuffer.Table.al, TicketReservationRemap.Page.al, TicketReservReqList.Page.al, TryCreateExtPOSSale.Codeunit.al, UserAccountAPI.Codeunit.al, UserAccountPaymMethodAPI.Codeunit.al, UserAccountResolver.Codeunit.al, WalletApiAgent.Codeunit.al
