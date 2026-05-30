---
type: reference
tags: [accounts, member-module, np-retail, tables, codeunits, pages, enums, queries, interfaces, reports, xmlports]
relates:
  - accounts/member-module/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Member Module/AdmisScannerStatCard.Page.al
  - Application/src/Member Module/AdmScannerStatFactbox.Page.al
  - Application/src/Member Module/AdmServiceSetupFactbox.Page.al
  - Application/src/Member Module/Subscription/CustEntryUnapplyModifier.Codeunit.al
  - Application/src/Member Module/MemberAlteration/_public/IMemberAlterationPriceHandler.Interface.al
  - Application/src/Member Module/MemberAlteration/PriceFunctions/MemberAlterPriceDifference.Codeunit.al
  - Application/src/Member Module/MemberAlteration/_public/MemberAlterPriceFunction.Enum.al
  - Application/src/Member Module/MemberAlteration/PriceFunctions/MemberAlterTimeDifference.Codeunit.al
  - Application/src/Member Module/MemberAlteration/PriceFunctions/MemberAlterUnitPrice.Codeunit.al
  - Application/src/Member Module/MemberAppAreaSetup.Page.al
  - Application/src/Member Module/Media/Cloudflare/MemberImageMediaFeature.Codeunit.al
  - Application/src/Member Module/Media/Cloudflare/MemberImageMigrateToCFErr.Codeunit.al
  - Application/src/Member Module/Media/Cloudflare/MemberImageMigrateToCFR2.Codeunit.al
  - Application/src/Member Module/Media/Cloudflare/MemberImageMigrateToCFR2.Table.al
  - Application/src/Member Module/_public/MemberMergeHandler.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/MemberNationalIdentifier.Page.al
  - Application/src/Member Module/MembershipAdvFeature.Codeunit.al
  - Application/src/Member Module/MembershipAttemptCreate.Codeunit.al
  - Application/src/Member Module/MembershipEntryLinkList.Page.al
  - Application/src/Member Module/MembershipEssentFeature.Codeunit.al
  - Application/src/Member Module/Subscription/_public/MembershipRole2UserAccount.Query.al
  - Application/src/Member Module/Subscription/_public/MembershipSubscriptionInfo.Query.al
  - Application/src/Member Module/_public/MemberUpdateUniqueId.Page.al
  - Application/src/Member Module/Subscription/MessageSeverity.Enum.al
  - Application/src/Member Module/Loyalty/Achievements/_public/MMAchActivity.Enum.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivity.Interface.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivity.Table.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityAchievement.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityCondition.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityCondition.Table.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityEntry.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityEntry.Table.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityManagement.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityManual.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityMemberAdmit.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivityNoOp.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchActivitySetup.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchGoal.Table.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchGoalSetup.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchievement.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchievement.Table.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchievementCoupon.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/_public/MMAchievementFacade.Codeunit.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchMemberAchievement.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchMemberActivityEntry.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchMemberGoalList.Page.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchReward.Table.al
  - Application/src/Member Module/Loyalty/Achievements/MMAchRewardSetup.Page.al
  - Application/src/Member Module/Integrations/_public/MMAddInfoRequestConfig.Enum.al
  - Application/src/Member Module/Integrations/MMAddInfoRequestSetup.Codeunit.al
  - Application/src/Member Module/Integrations/_public/MMAdditionalInfoRequest.Table.al
  - Application/src/Member Module/Integrations/_public/MMAdditionalInfoResponse.Table.al
  - Application/src/Member Module/_API/SOAP/MMAddMember.XmlPort.al
  - Application/src/Member Module/Integrations/MMAddnfoReqMgt.Codeunit.al
  - Application/src/Member Module/_API/SOAP/MMAddReplaceCard.XmlPort.al
  - Application/src/Member Module/MMAdmisScannerStations.Page.al
  - Application/src/Member Module/MMAdmisScannerStations.Table.al
  - Application/src/Member Module/MMAdmisServiceEntries.Page.al
  - Application/src/Member Module/MMAdmisServiceEntry.Table.al
  - Application/src/Member Module/MMAdmisServiceLog.Table.al
  - Application/src/Member Module/MMAdmisServiceSetup.Table.al
  - Application/src/Member Module/_API/AdmissionApp/_public/MMAdmissionAppWebService.Codeunit.al
  - Application/src/Member Module/MMAdmissionServiceLog.Page.al
  - Application/src/Member Module/MMAdmissionServiceSetup.Page.al
  - Application/src/Member Module/_public/MMAdmissionServiceWS.Codeunit.al
  - Application/src/Member Module/POSAction/Member Arrival/MMAdmitMemberOnEoSMethod.Enum.al
  - Application/src/Member Module/MMAlterationJnlMgmt.Codeunit.al
  - Application/src/Member Module/_API/SOAP/MMAnonymousMember.XmlPort.al
  - Application/src/Member Module/MMAttemptMemberArrival.Codeunit.al
  - Application/src/Member Module/MMAvailableCoupons.Page.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureMemberRegistration.Codeunit.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureMemberRegList.Page.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureMemberRegSetup.Page.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureMemberRegSetup.Table.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureMemberUpdateLog.Table.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureRegistrationLog.Page.al
  - Application/src/Member Module/DelegatedRegistration/MMAzureRegistrationMethod.Enum.al
  - Application/src/Member Module/_API/SOAP/MMBlockMembership.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMBlockMembershipMember.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMCancelReservePoints.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMCaptureReservePoints.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMChangeMembership.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMConfirmAutoRenewPay.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMConfirmMembersPay.XmlPort.al
  - Application/src/Member Module/MMCreateMembership.Page.al
  - Application/src/Member Module/_API/SOAP/MMCreateMembership.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMCreateWalletMemPass.XmlPort.al
  - Application/src/Member Module/MMEditMembershipEntries.Page.al
  - Application/src/Member Module/MMForeignMembersMgr.Codeunit.al
  - Application/src/Member Module/MMForeignMembersSetup.Page.al
  - Application/src/Member Module/MMForeignMembersSetup.Table.al
  - Application/src/Member Module/_API/SOAP/MMGDPRGetSetApprState.XmlPort.al
  - Application/src/Member Module/MMGDPRManagement.Codeunit.al
  - Application/src/Member Module/_public/MMGDPRMgtWrapper.Codeunit.al
  - Application/src/Member Module/_API/SOAP/MMGetAutoRenewProduct.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMGetLoyaltyConfig.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMGetLoyaltyPoints.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMGetLoyaltyRcptList.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMGetLoyStatement.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetMemberGDPRRoles.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetMemberLoyDetails.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetMembersChgItems.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetMembership.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetMembersMembers.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetMembersTicketList.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMGetSetAutoRenewOption.XmlPort.al
  - Application/src/Member Module/Integrations/MMIAdditionalInfoRequest.Enum.al
  - Application/src/Member Module/Integrations/MMIAdditionalInfoRequest.Interface.al
  - Application/src/Member Module/MMImportMembers.Codeunit.al
  - Application/src/Member Module/MMLanguage.Table.al
  - Application/src/Member Module/MMLanguages.Page.al
  - Application/src/Member Module/Loyalty/MMLoyaltyAlterMembers.Page.al
  - Application/src/Member Module/Loyalty/MMLoyaltyAlterMembers.Table.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMLoyaltyCouponElig.XmlPort.al
  - Application/src/Member Module/Loyalty/MMLoyaltyCouponMgr.Codeunit.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMLoyaltyCreateCoup.XmlPort.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMLoyaltyDeleteCoupont.XmlPort.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyaltyExpireReservation.Codeunit.al
  - Application/src/Member Module/MMLoyaltyJnlLineTag.Table.al
  - Application/src/Member Module/MMLoyaltyJnlLineTags.Page.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMLoyaltyListCoupon.XmlPort.al
  - Application/src/Member Module/Loyalty/_public/MMLoyaltyPointFacade.Codeunit.al
  - Application/src/Member Module/Loyalty/MMLoyaltyPointMgt.Codeunit.al
  - Application/src/Member Module/Loyalty/MMLoyaltyPointSetup.Page.al
  - Application/src/Member Module/Loyalty/MMLoyaltyPointSetup.Table.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyaltyRetryQueue.Table.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyaltyRetryQueueList.Page.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyaltyRetryQueueMgr.Codeunit.al
  - Application/src/Member Module/_public/MMLoyaltySalesChannel.Table.al
  - Application/src/Member Module/_public/MMLoyaltySalesChannels.Page.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyaltyServerTrxLog.Page.al
  - Application/src/Member Module/Loyalty/_public/MMLoyaltySetup.Page.al
  - Application/src/Member Module/Loyalty/_public/MMLoyaltySetup.Table.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyaltyStoreSetup.Table.al
  - Application/src/Member Module/MMLoyaltyTag.Table.al
  - Application/src/Member Module/MMLoyaltyTags.Page.al
  - Application/src/Member Module/_public/MMLoyaltyWebService.Codeunit.al
  - Application/src/Member Module/Loyalty/MMLoyaltyWebServiceMgr.Codeunit.al
  - Application/src/Member Module/Loyalty/_public/MMLoyAssignmentOnSale.Codeunit.al
  - Application/src/Member Module/Loyalty/MMLoyItemPointSetup.Page.al
  - Application/src/Member Module/Loyalty/_public/MMLoyItemPointSetup.Table.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyLedgerEntrySrvr.Table.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyPointMgrClient.Codeunit.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyPointMgrServer.Codeunit.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyPointPSPClient.Codeunit.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyStoreSetupClient.Page.al
  - Application/src/Member Module/Loyalty/PayWithPoints/MMLoyStoreSetupServer.Page.al
  - Application/src/Member Module/MMMembEntryTagBuff.Table.al
  - Application/src/Member Module/_public/MMMember.Table.al
  - Application/src/Member Module/MMMemberArrivalLog.Page.al
  - Application/src/Member Module/MMMemberArrLogEntry.Table.al
  - Application/src/Member Module/MMMemberAttrFactBox.Page.al
  - Application/src/Member Module/MMMemberCaptureList.Page.al
  - Application/src/Member Module/_public/MMMemberCard.Page.al
  - Application/src/Member Module/_public/MMMemberCard.Table.al
  - Application/src/Member Module/_public/MMMemberCardCard.Page.al
  - Application/src/Member Module/MMMemberCardFactBox.Page.al
  - Application/src/Member Module/_public/MMMemberCardList.Page.al
  - Application/src/Member Module/_public/MMMemberCardListMPos.Page.al
  - Application/src/Member Module/MMMemberCardNotific.Query.al
  - Application/src/Member Module/MMMemberCardsListPart.Page.al
  - Application/src/Member Module/_API/SOAP/MMMemberComm.XmlPort.al
  - Application/src/Member Module/MMMemberCommSetup.Page.al
  - Application/src/Member Module/MMMemberCommSetup.Table.al
  - Application/src/Member Module/MMMemberCommunication.Page.al
  - Application/src/Member Module/MMMemberCommunication.Table.al
  - Application/src/Member Module/_public/MMMemberCommunity.Page.al
  - Application/src/Member Module/_public/MMMemberCommunity.Table.al
  - Application/src/Member Module/MMMemberCreateDemoData.Codeunit.al
  - Application/src/Member Module/MMMemberEvaluation.Report.al
  - Application/src/Member Module/Media/Cloudflare/MMMemberExtImageFactBox.Page.al
  - Application/src/Member Module/MMMemberFactBox.Page.al
  - Application/src/Member Module/_API/SOAP/MMMemberIdentifier.XmlPort.al
  - Application/src/Member Module/Media/Cloudflare/_public/MMMemberImageMediaHandler.Codeunit.al
  - Application/src/Member Module/_public/MMMemberInfoCapture.Page.al
  - Application/src/Member Module/_public/MMMemberInfoCapture.Table.al
  - Application/src/Member Module/Integrations/MMMemberInfoIntegrationSetup.Page.al
  - Application/src/Member Module/Integrations/MMMemberInfoIntegrationSetup.Table.al
  - Application/src/Member Module/MMMemberInfoPicture.Page.al
  - Application/src/Member Module/MMMemberLimMgr.Codeunit.al
  - Application/src/Member Module/Media/Cloudflare/MMMemberMediaUploadQueue.Table.al
  - Application/src/Member Module/MMMemberMembersListPart.Page.al
  - Application/src/Member Module/_public/MMMemberNotification.Codeunit.al
  - Application/src/Member Module/MMMemberNotificEntry.Page.al
  - Application/src/Member Module/MMMemberNotificEntry.Table.al
  - Application/src/Member Module/_public/MMMemberNotificEntryBuf.Table.al
  - Application/src/Member Module/MMMemberNotificSetup.Page.al
  - Application/src/Member Module/MMMemberNotificSetup.Table.al
  - Application/src/Member Module/_public/MMMemberNotifOnSale.Codeunit.al
  - Application/src/Member Module/Subscription/MMMemberPaymentMethod.Table.al
  - Application/src/Member Module/Subscription/MMMemberPaymentMethods.Page.al
  - Application/src/Member Module/MMMemberPicture.Page.al
  - Application/src/Member Module/MMMemberPointEntryTag.Table.al
  - Application/src/Member Module/MMMemberPOSUI.Codeunit.al
  - Application/src/Member Module/_public/MMMemberPrintOnSale.Codeunit.al
  - Application/src/Member Module/MMMemberRemoteSearch.Page.al
  - Application/src/Member Module/MMMemberRetailIntegr.Codeunit.al
  - Application/src/Member Module/_public/MMMembers.Page.al
  - Application/src/Member Module/MMMembersAdmisSetup.Page.al
  - Application/src/Member Module/_public/MMMembersAdmisSetup.Table.al
  - Application/src/Member Module/MMMembersAlterationJnl.Page.al
  - Application/src/Member Module/MMMembersAlterGroup.Table.al
  - Application/src/Member Module/MMMembersAlterGroups.Page.al
  - Application/src/Member Module/MMMembersAlterLine.Table.al
  - Application/src/Member Module/MMMembersAlterLines.Page.al
  - Application/src/Member Module/_public/MMMembersAlterSetup.Table.al
  - Application/src/Member Module/MMMembersAutoRenewCard.Page.al
  - Application/src/Member Module/MMMembersAutoRenewList.Page.al
  - Application/src/Member Module/MMMembersAutoRenewLog.Page.al
  - Application/src/Member Module/MMMemberSearchFields.Page.al
  - Application/src/Member Module/_public/MMMembership.Table.al
  - Application/src/Member Module/_public/MMMembershipAlter.Page.al
  - Application/src/Member Module/MMMembershipAutoRenew.Codeunit.al
  - Application/src/Member Module/_public/MMMembershipAutoRenew.Enum.al
  - Application/src/Member Module/MMMembershipAutoRenew.Table.al
  - Application/src/Member Module/_public/MMMembershipCard.Page.al
  - Application/src/Member Module/MMMembershipEntriesView.Page.al
  - Application/src/Member Module/_public/MMMembershipEntry.Table.al
  - Application/src/Member Module/MMMembershipEntryLink.Table.al
  - Application/src/Member Module/_public/MMMembershipEvents.Codeunit.al
  - Application/src/Member Module/MMMembershipFactBox.Page.al
  - Application/src/Member Module/MMMembershipKiosk.Page.al
  - Application/src/Member Module/MMMembershipLimSetup.Page.al
  - Application/src/Member Module/MMMembershipLimSetup.Table.al
  - Application/src/Member Module/MMMembershipLoyaltyJnl.Page.al
  - Application/src/Member Module/MMMembershipLoyaltyJnl.Table.al
  - Application/src/Member Module/_public/MMMembershipMgt.Codeunit.al
  - Application/src/Member Module/MMMembershipMgtInternal.Codeunit.al
  - Application/src/Member Module/MMMembershipNotific.Page.al
  - Application/src/Member Module/_public/MMMembershipNotific.Table.al
  - Application/src/Member Module/ParkSale/MMMembershipParkSale.Codeunit.al
  - Application/src/Member Module/Subscription/MMMembershipPmtMethodMap.Table.al
  - Application/src/Member Module/MMMembershipPrintJnl.Page.al
  - Application/src/Member Module/MMMembershipRapidPckg.Page.al
  - Application/src/Member Module/MMMembershipRestApi.Codeunit.al
  - Application/src/Member Module/MMMembershipRestApiCache.Codeunit.al
  - Application/src/Member Module/MMMembershipRestApiCache.Enum.al
  - Application/src/Member Module/_public/MMMembershipRole.Table.al
  - Application/src/Member Module/_public/MMMemberships.Page.al
  - Application/src/Member Module/MMMembershipSalesSetup.Page.al
  - Application/src/Member Module/_public/MMMembershipSetup.Page.al
  - Application/src/Member Module/_public/MMMembershipSetup.Table.al
  - Application/src/Member Module/MMMembershipSoapApi.Codeunit.al
  - Application/src/Member Module/MMMembershipStatistics.Page.al
  - Application/src/Member Module/MMMembershipStatistics.Table.al
  - Application/src/Member Module/MMMembershipStatMgmt.Codeunit.al
  - Application/src/Member Module/_API/MMMembershipWebHooks.Codeunit.al
  - Application/src/Member Module/MMMembersLedgerEntries.Page.al
  - Application/src/Member Module/MMMembersMemberListPart.Page.al
  - Application/src/Member Module/_public/MMMembersMPos.Page.al
  - Application/src/Member Module/Loyalty/_public/MMMembersPointEntry.Page.al
  - Application/src/Member Module/_public/MMMembersPointsEntry.Table.al
  - Application/src/Member Module/MMMembersPointsSummary.Page.al
  - Application/src/Member Module/MMMembersPointsSummary.Table.al
  - Application/src/Member Module/_public/MMMembersSalesSetup.Table.al
  - Application/src/Member Module/_public/MMMembersSetupCard.Page.al
  - Application/src/Member Module/MMMembersTEMP.Page.al
  - Application/src/Member Module/MMMemberTicketManager.Codeunit.al
  - Application/src/Member Module/MMMemberUniqueIdentity.Enum.al
  - Application/src/Member Module/_public/MMMemberWebService.Codeunit.al
  - Application/src/Member Module/MMMemberWebServiceMgr.Codeunit.al
  - Application/src/Member Module/MMMembPntEntryTagsFactbox.Page.al
  - Application/src/Member Module/MMMembPointEntryTags.Page.al
  - Application/src/Member Module/Loyalty/_public/MMMembPointsDocType.Enum.al
  - Application/src/Member Module/_public/MMNotificationTrigger.Enum.al
  - Application/src/Member Module/_public/MMNPREndpointSetup.Page.al
  - Application/src/Member Module/MMNPRLoyWizard.Page.al
  - Application/src/Member Module/MMNPRMembership.Codeunit.al
  - Application/src/Member Module/_public/MMNPRRemoteEndpSetup.Table.al
  - Application/src/Member Module/MMNpXmlMembersTrigger.Codeunit.al
  - Application/src/Member Module/Loyalty/MMNRPLoyaltyWizard.Codeunit.al
  - Application/src/Member Module/MMPaymentMethodCollection.Page.al
  - Application/src/Member Module/Subscription/MMPaymentMethodMgt.Codeunit.al
  - Application/src/Member Module/Subscription/MMPaymentMethodStatus.Enum.al
  - Application/src/Member Module/MMPaymentReconci.Table.al
  - Application/src/Member Module/Subscription/_public/MMPaymentRequestStatus.Enum.al
  - Application/src/Member Module/Subscription/_public/MMPaymentRequestType.Enum.al
  - Application/src/Member Module/MMPendingCustomerUpdate.Page.al
  - Application/src/Member Module/MMPendingCustomerUpdate.Table.al
  - Application/src/Member Module/MMPOSActionMemberMgmt.Codeunit.al
  - Application/src/Member Module/Loyalty/MMPOSLoyaltyProfile.Page.al
  - Application/src/Member Module/Loyalty/MMPOSLoyaltyProfile.Table.al
  - Application/src/Member Module/Loyalty/MMPOSLoyaltyProfiles.Page.al
  - Application/src/Member Module/_public/MMPOSMemberCard.Page.al
  - Application/src/Member Module/Loyalty/MMPOSMemberProfile.Page.al
  - Application/src/Member Module/Loyalty/MMPOSMemberProfile.Table.al
  - Application/src/Member Module/Loyalty/MMPOSMemberProfiles.Page.al
  - Application/src/Member Module/MMPOSReceiptPrint.Codeunit.al
  - Application/src/Member Module/MMPOSSalesInfo.Table.al
  - Application/src/Member Module/MMProcessInlineNotif.Codeunit.al
  - Application/src/Member Module/MMRecurPaymentSetup.Page.al
  - Application/src/Member Module/MMRecurPaymSetup.Table.al
  - Application/src/Member Module/MMRecurringPayments.Page.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMRegisterSale.XmlPort.al
  - Application/src/Member Module/_API/SOAP/MMRegretMemberTimeframe.XmlPort.al
  - Application/src/Member Module/MMRegSalesBuffer.Table.al
  - Application/src/Member Module/MMRemoteMemberUpdate.Page.al
  - Application/src/Member Module/MMRemoteSearchResult.Page.al
  - Application/src/Member Module/Subscription/MMRenewalSchedCard.Page.al
  - Application/src/Member Module/Subscription/MMRenewalSchedHdr.Table.al
  - Application/src/Member Module/Subscription/MMRenewalSchedLine.Table.al
  - Application/src/Member Module/Subscription/MMRenewalSchedList.Page.al
  - Application/src/Member Module/Subscription/MMRenewalSchedSub.Page.al
  - Application/src/Member Module/MMRequestMemberUpdate.Page.al
  - Application/src/Member Module/MMRequestMemberUpdate.Table.al
  - Application/src/Member Module/MMRequestMemberUpdMgr.Codeunit.al
  - Application/src/Member Module/Loyalty/_API/SOAP/MMReservePoints.XmlPort.al
  - Application/src/Member Module/_public/MMRetailIntegration.Codeunit.al
  - Application/src/Member Module/MMSalesDocumentType.Enum.al
  - Application/src/Member Module/_API/SOAP/MMSearchMembers.XmlPort.al
  - Application/src/Member Module/MMSelectAlteration.Page.al
  - Application/src/Member Module/MMSetAutoRenewStatus.Page.al
  - Application/src/Member Module/MMSmartSearch.Codeunit.al
  - Application/src/Member Module/MMSponsorshipTicketMgt.Codeunit.al
  - Application/src/Member Module/MMSponsorsTicketEntry.Table.al
  - Application/src/Member Module/MMSponsorsTicketSetup.Page.al
  - Application/src/Member Module/MMSponsorsTicketSetup.Table.al
  - Application/src/Member Module/MMSponsorTicketEntry.Page.al
  - Application/src/Member Module/Subscription/MMSubAdyenPGSetupCard.Page.al
  - Application/src/Member Module/Subscription/MMSubPayReqLogEntries.Page.al
  - Application/src/Member Module/Subscription/_public/MMSubPayRequestToAccount.Query.al
  - Application/src/Member Module/Subscription/MMSubReqLogEntries.Page.al
  - Application/src/Member Module/Subscription/MMSubReqLogProcStatus.Enum.al
  - Application/src/Member Module/Subscription/MMSubsAdyenPGEnvType.Enum.al
  - Application/src/Member Module/Subscription/MMSubsAdyenPGSetup.Table.al
  - Application/src/Member Module/Subscription/MMSubsAdyenRecProcModel.Enum.al
  - Application/src/Member Module/Subscription/MMSubscrAutoRenewal.Enum.al
  - Application/src/Member Module/Subscription/MMSubscription.Table.al
  - Application/src/Member Module/Subscription/MMSubscriptionDetails.Page.al
  - Application/src/Member Module/Subscription/MMSubscriptionFactBox.Page.al
  - Application/src/Member Module/Subscription/MMSubscriptionList.Page.al
  - Application/src/Member Module/Subscription/MMSubscriptionLog.Table.al
  - Application/src/Member Module/Subscription/_public/MMSubscriptionLogging.Codeunit.al
  - Application/src/Member Module/Subscription/_public/MMSubscriptionMgt.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscriptionMgtImpl.Codeunit.al
  - Application/src/Member Module/Subscription/_public/MMSubscriptionPSP.Enum.al
  - Application/src/Member Module/Subscription/MMSubscriptionTemplate.Table.al
  - Application/src/Member Module/Subscription/MMSubscriptionTransact.Table.al
  - Application/src/Member Module/Subscription/_public/MMSubscrPaymentIHandler.Interface.al
  - Application/src/Member Module/Subscription/_public/MMSubscrPaymentRequest.Table.al
  - Application/src/Member Module/Subscription/MMSubscrPaymentRequests.Page.al
  - Application/src/Member Module/Subscription/MMSubscrPayReqProcJQ.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrPayReqTryProcess.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrPmtAdyen.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrPmtRequestFactBox.Page.al
  - Application/src/Member Module/Subscription/MMSubscrPmtRequestList.Page.al
  - Application/src/Member Module/Subscription/MMSubscrPmtUndefined.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrRenewPost.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrRenewProcess.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrRenewProcJQ.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrRenewReqJQ.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrRenewRequest.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrRequest.Table.al
  - Application/src/Member Module/Subscription/MMSubscrRequestFactBox.Page.al
  - Application/src/Member Module/Subscription/MMSubscrRequestList.Page.al
  - Application/src/Member Module/Subscription/MMSubscrRequests.Page.al
  - Application/src/Member Module/Subscription/MMSubscrRequestStatus.Enum.al
  - Application/src/Member Module/Subscription/MMSubscrRequestType.Enum.al
  - Application/src/Member Module/Subscription/MMSubscrRequestUtils.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrReversalMgt.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrTerminationJQ.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubscrTokenRenewalJQ.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsMembersFactbox.Page.al
  - Application/src/Member Module/Subscription/MMSubsMembersFactbWorker.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsMembershipFactbox.Page.al
  - Application/src/Member Module/Subscription/_public/MMSubsPaymentGateway.Table.al
  - Application/src/Member Module/Subscription/MMSubsPaymentGateways.Page.al
  - Application/src/Member Module/Subscription/_public/MMSubsPaymentIHandler.Interface.al
  - Application/src/Member Module/Subscription/_public/MMSubsPayReqLogEntry.Table.al
  - Application/src/Member Module/Subscription/_public/MMSubsPayReqLogProcStatus.Enum.al
  - Application/src/Member Module/Subscription/MMSubsPayReqLogUtils.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsPayRequestUtils.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsPmtGatewayStatus.Enum.al
  - Application/src/Member Module/Subscription/MMSubsReqLogEntry.Table.al
  - Application/src/Member Module/Subscription/MMSubsReqLogUtils.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsReqProcStatus.Enum.al
  - Application/src/Member Module/Subscription/MMSubsRequestTermination.Page.al
  - Application/src/Member Module/Subscription/_public/MMSubsTerminationReason.Enum.al
  - Application/src/Member Module/Subscription/MMSubsTryMethods.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsTryRenewProcess.Codeunit.al
  - Application/src/Member Module/Subscription/MMSubsUserAccountFactbox.Page.al
  - Application/src/Member Module/MMTextHelper.Codeunit.al
  - Application/src/Member Module/_public/MembershipTimeline/MMTimelineDescribeEvent.Codeunit.al
  - Application/src/Member Module/_public/MembershipTimeline/_public/MMTimelineEventBuffer.Table.al
  - Application/src/Member Module/_public/MembershipTimeline/_public/MMTimelineEventType.Enum.al
  - Application/src/Member Module/_public/MembershipTimeline/MMTimelineHandler.Codeunit.al
  - Application/src/Member Module/_public/MembershipTimeline/_public/MMTimelineList.Page.al
  - Application/src/Member Module/_public/MembershipTimeline/_public/MMTimelineTypeInterface.Interface.al
  - Application/src/Member Module/Integrations/MMUnknownAddInfoRequest.Codeunit.al
  - Application/src/Member Module/MMUpdateCustomerPending.Codeunit.al
  - Application/src/Member Module/_API/SOAP/MMUpdateMember.XmlPort.al
  - Application/src/Member Module/Integrations/Vipps MobilePay/MMVippsMPAddInfoRequest.Codeunit.al
  - Application/src/Member Module/Integrations/Vipps MobilePay/MMVippsMPCommunication.Codeunit.al
  - Application/src/Member Module/Integrations/Vipps MobilePay/MMVippsMPLoginSetup.Page.al
  - Application/src/Member Module/Integrations/Vipps MobilePay/MMVippsMPLoginSetup.Table.al
  - Application/src/Member Module/Integrations/Vipps MobilePay/MMVippsMPPollingDialog.Page.al
  - Application/src/Member Module/_API/MMWebhookChangeDetect.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/DK/NationalIdentifierDK.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/DK/_public/NationalIdentifierDKCPR.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/DK/_public/NationalIdentifierDKCVR.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/DK/_public/NationalIdentifierDKVAT.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/NationalIdentifierIface.Interface.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/NationalIdentifierNone.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/SE/NationalIdentifierSE.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/SE/_public/NationalIdentifierSECNR.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/SE/_public/NationalIdentifierSEONR.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/SE/_public/NationalIdentifierSEPNR.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/SE/_public/NationalIdentifierSEVAT.Codeunit.al
  - Application/src/Member Module/_public/NationalIdentifier/_public/NationalIdentifierType.Enum.al
  - Application/src/Member Module/Subscription/MM_ChangePmtMethod/POSActionChangePmtMethod.Codeunit.al
  - Application/src/Member Module/Subscription/MM_ChangePmtMethod/POSActionChangePmtMethodB.Codeunit.al
  - Application/src/Member Module/POSAction/Create Member/POSActionCreateMember.Codeunit.al
  - Application/src/Member Module/POSAction/Create Member/POSActionCreateMemberB.Codeunit.al
  - Application/src/Member Module/POSAction/Get Confirmation/POSActionGetConfirmation.Codeunit.al
  - Application/src/Member Module/POSAction/GetText/POSActionGetText.Codeunit.al
  - Application/src/Member Module/POSAction/Member Arrival/POSActionMemberAdmitOnEoS.Codeunit.al
  - Application/src/Member Module/POSActionMemberMgtWF2.Codeunit.al
  - Application/src/Member Module/MemberMgt/POSActionMemberMgtWF3.Codeunit.al
  - Application/src/Member Module/MemberMgt/POSActionMemberMgtWF3B.Codeunit.al
  - Application/src/Member Module/POSAction/BackEndAction/POSActionMMBackEndB.Codeunit.al
  - Application/src/Member Module/POSAction/BackEndAction/POSActionMMBackEndFun.Codeunit.al
  - Application/src/Member Module/POSAction/Member Arrival/POSActionMMMemberArr.Codeunit.al
  - Application/src/Member Module/POSAction/Member Arrival/POSActionMMMemberArrB.Codeunit.al
  - Application/src/Member Module/POSAction/Member Loyalty/POSActionMMMemberLoy.Codeunit.al
  - Application/src/Member Module/POSAction/Member Loyalty/POSActionMMMemberLoyB.Codeunit.al
  - Application/src/Member Module/POSAction/Print and Admit/POSActionPrintandAdmit.Codeunit.al
  - Application/src/Member Module/POSAction/RegisterGuests/POSActionRegisterGuests.Codeunit.al
  - Application/src/Member Module/POSAction/RegisterGuests/POSActionRegisterGuestsB.Codeunit.al
  - Application/src/Member Module/MemberArrivalSS/POSActionSSMemberArrB.Codeunit.al
  - Application/src/Member Module/_public/POSMemberSession.Codeunit.al
  - Application/src/Member Module/POSAction/Print and Admit/PrintAdmitTryPrint.Codeunit.al
  - Application/src/Member Module/POSAction/Print and Admit/PrintandAdmit.Page.al
  - Application/src/Member Module/POSAction/Print and Admit/_public/PrintandAdmitBuffer.Table.al
  - Application/src/Member Module/POSAction/Print and Admit/_public/PrintandAdmitPublic.Codeunit.al
  - Application/src/Member Module/RCMembersBurndownChart.Page.al
  - Application/src/Member Module/RCMembersBurndownSetup.Page.al
  - Application/src/Member Module/RCMembersBurndownSetup.Table.al
  - Application/src/Member Module/RCMembershipStatistics.Page.al
  - Application/src/Member Module/RCMemStatCues.Table.al
  - Application/src/Member Module/RCMMMembersBurndownMgt.Codeunit.al
  - Application/src/Member Module/Integrations/Adyen/ReturnInfoCollectSetup.Page.al
  - Application/src/Member Module/Integrations/Adyen/ReturnInfoCollectSetup.Table.al
  - Application/src/Member Module/Integrations/Adyen/ReturnInfoDeviceSetting.Page.al
  - Application/src/Member Module/Integrations/Adyen/ReturnInfoDeviceSetting.Table.al
  - Application/src/Member Module/Integrations/Adyen/ReturnInfoDeviceSettings.Page.al
  - Application/src/Member Module/Integrations/Adyen/_public/ReturnInfoRequest.Enum.al
  - Application/src/Member Module/MemberArrivalSS/SSPOSActionMemberArr.Codeunit.al
  - Application/src/Member Module/Subscription/_public/UserAccountToMembership.Query.al
---

# Member Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6151262 | "NPR MemberImageMigrateToCFR2" | Code | Code | — |
| 6150766 | "NPR MM AchActivity" | Membership Achievement Activities | Code | — |
| 6150768 | "NPR MM AchActivityCondition" | Membership Achievement Activity Conditions | ActivityCode, ConditionName | — |
| 6150764 | "NPR MM AchActivityEntry" | Membership Achievement Activity Entry | EntryNo | — |
| 6150763 | "NPR MM AchGoal" | Membership Achievement Goal | Code | — |
| 6150767 | "NPR MM Achievement" | Membership Achievement | EntryNo | — |
| 6150769 | "NPR MM AchReward" | Membership Achievement Rewards | Code | — |
| 6150964 | "NPR MM Add. Info. Request" | Additional Information Request Data | "Source Record" | — |
| 6150965 | "NPR MM Add. Info. Response" | Additional Information Response Data | "Source Record" | — |
| 6060095 | "NPR MM Admis. Scanner Stations" | MM Admission Scanner Stations | "Scanner Station Id" | — |
| 6060091 | "NPR MM Admis. Service Entry" | MM Admission Service Entry | "Entry No." | — |
| 6060092 | "NPR MM Admis. Service Log" | MM Admission Service Log | "No." | — |
| 6060090 | "NPR MM Admis. Service Setup" | MM Admission Service Setup | "No." | — |
| 6060006 | "NPR MM AzureMemberRegSetup" | Code | AzureRegistrationSetupCode | — |
| 6060015 | "NPR MM AzureMemberUpdateLog" | Entry No. | EntryNo | — |
| 6060143 | "NPR MM Foreign Members. Setup" | External Validation | "Community Code", "Manager Code" | — |
| 6150849 | "NPR MM Language" | Language | LanguageCode | — |
| 6151163 | "NPR MM Loyalty Alter Members." | Loyalty Alter Membership | "Loyalty Code", "From Membership Code", "To Membership Code", "Change Direction" | — |
| 6059890 | "NPR MM Loyalty Jnl Line Tag" | Loyalty Journal Line Tag | "Journal Line Entry No.", "Tag Key", "Tag Value" | — |
| 6060141 | "NPR MM Loyalty Point Setup" | Loyalty Points Setup | "Code", "Line No." | — |
| 6150899 | "NPR MM LoyaltyRetryQueue" | Loyalty Retry Queue | EntryNo | — |
| 6060086 | "NPR MM Loyalty Sales Channel" | Sales Channel | "Code" | — |
| 6060140 | "NPR MM Loyalty Setup" | Loyalty Setup | "Code" | — |
| 6151161 | "NPR MM Loyalty Store Setup" | Loyalty Store Setup | "Client Company Name", "Store Code", "Unit Code" | — |
| 6059887 | "NPR MM Loyalty Tag" | Loyalty Tag | "Key" | — |
| 6060142 | "NPR MM Loy. Item Point Setup" | Loyalty Item Point Setup | "Code", "Line No." | — |
| 6151162 | "NPR MM Loy. LedgerEntry (Srvr)" | Loyalty Server Store Ledger | "Entry No." | — |
| 6059889 | "NPR MM Memb. Entry Tag Buff" | MM Membership Entry Tag Buffer | "Tag Key", "Tag Value" | — |
| 6060126 | "NPR MM Member" | Member | "Entry No." | — |
| 6060145 | "NPR MM Member Arr. Log Entry" | MM Member Arrival Log Entry | "Entry No." | — |
| 6060131 | "NPR MM Member Card" | Member Card | MemberCard.SetFilter("External Card No.", '=%1', Rec."External Card No." | — |
| 6151187 | "NPR MM Member Comm. Setup" | Member Communication Setup | "Membership Code", "Message Type" | — |
| 6151188 | "NPR MM Member Communication" | Member Communication | "Member Entry No.", "Membership Entry No.", "Message Type" | — |
| 6060132 | "NPR MM Member Community" | Member Community | "Code" | — |
| 6060134 | "NPR MM Member Info Capture" | Member Info Capture | "Entry No." | — |
| 6150971 | "NPR MM Member Info. Int. Setup" | Member Info Integration Setup | "Primary Key" | — |
| 6060012 | "NPR MM MemberMediaUploadQueue" | Member Media Upload Queue | EntryNo | — |
| 6060139 | "NPR MM Member Notific. Entry" | Member Notification Entry | "Notification Entry No.", "Member Entry No." | — |
| 6151238 | "NPR MMMemberNotificEntryBuf" | Member Notification Entry Buffer | "Notification Entry No.", "Member Entry No." | — |
| 6060137 | "NPR MM Member Notific. Setup" | MM Member Notification Setup | "Code" | — |
| 6150920 | "NPR MM Member Payment Method" | Member Payment Method | "Entry No." | — |
| 6059888 | "NPR MM Member Point Entry Tag" | Member Point Entry Tag | "Member Point Entry No.", "Tag Key", "Tag Value" | — |
| 6060135 | "NPR MM Members. Admis. Setup" | Membership Admission Setup | "Membership  Code", "Admission Code", "Ticket No. Type", "Ticket No." | — |
| 6059871 | "NPR MM Members. Alter. Group" | Membership Alteration Group | "Code" | — |
| 6059872 | "NPR MM Members. Alter. Line" | MMembership Alteration Line | "Group Code", "Alteration Id" | — |
| 6060136 | "NPR MM Members. Alter. Setup" | Membership Alteration Setup | "Alteration Type", "From Membership Code", "Sales Item No." | — |
| 6060127 | "NPR MM Membership" | Membership | "Entry No." | — |
| 6060148 | "NPR MM Membership Auto Renew" | Membership Auto Renew | "Entry No." | — |
| 6060129 | "NPR MM Membership Entry" | Membership Entry | "Entry No." | — |
| 6151243 | "NPR MM Membership Entry Link" | MM Membership Entry Link | "Entry No." | — |
| 6060144 | "NPR MM Membership Lim. Setup" | Membership Limitation Setup | "Entry No." | — |
| 6014690 | "NPR MM MembershipLoyaltyJnl" | Membership Loyalty Journal | EntryNo | — |
| 6060138 | "NPR MM Membership Notific." | Membership Notification | "Entry No." | — |
| 6151174 | "NPR MM MembershipPmtMethodMap" | Membership Payment Method Mapping | PaymentMethodId, MembershipId | — |
| 6060128 | "NPR MM Membership Role" | Membership Role | "Membership Entry No.", "Member Entry No." | — |
| 6060124 | "NPR MM Membership Setup" | Membership Setup | "Code" | — |
| 6059789 | "NPR MM Membership Statistics" | MM Membership Statistics | "Reference Date" | — |
| 6060130 | "NPR MM Members. Points Entry" | Membership Points Entry | "Entry No." | — |
| 6151164 | "NPR MM Members. Points Summary" | MM Membership Points Summary | "Membership Entry No.", "Relative Period" | — |
| 6060125 | "NPR MM Members. Sales Setup" | Membership Sales Setup | Type, "No." | — |
| 6060146 | "NPR MM NPR Remote Endp. Setup" | MM NPR Remote Endpoint Setup | "Code" | — |
| 6060094 | "NPR MM Payment Reconci." | Payment Reconciliation | "Entry No." | — |
| 6151064 | "NPR MM Pending Customer Update" | Pending Customer Update | "Entry No." | — |
| 6150859 | "NPR MM POS Loyalty Profile" | POS Loyalty Profile | Code | — |
| 6150851 | "NPR MM POS Member Profile" | POS Member Profile | Code | — |
| 6060147 | "NPR MM POS Sales Info" | MM POS Sales Info | "Association Type", "Receipt No.", "Line No." | — |
| 6060093 | "NPR MM Recur. Paym. Setup" | Recurring Payment Setup | "Code" | — |
| 6151160 | "NPR MM Reg. Sales Buffer" | Register Sales Buffer | "Entry No." | — |
| 6151231 | "NPR MM Renewal Sched Hdr" | Renewal Schedule Header | Code | — |
| 6151232 | "NPR MM Renewal Sched Line" | Renewal Sched Line | "Schedule Code", "Line No." | — |
| 6014608 | "NPR MM Request Member Update" | Entry No. | "Entry No." | — |
| 6151186 | "NPR MM Sponsors. Ticket Entry" | Sponsorship Ticket Entry | "Entry No." | — |
| 6151185 | "NPR MM Sponsors. Ticket Setup" | Sponsorship Ticket Setup | "Membership Code", "External Membership No.", "Event Type", "Line No." | — |
| 6150962 | "NPR MM Subs Adyen PG Setup" | Subscriptions Adyen Payment Gateway Setup | "Code" | — |
| 6150918 | "NPR MM Subscription" | Subscription | "Entry No." | — |
| 6150925 | "NPR MM Subscription Log" | Subscription Log | "Entry No." | — |
| 6150917 | "NPR MM Subscription Template" | Membership Subscription Template | "Code" | — |
| 6150919 | "NPR MM Subscription Transact." | Subscription Transaction | "Entry No." | — |
| 6150921 | "NPR MM Subscr. Payment Request" | Subscription Payment Request | "Entry No." | — |
| 6150923 | "NPR MM Subscr. Request" | Subscription Request | "Entry No." | — |
| 6150961 | "NPR MM Subs. Payment Gateway" | Subscriptions Payment Gateway | "Code" | — |
| 6150963 | "NPR MM Subs Pay Req Log Entry" | Subscriptions Payment Request Log Entry | "Entry No." | — |
| 6150981 | "NPR MM Subs Req Log Entry" | Subscriptions Request Log Entry | "Entry No." | — |
| 6059921 | "NPR MMTimelineEventBuffer" | Entry No | EntryNo | — |
| 6150966 | "NPR MM VippsMP Login Setup" | Vipps MobilePay Login Setup | "Primary Key" | — |
| 6059873 | "NPR Print and Admit Buffer" | Print and Admit | "Type", "System Id" | — |
| 6060149 | "NPR RC Members. Burndown Setup" | Trailing Sales Orders Setup | "User ID" | — |
| 6059790 | "NPR RC Mem. Stat. Cues" | RC Membership Statistics Cues | "Code" | — |
| 6059877 | "NPR Return Info Collect Setup" | Return Information Collection Setup | "Primary Key" | — |
| 6059880 | "NPR Return Info Device Setting" | Return Info Device Setting | "POS Unit No." | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6248200 | "NPR CustEntry-Unapply Modifier" |  | HideProgressWindowOnSubscriptionPosting | — |
| 6248455 | "NPR MemberAlterPriceDifference" |  | CalculateCancelAlterationPrice, CalculateRenewAlterationPrice, CalculateAutoRenewAlterationPrice, CalculateUpgradeAlterationPrice, CalculateExtendAlterationPrice | — |
| 6248456 | "NPR MemberAlterTimeDifference" |  | CalculateCancelAlterationPrice, CalculateRenewAlterationPrice, CalculateAutoRenewAlterationPrice, CalculateUpgradeAlterationPrice, CalculateExtendAlterationPrice | — |
| 6248454 | "NPR MemberAlterUnitPrice" |  | CalculateCancelAlterationPrice, CalculateRenewAlterationPrice, CalculateAutoRenewAlterationPrice, CalculateUpgradeAlterationPrice, CalculateExtendAlterationPrice | — |
| 6248562 | "NPR MemberImageMediaFeature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled | — |
| 6248583 | "NPR MemberImageMigrateToCFErr" |  | LogMessage | — |
| 6248573 | "NPR MemberImageMigrateToCFR2" |  | StartMigrationAsync, CheckMigrationStatus, RunMigrationFromEnqueued, RunMigrationFull, MigrateMemberImage | — |
| 6248655 | "NPR MemberMergeHandler" |  | CompactMembersOnUniqueIdChange, UpdateExplanation | — |
| 6151440 | "NPR Membership Adv. Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6014488 | "NPR Membership Attempt Create" |  | SetCreateMembership, SetAttemptCreateMembershipForcedRollback, SetAttemptCreateMembership, AttemptCreateMemberships, CreateMembership | — |
| 6151439 | "NPR Membership Essent. Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6184716 | "NPR MM AchActivityAchievement" |  | RegisterActivity, ReverseActivity, InitializeConditions, DefaultConditions, CheckConstraints | — |
| 6184713 | "NPR MM AchActivityManagement" |  | InsertEntry, CreateAchievement, ProcessReward, CheckFirstLevelConstraints, CheckGenericConditions | — |
| 6184712 | "NPR MM AchActivityManual" |  | RegisterActivity, ReverseActivity, FindAndRegisterActivity, InitializeConditions, DefaultConditions | — |
| 6184719 | "NPR MM AchActivityMemberAdmit" |  | RegisterActivity, ReverseActivity, FindAndRegisterActivity, InitializeConditions, DefaultConditions | — |
| 6184711 | "NPR MM AchActivityNoOp" |  | RegisterActivity, ReverseActivity, InitializeConditions | — |
| 6184722 | "NPR MM AchievementCoupon" |  | IssueCoupon, OnInitCouponModules, OnHasIssueCouponsSetup, OnSetupIssueCoupon, OnRunIssueCoupon | — |
| 6184718 | "NPR MM AchievementFacade" |  | RegisterActivity, RegisterActivity, RegisterActivity, ReverseActivity, ReverseActivity | — |
| 6185129 | "NPR MM Add. Info. Req. Setup" |  | SetVippsEnvTestingOnClearCompanyConfig, SetVippsEnvTestingOnAfterCreatedNewCompanyByCopyCompany | — |
| 6185104 | "NPR MM Add. Info. Req. Mgt." |  | MakeAddInfoRequest, NormalizePhoneNo, SetCustAdditionalInfo, SetMemberAdditionalInfo, UpperCaseUrlEncode | — |
| 6184894 | "NPR MMAdmissionAppWebService" |  | RegisterArrival, ValidateMemberAndRegisterArrival | — |
| 6060093 | "NPR MM Admission Service WS" |  | OnBeforeInsertWebServiceAggregate, GuestValidation, GuestArrival, GuestArrivalV2, GetMemberAge | — |
| 6060094 | "NPR MM Alteration Jnl Mgmt" |  | AlterMembership, ExecuteAlteration, CheckAlteration, ProcessAlteration, SetRequestUserConfirmation | — |
| 6014492 | "NPR MM Attempt Member Arrival" |  | AttemptMemberArrival, AttemptMemberArrival, GetAttemptMemberArrivalResponse, DoAttemptMemberArrivalBatch, DoAttemptMemberArrivalSingle | — |
| 6151383 | "NPR MM AzureMemberRegistration" |  | ProcessMemberUpdateQueue, UpdateReceiveAzureLog, DecodeMessage, TestBlobFunctions, GetMemberImage | — |
| 6060145 | "NPR MM Foreign Members. Mgr." |  | RediscoverNewManagers, FormatForeignCardNumberFromScan, DispatchToReplicateForeignMemberCard, SynchronizeLoyaltyPoints, ShowSetup | — |
| 6151121 | "NPR MM GDPR Management" |  | OnNewMember, OnNewMembershipTimeEntry, OnNewAgreementVersion, OnMembershipGDPRAgreementChangeWorker, OnMembershipGDPRModeChangeWorker | — |
| 6151074 | "NPR MM GDPR Mgt. Wrapper" |  | AnonymizeMembership, AnonymizeMember, DeleteMembership | — |
| 6060132 | "NPR MM Import Members" |  | Import, decodeLine, isValidMember, insertMember, validateTextField | — |
| 6060143 | "NPR MM Loyalty Coupon Mgr" |  | IssueOneCoupon, IssueOneCouponAndPrint, IssueCoupon, OnInitCouponModules, OnHasIssueCouponsSetup | — |
| 6184912 | "NPR MMLoyaltyExpireReservation" |  | ExpireReservationAllStores, ExpireReservationStore, ExpireReservationBasedExprireAt, FilterReservationsToStore | — |
| 6184727 | "NPR MM Loyalty Point Facade" |  | CalculatePointsForTransactions, GetLoyaltyEndpointCode, GetLoyaltyEFTIntegrationType, ExpirePointsPerPeriod, ValidateFixedPeriodCalculation | — |
| 6060139 | "NPR MM Loyalty Point Mgt." |  | OnAfterInsertValueEntry, OnAfterInsertMembershipEntry, RegisterPoints, CalculatePointsForTransactions, OnDiscoverPointAssignmentSaleWorkflowStep | — |
| 6184975 | "NPR MM LoyaltyRetryQueueMgr" |  | AddToQueue, RetryQueueEntry, CalculateBackoffCoefficient, CreateJobQueueEntry, CurrCodeunitID | — |
| 6060141 | "NPR MM Loyalty WebService" |  | GetLoyaltyPoints, GetLoyaltyPointEntries, GetMembershipReceiptList, GetMembershipReceiptPdf, RegisterSale | — |
| 6060142 | "NPR MM Loyalty WebService Mgr" |  | RunProcessImportEntry, GetLoyaltyPoints, DecodeLoyaltyPointsQuery, DeserializeMembershipQuery, GetWebServiceFunction | — |
| 6184653 | "NPR MM Loy. Assignment On Sale" |  | — | — |
| 6151160 | "NPR MM Loy. Point Mgr (Client)" |  | PrepareServiceRequest, MakeServiceRequest, AddToRetryQueue, TransformToSoapAction, HandleWebServiceXMLResult | — |
| 6151161 | "NPR MM Loy. Point Mgr (Server)" |  | RegisterSales, RegisterSales, ReservePoints, ReservePoints, CancelReservation | — |
| 6151162 | "NPR MM Loy. Point PSP (Client)" |  | IntegrationName, OnDiscoverIntegrations, OnCreatePaymentOfGoodsRequest, OnCreateRefundRequest, CreateEftVoidRequest | — |
| 6014439 | "NPR MM Member Create Demo Data" |  | CreateDemoData, CreateFictionousMembers, CreateCancelSetup, CreateDemoMemberAttributes, CreateExtendSetup | — |
| 6248559 | "NPR MMMemberImageMediaHandler" |  | IsFeatureEnabled, PublicIdLookup, ImportMemberImageFromFileWithUI, PutMemberImageB64, PutMemberImageFromStream | — |
| 6060144 | "NPR MM Member Lim. Mgr." |  | LogMemberCardArrival, WS_CheckLimitMemberCardArrival, POS_CheckLimitMemberCardArrival, UpdateLogEntry, InternalLogArrival | — |
| 6060136 | "NPR MM Member Notification" |  | HandleBatchNotifications, HandleMembershipNotification, ForceHandleMembershipNotification, NotificationIsValid, CreateRecipients | — |
| 6184768 | "NPR MM Member Notif. On Sale" |  | — | — |
| 6060135 | "NPR MM Member POS UI" |  | MemberSearchWithFacialRecognition | — |
| 6184656 | "NPR MM Member Print On Sale" |  | — | — |
| 6060131 | "NPR MM Member Retail Integr." |  | POS_ValidateMemberCardNo, POS_ShowMemberCard, POS_ValidateMemberCardNoWorker, POS_GetExternalTicketItemFromMembership, POS_GetExternalTicketItemForMembership | — |
| 6060148 | "NPR MM Membership Auto Renew" |  | AutoRenewBatch, AutoRenewOneMembership, PostDocument, CreateInvoice, CreateDocument | — |
| 6014485 | "NPR MM Membership Events" |  | OnAssociateSaleWithMember, OnBeforePOSMemberArrival, OnCustomItemDescription, OnBeforeAssignCustomerNo, OnAfterCustomerCreate | OnAssociateSaleWithMember, OnBeforePOSMemberArrival, OnCustomItemDescription |
| 6060127 | "NPR MM Membership Mgt." |  | CreateMembershipAll, StartMembership, GetMembershipFromExtCardNo, DeleteMembership, GetMembershipMaxValidUntilDate | — |
| 6184732 | "NPR MM MembershipMgtInternal" |  | CreateMembershipInteractive, CreateMembershipAll, CreateMembership, DeleteMembership, DeleteMembershipFromTableTrigger | — |
| 6150825 | "NPR MM MembershipParkSale" |  | OnPOSSaleLine2Xml, OnXml2POSSaleLine, ParkSaleLine, UnParkSaleLine | — |
| 6150743 | "NPR MMMembershipRestApi" |  | ValidateRemoteCardNumber, GetRemoteMembership, GetRemoteMember, UpdateLocalMembershipPoints, CreateRemoteMembershipWorker | — |
| 6150879 | "NPR MMMembershipRestApiCache" |  | GetResponse, SetResponse, MemberCardNumberResponse, MemberCardNumberDetailsResponse, LoyaltyPointsResponse | — |
| 6248507 | "NPR MMMembershipSoapApi" |  | RequestMemberUpdateWorker, ValidateRemoteCardNumber, GetRemoteMembership, GetRemoteMember, UpdateLocalMembershipPoints | — |
| 6059912 | "NPR MM Membership Stat. Mgmt." |  | UpdateStatistics, CreateHistoricalData, CreateHistoricalDataSingleDate, DeleteHistoricalData, CreateJobQueueEntry | — |
| 6248397 | "NPR MM MembershipWebHooks" |  | TriggerMembershipEntryWebhookCall, TriggerMembershipActivatedWebhookCall, TriggerMemberAddedWebhookCall, OnMembershipCreated, OnMembershipMemberAdded | — |
| 6060130 | "NPR MM Member Ticket Manager" |  | ValidateMemberAssignedTickets, PreValidateMemberGuestTicketRequest, PromptForMemberGuestArrival, PromptForMemberGuestArrival, SelectReusableTicket | — |
| 6060128 | "NPR MM Member WebService" |  | MemberValidation, MembershipValidation, MemberEmailExists, MemberCardNumberValidation, MemberRegisterArrival | — |
| 6060129 | "NPR MM Member WebService Mgr" |  | RunProcessImportEntry, ClearNstCache, ImportCreateMemberships, ImportCreateMembership, ImportConfirmMemberships | — |
| 6060147 | "NPR MM NPR Membership" |  | OnDiscover, GetManagerCode, OnValidateAndReplicateForeignMemberCardSubscriber, OnFormatScannedCardNumberSubscriber, OnShowSetupSubscriber | — |
| 6151186 | "NPR MM NpXml Members. Trigger" |  | IsContactMembershipInfoComplete, IsMembershipValidForExport, IsSubscriber, IsValidContact, IsMembershipReadyForExportWorker | — |
| 6151159 | "NPR MM NRP Loyalty Wizard" |  | RunClientWizard, SetCommunityCode, CreateCommunity, CreateMembership, CreateLoyalty | — |
| 6185075 | "NPR MM Payment Method Mgt." |  | OnAfterDeleteMemberPaymentMethod, SetMemberPaymentMethodDefaultBeforeEndSale, GetPaymentMethodForMembership, SetMemberPaymentMethodAsDefault, SetMemberPaymentMethodAsDefault | — |
| 6060138 | "NPR MM POS Action: MemberMgmt." |  | ActionCode, ActionVersion, OnDiscoverActions, OnAction, OnBeforeInsertWorkflowStep | — |
| 6060134 | "NPR MM POS Receipt Print" |  | — | — |
| 6014687 | "NPR MM Process Inline Notif" |  | — | — |
| 6014656 | "NPR MM Request Member Upd Mgr" |  | UpdateMemberField, RequestFieldUpdate, AddSelectedMemberFields, AddFieldUpdateRequest, ValidateEmail | — |
| 6151084 | "NPR MM Retail Integration" |  | POS_ValidateMemberCardNo, GetMembershipEntryNoPOSSalesInfo, InsertMembershipPOSSalesInfo, DeletePOSSalesInfo | — |
| 6014682 | "NPR MM Smart Search" |  | SearchMember, SearchMembership, SearchMemberCard, MemberSearchWorker, MembershipSearchWorker | — |
| 6151185 | "NPR MM Sponsorship Ticket Mgt" |  | NotifyRecipients, NotifyRecipient, MakeTickets, MakeTicket, CreateTicketRequest | — |
| 6248464 | "NPR MM Subscription Logging" |  | InsertPaymentLogEntry, UpdatePaymentLogEntry | — |
| 6185029 | "NPR MM Subscription Mgt." |  | PaymentRequestStatusesUpdated, GetMembershipForSubscriptionPaymentRequest, GetMembershipsForPSPToken, ArchivePSPPaymentToken, IsDefaultForRenewal | — |
| 6185043 | "NPR MM Subscription Mgt. Impl." |  | GetSubscriptionFromMembership, GetEarliestTerminationDate, CalculateEarliestTerminationDate, TryCalculateNextPeriodEnd, UpdateMembershipSubscriptionDetails | — |
| 6185111 | "NPR MM Subscr. Pay Req Proc JQ" |  | ProcessSubscriptionPaymentRequests, HandlePaymentRequestError, TryGetRecurringPaymentSetup | — |
| 6248669 | "NPR MM Subscr.PayReqTryProcess" |  | — | — |
| 6185030 | "NPR MM Subscr.Pmt.: Adyen" |  | ProcessPaymentRequest, RunSetupCard, DeleteSetupCard, GetPaymentPostingAccount, ProcessNewStatus | OnBeforeInvokeAPI |
| 6185031 | "NPR MM Subscr.Pmt.: Undefined" |  | ProcessPaymentRequest, RunSetupCard, DeleteSetupCard, GetPaymentPostingAccount, ThrowNoHandlerError | — |
| 6185121 | "NPR MM Subscr. Renew: Post" |  | PostInvoiceToGL, PostPaymentsToGL, PostPayment, InitGenJnlLine, AssignAndCalculateDeferralSchedule | — |
| 6185036 | "NPR MM Subscr. Renew: Process" |  | ProcessSubscriptionRequest, PrepareRecords, ProcessErrorResponse, UpdateSubscriptionRequestErrorProcessingStatus | — |
| 6185034 | "NPR MM Subscr. Renew Proc. JQ" |  | — | — |
| 6185033 | "NPR MM Subscr. Renew Req. JQ" |  | RenewMembershipType, ProcessRecurringPaymentWithRenewSchedule, ProcessRecurringPaymentWithRetryCount, FilterMembershipSetup, ParamMembershipFilter | — |
| 6185047 | "NPR MM Subscr. Renew: Request" |  | CreateSubscriptionRenewalRequest, CreateSubscriptionPaymentMethodCollectionRequest, CalculateSubscriptionRenewal, CalculateSubscriptionRenewal, CreateSubscriptionPaymentRequest | — |
| 6185102 | "NPR MM Subscr. Request Utils" |  | ProcessSubscriptionRequestWithConfirmation, ProcessSubscriptionRequest, SetSubscriptionRequestStatus, SetSubscriptionRequestStatusCancelled, SetSubscriptionRequestStatusCancelledWithConfirmation | — |
| 6248187 | "NPR MM Subscr. Reversal Mgt." |  | RequestRefundWithConfirmation, RequestRefund, RequestPartialRefund, GetTerminationRequestTerminateAt, InitReversalRequest | — |
| 6248479 | "NPR MM Subscr Termination JQ" |  | ProcessRequestedTerminations | — |
| 6185035 | "NPR MM Subscr.Token Renewal JQ" |  | — | — |
| 6150805 | "NPR MM SubsMembersFactbWorker" |  | FindMembers | — |
| 6185097 | "NPR MM Subs Pay Req Log Utils" |  | OpenLogEntries, LogEntry, UpdateEntry | — |
| 6185103 | "NPR MM Subs Pay Request Utils" |  | ProcessSubsPayRequestWithConfirmation, SetSubscrPaymentRequestStatusWithConfirmation, SetSubscrPaymentRequestStatus, SetSubscrPaymentRequestStatusCancelled, SetSubscrPaymentRequestStatusSkipped | — |
| 6185126 | "NPR MM Subs Req Log Utils" |  | OpenLogEntries, LogEntry, UpdateEntry | — |
| 6248294 | "NPR MM Subs Try Methods" |  | SetSubscriptionRequestEntryNo, GetSubscriptionRequestEntryNo, SetSubscriptionPaymentRequestEntryNo, GetSubscriptionPaymentRequestEntryNo, GetPayByLinkSubscriptionRequest | — |
| 6185127 | "NPR MM Subs Try Renew Process" |  | ProcessSubscriptionRenewalResponse, ProcessRejectedStatus, ProcessConfirmedStatus, RenewMembership, RegretMembershipAction | — |
| 6151388 | "NPR MM Text Helper" |  | AsText10, AsText20, AsText30, AsText50, AsText80 | — |
| 6151091 | "NPR MMTimelineDescribeEvent" |  | CollectEvents, DescribeEvent, DescribeMembershipEvent, DescribeMemberEvent, DescribeMemberImageEvent | — |
| 6151092 | "NPR MMTimelineHandler" |  | GetTimelineEvents, GetAllCoreTimelineEventsWorker, GetUserName, GetUserName, CollectedMembershipEvents | — |
| 6185120 | "NPR MM Unkown Add. Info. Req." |  | RequestAdditionalInfo | — |
| 6248286 | "NPR MM Update Customer Pending" |  | ApplyUpdate | — |
| 6185091 | "NPR MM VippsMP Add. Info. Req." |  | RequestAdditionalInfo, TransferDataToResponse, TransferAddressToResponse | — |
| 6185092 | "NPR MM VippsMP Communication" |  | GetUserInformationVippsMP, FetchOpenIdConfig, RequestOpenIdConfig, ParseOpenIdConfig, FetchAuthRequestId | — |
| 6151096 | "NPR MM WebhookChangeDetect" |  | HasMemberWatchedFieldChanged, HasMembershipWatchedFieldChanged, OnAfterMemberModify, OnAfterMembershipModify, OnAfterAttributeChanged | — |
| 6150941 | "NPR NationalIdentifier_DK" |  | TryParse_CPR, TryParse_CVR, TryParse_VAT, ParseCprNumber, ParseCvrNumber | — |
| 6150980 | "NPR NationalIdentifier_DK_CPR" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150979 | "NPR NationalIdentifier_DK_CVR" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150975 | "NPR NationalIdentifier_DK_VAT" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150936 | "NPR NationalIdentifier_None" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150937 | "NPR NationalIdentifier_SE" |  | TryParse_PNR, TryParse_CNR, TryParse_ONR, TryParse_VAT, ParsePersonnummer | — |
| 6150965 | "NPR NationalIdentifier_SE_CNR" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150968 | "NPR NationalIdentifier_SE_ONR" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150964 | "NPR NationalIdentifier_SE_PNR" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6150971 | "NPR NationalIdentifier_SE_VAT" |  | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked | — |
| 6185064 | "NPR POSAction: ChangePmtMethod" |  | Register, RunWorkflow, GetActionScript, ChangePaymentMethod | — |
| 6185072 | "NPR POSAction:ChangePmtMethodB" |  | ChangePaymentMethod | — |
| 6014660 | "NPR POS Action Create Member" |  | Register, RunWorkflow, CreateMembershipWrapper, GetActionScript | — |
| 6060106 | "NPR POS Action Create Member B" |  | CreateMembershipWrapper, CreateMembershipAndAssignToSales, CreateMembership, AssignToSales | — |
| 6185024 | "NPR POSAction: GetConfirmation" |  | Register, RunWorkflow, GetActionScript, GetConfirmation, TrySelectValue | — |
| 6185073 | "NPR POSAction: GetText" |  | Register, RunWorkflow, GetText, TrySelectValue, InitEFTRequest | — |
| 6248566 | "NPR POSAction MemberAdmitOnEoS" |  | Register, RunWorkflow, HandleMemberAdmitOnEoS, GetAdmitMethod, GetSpeedgateScannerCode | — |
| 6014479 | "NPR POS Action Member Mgt WF2" |  | ActionCode, ActionVersion, OnDiscoverActions, OnAction20 | — |
| 6150947 | "NPR POS Action Member Mgt WF3" |  | Register, RunWorkflow, ManageMembershipAction, MemberInitialized, GetMembershipEntryLookupJson | — |
| 6151366 | "NPR POS Action Member MgtWF3-B" |  | ChooseMemberCardViaMemberSearchUI, ChooseMemberWithSearchUIWorkList, ChooseMemberCard, GetMembershipFromCardNumberWithUI, GetMembershipFromCardNumberWithUI | — |
| 6150819 | "NPR POS Action: MM BackEnd B" |  | CreateMember, CreateMembership | — |
| 6060108 | "NPR POS Action: MM BackEnd Fun" |  | Register, RunWorkflow, CreateMember, GetActionScript | — |
| 6060140 | "NPR POS Action: MM Member Arr." |  | Register, RunWorkflow, SetMemberArrival, InitializeWorkflow, DiscoverEanBoxEvents | — |
| 6150815 | "NPR POS Action: MM Member ArrB" |  | MemberArrival, DoMemberArrival, AddToastMemberScannedData, AddToastMemberScannedData, AddToastMemberScannedData | — |
| 6060146 | "NPR POS Action: MM Member Loy." |  | Register, RunWorkflow, GetActionScript, OnBeforePOSActionMMLoyalty, OnPOSAction | — |
| 6150955 | "NPR POSAction: MM Member Loy.B" |  | ActionCode, ViewPoints, RedeemPoints, SelectAvailableCoupon, SetCustomer | — |
| 6150688 | "NPR POS Action Print and Admit" |  | Register, RunWorkflow, FillData, HandleTryAdmit, TryAdmit | — |
| 6248457 | "NPR POS Action RegisterGuests" |  | Register, RunWorkflow, GetActionScript | — |
| 6248458 | "NPR POSActionRegisterGuestsB" |  | GetConfigurationJson, AdmitTokens, TryGetLastScannedMemberCard, ErrorWithMessage | — |
| 6151536 | "NPR POS Action SS: MemberArr.B" |  | SetMemberArrival, MemberArrival | — |
| 6248258 | "NPR POS Member Session" |  | SetMember, SetMember, GetMemberCardEntryNo, GetMemberCardExternalCardNo, IsInitialized | — |
| 6248398 | "NPR PrintAdmitTryPrint" |  | HandlePrint, PrintTicket, PrintMemberCard, PrintWallet | — |
| 6150689 | "NPR Print and Admit Public" |  | ResolveTicket, ResolveMemberCard, ResolveWallet, ResolveWallet, ResolveTicketRequest | OnGetDataForReference, OnBeforeHandleBuffer |
| 6060149 | "NPR RC MM Members.Burndown Mgt" |  | OnPageOpen, DrillDown, UpdateData, CalcPeriods, GetValue | — |
| 6151535 | "NPR SS POS Action: Member Arr." |  | Register, RunWorkflow, SetMemberArrival, GetActionScript | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6060080 | "NPR Admis. Scanner Stat. Card" | NPR MM Admis. Scanner Station Card | "NPR MM Admis. Scanner Stations" | — |
| 6060081 | "NPR Adm. Scanner Stat. Factbox" | NPR MM Admis. Scanner Station Factbox | "NPR MM Admis. Scanner Stations" | — |
| 6060082 | "NPR Adm. Service Setup Factbox" | NPR MM Admis. Service Setup Factbox | "NPR MM Admis. Service Setup" | — |
| 6059789 | "NPR Member App. Area Setup" | Membership Application Area Setup | "Application Area Setup" | — |
| 6150916 | "NPR MemberNationalIdentifier" | National Identifier | — | — |
| 6150920 | "NPR MembershipEntryLinkList" | Membership Ledger Entry Linked Entries | "NPR MM Membership Entry Link" | — |
| 6184962 | "NPR MemberUpdateUniqueId" | Update Member Unique ID | — | — |
| 6151372 | "NPR MM AchActivityCondition" | Membership Achievements - Activity Condition | "NPR MM AchActivityCondition" | — |
| 6151373 | "NPR MM AchActivityEntry" | Membership Achievements - Entries | "NPR MM AchActivityEntry" | — |
| 6151368 | "NPR MM AchActivitySetup" | Membership Achievements - Activity Setup | "NPR MM AchActivity" | — |
| 6151365 | "NPR MM AchGoalSetup" | Membership Achievements - Goal Setup | "NPR MM AchGoal" | — |
| 6151374 | "NPR MM Achievement" | Membership Achievements | "NPR MM Achievement" | — |
| 6151371 | "NPR MM AchMemberAchievement" | Membership Achievements | "NPR MM Achievement" | — |
| 6151367 | "NPR MM AchMemberActivityEntry" | Membership Achievements - Entries | "NPR MM AchActivityEntry" | — |
| 6151366 | "NPR MM AchMemberGoalList" | Membership Achievements | "NPR MM AchGoal" | — |
| 6151369 | "NPR MM AchRewardSetup" | Membership Achievements - Reward Setup | "NPR MM AchReward" | — |
| 6060069 | "NPR MM Admis. Scanner Stations" | MM Admission Scanner Stations | "NPR MM Admis. Scanner Stations" | — |
| 6060091 | "NPR MM Admis. Service Entries" | MM Admission Service Entries | "NPR MM Admis. Service Entry" | — |
| 6060092 | "NPR MM Admission Service Log" | MM Admission Service Log | "NPR MM Admis. Service Log" | — |
| 6060090 | "NPR MM Admission Service Setup" | MM Admission Service Setup | "NPR MM Admis. Service Setup" | — |
| 6014557 | "NPR MM Available Coupons" | Available Coupons | "NPR MM Loyalty Point Setup" | — |
| 6151112 | "NPR MM AzureMemberRegList" | Azure Member Registration Setup | "NPR MM AzureMemberRegSetup" | — |
| 6151109 | "NPR MM AzureMemberRegSetup" | Azure Member Registration Setup | "NPR MM AzureMemberRegSetup" | — |
| 6151141 | "NPR MM AzureRegistrationLog" | Azure Registration Log | "NPR MM AzureMemberUpdateLog" | — |
| 6060139 | "NPR MM Create Membership" | Create Membership | "NPR MM Members. Sales Setup" | — |
| 6059844 | "NPR MM Edit Membership Entries" | Edit Membership Ledger Entries | "NPR MM Membership Entry" | — |
| 6060146 | "NPR MM Foreign Members. Setup" | Foreign Membership Setup | "NPR MM Foreign Members. Setup" | — |
| 6184605 | "NPR MM Languages" | Member Communication Languages | "NPR MM Language" | — |
| 6151163 | "NPR MM Loyalty Alter Members." | Loyalty Alter Membership | "NPR MM Loyalty Alter Members." | — |
| 6150914 | "NPR MM Loyalty Jnl Line Tags" | Loyalty Journal Line Tags | "NPR MM Loyalty Jnl Line Tag" | — |
| 6060106 | "NPR MM Loyalty Point Setup" | Loyalty Points Setup | "NPR MM Loyalty Point Setup" | — |
| 6184718 | "NPR MM LoyaltyRetryQueueList" | Loyalty Retry Queue | "NPR MM LoyaltyRetryQueue" | — |
| 6151271 | "NPR MM Loyalty Sales Channels" | Sales Channels | "NPR MM Loyalty Sales Channel" | — |
| 6151161 | "NPR MM Loyalty Server Trx Log" | Loyalty Server Trans. Log | "NPR MM Loy. LedgerEntry (Srvr)" | — |
| 6060105 | "NPR MM Loyalty Setup" | Loyalty Setup | "NPR MM Loyalty Setup" | — |
| 6150911 | "NPR MM Loyalty Tags" | Loyalty Tags | "NPR MM Loyalty Tag" | — |
| 6060107 | "NPR MM Loy. Item Point Setup" | Loyalty Item Point Setup | "NPR MM Loy. Item Point Setup" | — |
| 6151162 | "NPR MM Loy. Store Setup Client" | Loyalty Store Setup (Client) | "NPR MM Loyalty Store Setup" | — |
| 6151160 | "NPR MM Loy. Store Setup Server" | Loyalty Store Setup (Server) | "NPR MM Loyalty Store Setup" | — |
| 6060088 | "NPR MM Member Arrival Log" | Member Arrival Log | "NPR MM Member Arr. Log Entry" | — |
| 6014633 | "NPR MM Member Attr FactBox" | Attributes | "NPR MM Member" | — |
| 6014457 | "NPR MM Member Capture List" | Members | "NPR MM Member Info Capture" | — |
| 6060136 | "NPR MM Member Card" | Member Card | "NPR MM Member" | — |
| 6060133 | "NPR MM Member Card Card" | Member Card Card | "NPR MM Member Card" | — |
| 6014634 | "NPR MM Member Card FactBox" | Details | "NPR MM Member Card" | — |
| 6060130 | "NPR MM Member Card List" | Member Cards | "NPR MM Member Card" | — |
| 6184671 | "NPR MM Member Card List MPos" | Member Cards (Phone) | "NPR MM Member Card" | — |
| 6060131 | "NPR MM Member Cards ListPart" | Member Cards | "NPR MM Member Card" | — |
| 6151187 | "NPR MM Member Comm. Setup" | Member Communication Setup | "NPR MM Member Comm. Setup" | — |
| 6151188 | "NPR MM Member Communication" | Member Communication | "NPR MM Member Communication" | — |
| 6060132 | "NPR MM Member Community" | Member Community | "NPR MM Member Community" | — |
| 6185102 | "NPR MMMemberExtImageFactBox" | Member Image | "NPR MM Member" | — |
| 6014623 | "NPR MM Member FactBox" | Member FactBox | "NPR MM Member" | — |
| 6060134 | "NPR MM Member Info Capture" | Member Information | "NPR MM Member Info Capture" | — |
| 6184877 | "NPR MM Member Info. Int. Setup" | Member Info Integration Setup | "NPR MM Member Info. Int. Setup" | — |
| 6151309 | "NPR MM Member Info Picture" | MM Member Info Capture Picture | "NPR MM Member Info Capture" | — |
| 6060138 | "NPR MM Member Members.ListPart" | Member Memberships | "NPR MM Membership Role" | — |
| 6060144 | "NPR MM Member Notific. Entry" | Member Notification Entry | "NPR MM Member Notific. Entry" | — |
| 6060142 | "NPR MM Member Notific. Setup" | Member Notification Setup | "NPR MM Member Notific. Setup" | — |
| 6184835 | "NPR MM Member Payment Methods" | Member Payment Method | "NPR MM Member Payment Method" | — |
| 6151308 | "NPR MM Member Picture" | MM Member Picture | "NPR MM Member" | — |
| 6151189 | "NPR MM MemberRemoteSearch" | Member Remote Search | "NPR MM Member Info Capture" | — |
| 6060126 | "NPR MM Members" | Members | "NPR MM Member" | — |
| 6060135 | "NPR MM Members. Admis. Setup" | Membership Admission Setup | "NPR MM Members. Admis. Setup" | — |
| 6060073 | "NPR MM Members. Alteration Jnl" | Membership Alteration Journal | "NPR MM Member Info Capture" | — |
| 6184930 | "NPR MM Members. Alter. Groups" | Membership Alteration Groups | "NPR MM Members. Alter. Group" | — |
| 6150851 | "NPR MM Members. Alter. Lines" | MM Members. Alter. Lines | "NPR MM Members. Alter. Line" | — |
| 6060071 | "NPR MM Members. AutoRenew Card" | Membership Auto Renew Card | "NPR MM Membership Auto Renew" | — |
| 6060070 | "NPR MM Members. AutoRenew List" | Membership Auto Renew List | "NPR MM Membership Auto Renew" | — |
| 6060075 | "NPR MM Members. Auto-Renew Log" | Membership Auto-Renew Log | "NPR MM Member Info Capture" | — |
| 6014524 | "NPR MM Member Search Fields" | Search Members | "NPR MM Member" | — |
| 6060141 | "NPR MM Membership Alter." | Membership Alteration | "NPR MM Members. Alter. Setup" | — |
| 6060137 | "NPR MM Membership Card" | Membership Card | "NPR MM Membership" | — |
| 6014558 | "NPR MM Membership Entries View" | Membership Entries | "NPR MM Membership Entry" | — |
| 6014658 | "NPR MM Membership FactBox" | Membership FactBox | "NPR MM Membership" | — |
| 6060078 | "NPR MM Membership Kiosk" | Membership Kiosk | — | — |
| 6060087 | "NPR MM Membership Lim. Setup" | Membership Limitation Setup | "NPR MM Membership Lim. Setup" | — |
| 6059893 | "NPR MM MembershipLoyaltyJnl" | Membership Loyalty Journal | "NPR MM MembershipLoyaltyJnl" | — |
| 6060143 | "NPR MM Membership Notific." | Membership Notification | "NPR MM Membership Notific." | — |
| 6060074 | "NPR MM Membership Print Jnl" | Membership Offline Print Journal | "NPR MM Member Info Capture" | — |
| 6060063 | "NPR MM Membership Rapid Pckg." | Membership Rapid Packages Deploy from Azure | — | — |
| 6060127 | "NPR MM Memberships" | Memberships | "NPR MM Membership" | — |
| 6060125 | "NPR MM Membership Sales Setup" | Membership Sales Setup | "NPR MM Members. Sales Setup" | — |
| 6060124 | "NPR MM Membership Setup" | Membership Setup | "NPR MM Membership Setup" | — |
| 6060032 | "NPR MM Membership Statistics" | Membership Statistics | "NPR MM Membership Statistics" | — |
| 6060129 | "NPR MM Members. Ledger Entries" | Membership Ledger Entries | "NPR MM Membership Entry" | — |
| 6060128 | "NPR MM Members.Member ListPart" | Membership Members | "NPR MM Membership Role" | — |
| 6184670 | "NPR MM Members MPos" | Members (Phone) | "NPR MM Member" | — |
| 6060104 | "NPR MM Members. Point Entry" | Membership Point Entry | "NPR MM Members. Points Entry" | — |
| 6151165 | "NPR MM Members. Points Summary" | Membership Points Summary | "NPR MM Members. Points Summary" | — |
| 6060076 | "NPR MM Members.Setup Card" | Membership Setup Card | "NPR MM Membership Setup" | — |
| 6014587 | "NPR MM Members TEMP" | Members (search result) | "NPR MM Member" | — |
| 6150912 | "NPR MM MembPntEntryTagsFactbox" | Membership Point Entry Tags | "NPR MM Member Point Entry Tag" | — |
| 6150913 | "NPR MM Memb. Point Entry Tags" | Membership Point Entry Tags | "NPR MM Member Point Entry Tag" | — |
| 6060072 | "NPR MM NPR Endpoint Setup" | NPR Endpoint Setup | "NPR MM NPR Remote Endp. Setup" | — |
| 6151164 | "NPR MM NPR Loy. Wizard" | NPR Loyalty Wizard | "Integer" | — |
| 6185043 | "NPR MM PaymentMethodCollection" | Collect Payment Method | — | — |
| 6184965 | "NPR MM Pending Customer Update" | Scheduled Customer Updates | "NPR MM Pending Customer Update" | — |
| 6184636 | "NPR MM POS Loyalty Profile" | POS Loyalty Profile | "NPR MM POS Loyalty Profile" | — |
| 6184637 | "NPR MM POS Loyalty Profiles" | POS Loyalty Profiles | "NPR MM POS Loyalty Profile" | — |
| 6060140 | "NPR MM POS Member Card" | Member Details | "NPR MM Member" | — |
| 6184630 | "NPR MM POS Member Profile" | POS Member Profile | "NPR MM POS Member Profile" | — |
| 6184631 | "NPR MM POS Member Profiles" | POS Member Profiles | "NPR MM POS Member Profile" | — |
| 6060077 | "NPR MM Recur. Payment Setup" | Recurring Payment Setup | "NPR MM Recur. Paym. Setup" | — |
| 6184828 | "NPR MM Recurring Payments" | Recurring Payments | "NPR MM Recur. Paym. Setup" | — |
| 6059802 | "NPR MM Remote Member Update" | Remote Member Update | "NPR MM Member" | — |
| 6151190 | "NPR MM RemoteSearchResult" | Member Remote Search Result | "NPR MM Member Info Capture" | — |
| 6185100 | "NPR MM Renewal Sched Card" | Renewal Schedule | "NPR MM Renewal Sched Hdr" | — |
| 6185099 | "NPR MM Renewal Sched List" | Renewal Schedules | "NPR MM Renewal Sched Hdr" | — |
| 6185098 | "NPR MM Renewal Sched Sub" | Renewal Schedule Subform | "NPR MM Renewal Sched Line" | — |
| 6059803 | "NPR MM Request Member Update" | Request Member Update | "NPR MM Request Member Update" | — |
| 6014559 | "NPR MM Select Alteration" | Select Alteration | "NPR MM Membership Entry" | — |
| 6184909 | "NPR MM Set Auto-Renew Status" | Set Auto-Renew Status | — | — |
| 6151185 | "NPR MM Sponsors. Ticket Setup" | Sponsorship Ticket Setup | "NPR MM Sponsors. Ticket Setup" | — |
| 6151186 | "NPR MM Sponsor. Ticket Entry" | Sponsorship Ticket Entry | "NPR MM Sponsors. Ticket Entry" | — |
| 6184870 | "NPR MM Sub Adyen PG Setup Card" | Subscriptions Payment Gateway Adyen Setup Card | "NPR MM Subs Adyen PG Setup" | — |
| 6184871 | "NPR MM Sub Pay Req Log Entries" | Subscription Payment Request Log Entries | "NPR MM Subs Pay Req Log Entry" | — |
| 6184892 | "NPR MM Sub Req Log Entries" | Subscription Request Log Entries | "NPR MM Subs Req Log Entry" | — |
| 6184834 | "NPR MM Subscription Details" | Subscription Details | "NPR MM Subscription" | — |
| 6248210 | "NPR MM Subscription FactBox" | Subscription FactBox | "NPR MM Subscription" | — |
| 6248221 | "NPR MM Subscription List" | Subscription List | "NPR MM Subscription" | — |
| 6184832 | "NPR MM Subscr.Payment Requests" | Subscr. Payment Requests | "NPR MM Subscr. Payment Request" | — |
| 6248208 | "NPR MMSubscrPmtRequest FactBox" | Subscription Payment Request FactBox | "NPR MM Subscr. Payment Request" | — |
| 6248207 | "NPR MM Subscr.Pmt Request List" | Subscription Payment Request List | "NPR MM Subscr. Payment Request" | — |
| 6150940 | "NPR MM Subscr. Request FactBox" | Subscription Request FactBox | "NPR MM Subscr. Request" | — |
| 6150942 | "NPR MM Subscr. Request List" | Subscription Request List | "NPR MM Subscr. Request" | — |
| 6184833 | "NPR MM Subscr. Requests" | Subscription Requests | "NPR MM Subscr. Request" | — |
| 6150896 | "NPR MM SubsMembersFactbox" | SubsMembersFactbox | "Name/Value Buffer" | — |
| 6150897 | "NPR MM SubsMembershipFactbox" | Related Memberships Factbox | "NPR MM MembershipPmtMethodMap" | — |
| 6184869 | "NPR MM Subs. Payment Gateways" | Subscription Payment Gateways | "NPR MM Subs. Payment Gateway" | — |
| 6185077 | "NPR MM SubsRequestTermination" | Request Termination | — | — |
| 6150890 | "NPR MM SubsUserAccountFactbox" | MM SubsUserAccountFactbox | "NPR MM Member Payment Method" | — |
| 6150952 | "NPR MMTimelineList" | Membership Timeline | "NPR MMTimelineEventBuffer" | — |
| 6184873 | "NPR MM VippsMP Login Setup" | Vipps MobilePay Login Setup | "NPR MM VippsMP Login Setup" | — |
| 6184867 | "NPR MM VippsMP Polling Dialog" | Waiting for the Vipps MobilePay request to be approved... | — | — |
| 6184938 | "NPR Print and Admit" | Print and Admit | "NPR Print and Admit Buffer" | — |
| 6060148 | "NPR RC Members. Burndown Chart" | Membership Burndown Chart | "Business Chart Buffer" | — |
| 6060147 | "NPR RC Members. Burndown Setup" | Membership Burndown Setup | "NPR RC Members. Burndown Setup" | — |
| 6060031 | "NPR RC Membership Statistics" | Membership Statistics | "NPR RC Mem. Stat. Cues" | — |
| 6150857 | "NPR Return Info Collect Setup" | Return Information Collection Setup | "NPR Return Info Collect Setup" | — |
| 6150861 | "NPR Return Info Device Setting" | Return Information Device Setting | "NPR Return Info Device Setting" | — |
| 6150860 | "NPR ReturnInfo Device Settings" | Return Information Device Settings | "NPR Return Info Device Setting" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6059904 | "NPR MemberAlterPriceFunction" | Member Alteration Price Function | UNIT_PRICE, PRICE_DIFFERENCE, TIME_DIFFERENCE |
| 6059809 | "NPR Message Severity" | Message Severity | Verbose, Normal, Warning, Error, Critical |
| 6014574 | "NPR MM AchActivity" | Membership Achievement Activities | NOOP, MANUAL, MEMBER_ARRIVAL, POINTS_EARNED, NAMED_ACHIEVEMENT |
| 6059818 | "NPR MM Add. Info. Req. Config." | Production | Production, Testing |
| 6059917 | "NPR MM AdmitMemberOnEoSMethod" | Legacy | LEGACY, WORKFLOW_LEGACY, WORKFLOW_SPEED_GATE |
| 6014575 | "NPR MM AzureRegistrationMethod" | E-Mail | EMAIL, FACEBOOK, APPLE, GOOGLE, UNKNOWN |
| 6059817 | "NPR MM Add. Info. Request" |  |  , Vipps MobilePay, Adyen |
| 6059875 | "NPR MM MembershipAutoRenew" | No | NO, YES_INTERNAL, YES_EXTERNAL, TERMINATION_REQUESTED |
| 6014563 | "NPR MMMembershipRestApiCache" | NoCache | NoCache, MemberCardNumber, MemberCardNumberDetails, LoyaltyPoints |
| 6014482 | "NPR MM Member Unique Identity" | None | NONE, EMAIL, PHONENO, SSN, EMAIL_AND_PHONE, EMAIL_OR_PHONE, EMAIL_AND_FIRST_NAME |
| 6059939 | "NPR MM Memb. Points Doc. Type" |  | NA, SALES_INVOICE, POS_ENTRY, SALES_CR_MEMO |
| 6059907 | "NPR MM NotificationTrigger" | Welcome | WELCOME, RENEWAL, WALLET_UPDATE, WALLET_CREATE, COUPON, ACHIEVEMENT, RENEWAL_SUCCESS, RENEWAL_FAILURE |
| 6059802 | "NPR MM Payment Method Status" | Member Payment Method Status | Active, Archived |
| 6059803 | "NPR MM Payment Request Status" | New | New, Requested, Authorized, Captured, Rejected, Cancelled, Error, Skipped |
| 6059835 | "NPR MM Payment Request Type" | Payment | Payment, Refund, RefundRefersed, Chargeback, ChargebackReversed, PayByLink |
| 6059771 | "NPR MM Sales Document Type" |   | 0, 1, 2, 3, 4, 5 |
| 6059830 | "NPR MM Sub Req Log Proc Status" | Subscriptions Request Log Processing Status | Success, Error |
| 6059819 | "NPR MM Subs Adyen PG Env Type" | Subscriptions Adyen Payment Gateway Environment Type | Test, Production |
| 6059852 | "NPR MM SubsAdyenRecProcModel" | UnscheduledCardOnFile | UnscheduledCardOnFile, CardOnFile, Subscription |
| 6059807 | "NPR MM Subscr. Auto-Renewal" | Subscription Auto-Renewal | Never, Expiry Date, Next Start Date, Schedule |
| 6059801 | "NPR MM Subscription PSP" | Subscription PSP | Adyen |
| 6059804 | "NPR MM Subscr. Request Status" | Subscription Request Status | New, Requested, Confirmed, Rejected, Cancelled, Request Error, Skipped |
| 6059805 | "NPR MM Subscr. Request Type" | Subscription Request Type |  , Initial Sale, Renew, Regret, Partial Regret, Payment Method Collection, Terminate, Enable |
| 6059821 | "NPR MM SubsPayReqLogProcStatus" | Subscriptions Payment Request Log Processing Status | Success, Error, Rejected |
| 6059820 | "NPR MM Subs Pmt Gateway Status" | Subscriptions Payment Gateway Status | Disabled, Enabled |
| 6059828 | "NPR MM Subs Req Proc Status" | Subscription Request Processing Status | Pending, Success, Error |
| 6059906 | "NPR MM Subs Termination Reason" | Subscription Termination Reason | NOT_TERMINATED, CUSTOMER_INITIATED, FORCED_TERMINATION |
| 6014610 | "NPR MMTimelineEventType" | Membership Issued | MEMBERSHIP_ISSUED, MEMBERSHIP_ACTIVATED, MEMBERSHIP_RENEWED, MEMBERSHIP_REGRET, MEMBERSHIP_UPGRADE, MEMBERSHIP_EXTEND, MEMBERSHIP_CANCEL, MEMBERSHIP_AUTORENEW |
| 6014568 | "NPR NationalIdentifierType" | No validation | NONE |
| 6059877 | "NPR Return Info. Request" |   |  , Adyen |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR IMemberAlterationPriceHandler" | CalculateCancelAlterationPrice, CalculateRenewAlterationPrice, CalculateAutoRenewAlterationPrice, CalculateExtendAlterationPrice, CalculateUpgradeAlterationPrice |
| "NPR MM AchActivity" | RegisterActivity, ReverseActivity, InitializeConditions |
| "NPR MM IAdd. Info. Request" | RequestAdditionalInfo |
| "NPR MM Subscr.Payment IHandler" | ProcessPaymentRequest, RunSetupCard, DeleteSetupCard, GetPaymentPostingAccount |
| "NPR MM Subs Payment IHandler" | ProcessPaymentRequest, RunSetupCard, DeleteSetupCard, GetPaymentPostingAccount, EnableIntegration |
| "NPR MMTimelineTypeInterface" | CollectEvents, DescribeEvent |
| "NPR NationalIdentifierIface" | DisplayName, ExpectedInputExample, TryParse, ShowUnMasked, ShowMasked |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014514 | "NPR MembershipRole2UserAccount" |  | — |
| 6014515 | "NPR MembershipSubscriptionInfo" |  | — |
| 6060136 | "NPR MM Member Card Notific." | MM Member Card Notification | — |
| 6014516 | "NPR MMSubPayRequestToAccount" |  | — |
| 6014513 | "NPR UserAccountToMembership" |  | — |


## Reports

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014494 | "NPR MM Member Evaluation" | Member Evaluation | — |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6060128 | "NPR MM Add Member" | Add Member | — |
| 6151185 | "NPR MM AddReplaceCard" | Add Replace Card | — |
| 6060136 | "NPR MM Anonymous Member" | Add Member | — |
| 6060132 | "NPR MM Block Membership" | Block Membership | — |
| 6151187 | "NPR MM Block Membership Member" | Block Membership | — |
| 6014415 | "NPR MM CancelReservePoints" | Cancel Reserve Points | — |
| 6014416 | "NPR MM CaptureReservePoints" | Capture Reserve Points | — |
| 6060134 | "NPR MM Change Membership" | Change Membership | — |
| 6060140 | "NPR MM Confirm AutoRenew Pay." | Confirm AutoRenew Payment | — |
| 6060137 | "NPR MM Confirm Members. Pay." | Confirm Membership Payment | — |
| 6060127 | "NPR MM Create Membership" | Create Membership | — |
| 6060143 | "NPR MM Create Wallet Mem. Pass" | Create Wallet Member Pass | — |
| 6151121 | "NPR MM GDPR GetSet Appr. State" | GDPR Get Set Approval State | — |
| 6060139 | "NPR MM Get AutoRenew Product" | Get AutoRenew Product | — |
| 6151160 | "NPR MM Get Loyalty Config." | Get Loyalty Configuration | — |
| 6060141 | "NPR MM Get Loyalty Points" | Get Loyalty Points | — |
| 6060149 | "NPR MM Get Loyalty Rcpt. List" | Get Loyalty Receipt List | — |
| 6060145 | "NPR MM Get Loy. Statement" | Get Loyalty Statement | — |
| 6060144 | "NPR MM Get Member GDPR Roles" | Get Member GDPR Roles | — |
| 6151161 | "NPR MM Get Member Loy. Details" | Get Member Loyalty Details | — |
| 6060135 | "NPR MM Get Members. Chg. Items" | Get Membership Change Items | — |
| 6060129 | "NPR MM Get Membership" | Get Membership | — |
| 6060130 | "NPR MM Get Members. Members" | Get Membership Members | — |
| 6060133 | "NPR MM Get Members. TicketList" | Get Membership Ticket List | — |
| 6060146 | "NPR MM GetSet AutoRenew Option" | GetSet AutoRenew Option | — |
| 6060147 | "NPR MM Loyalty Coupon Elig." | Loyalty Coupon Eligibility | — |
| 6060148 | "NPR MM Loyalty Create Coup." | Loyalty Create Coupon | — |
| 6151189 | "NPR MM Loyalty Delete Coupont" | Loyalty Delete Coupon | — |
| 6151164 | "NPR MM Loyalty List Coupon" | Loyalty Create Coupon | — |
| 6151188 | "NPR MM Member Comm." | Member Communication | — |
| 6060142 | "NPR MM Member Identifier" | MM Member Identifier | — |
| 6151162 | "NPR MM Register Sale" | Register Sale | — |
| 6060138 | "NPR MM Regret Member Timeframe" | Change Membership | — |
| 6151163 | "NPR MM Reserve Points" | Reserve Points | — |
| 6151186 | "NPR MM Search Members" | Search Members | — |
| 6060131 | "NPR MM Update Member" | Update Member | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AdmisScannerStatCard.Page.al, AdmScannerStatFactbox.Page.al, AdmServiceSetupFactbox.Page.al, CustEntryUnapplyModifier.Codeunit.al, IMemberAlterationPriceHandler.Interface.al, MemberAlterPriceDifference.Codeunit.al, MemberAlterPriceFunction.Enum.al, MemberAlterTimeDifference.Codeunit.al, MemberAlterUnitPrice.Codeunit.al, MemberAppAreaSetup.Page.al, MemberImageMediaFeature.Codeunit.al, MemberImageMigrateToCFErr.Codeunit.al, MemberImageMigrateToCFR2.Codeunit.al, MemberImageMigrateToCFR2.Table.al, MemberMergeHandler.Codeunit.al, MemberNationalIdentifier.Page.al, MembershipAdvFeature.Codeunit.al, MembershipAttemptCreate.Codeunit.al, MembershipEntryLinkList.Page.al, MembershipEssentFeature.Codeunit.al, MembershipRole2UserAccount.Query.al, MembershipSubscriptionInfo.Query.al, MemberUpdateUniqueId.Page.al, MessageSeverity.Enum.al, MMAchActivity.Enum.al, MMAchActivity.Interface.al, MMAchActivity.Table.al, MMAchActivityAchievement.Codeunit.al, MMAchActivityCondition.Page.al, MMAchActivityCondition.Table.al, MMAchActivityEntry.Page.al, MMAchActivityEntry.Table.al, MMAchActivityManagement.Codeunit.al, MMAchActivityManual.Codeunit.al, MMAchActivityMemberAdmit.Codeunit.al, MMAchActivityNoOp.Codeunit.al, MMAchActivitySetup.Page.al, MMAchGoal.Table.al, MMAchGoalSetup.Page.al, MMAchievement.Page.al, MMAchievement.Table.al, MMAchievementCoupon.Codeunit.al, MMAchievementFacade.Codeunit.al, MMAchMemberAchievement.Page.al, MMAchMemberActivityEntry.Page.al, MMAchMemberGoalList.Page.al, MMAchReward.Table.al, MMAchRewardSetup.Page.al, MMAddInfoRequestConfig.Enum.al, MMAddInfoRequestSetup.Codeunit.al, MMAdditionalInfoRequest.Table.al, MMAdditionalInfoResponse.Table.al, MMAddMember.XmlPort.al, MMAddnfoReqMgt.Codeunit.al, MMAddReplaceCard.XmlPort.al, MMAdmisScannerStations.Page.al, MMAdmisScannerStations.Table.al, MMAdmisServiceEntries.Page.al, MMAdmisServiceEntry.Table.al, MMAdmisServiceLog.Table.al, MMAdmisServiceSetup.Table.al, MMAdmissionAppWebService.Codeunit.al, MMAdmissionServiceLog.Page.al, MMAdmissionServiceSetup.Page.al, MMAdmissionServiceWS.Codeunit.al, MMAdmitMemberOnEoSMethod.Enum.al, MMAlterationJnlMgmt.Codeunit.al, MMAnonymousMember.XmlPort.al, MMAttemptMemberArrival.Codeunit.al, MMAvailableCoupons.Page.al, MMAzureMemberRegistration.Codeunit.al, MMAzureMemberRegList.Page.al, MMAzureMemberRegSetup.Page.al, MMAzureMemberRegSetup.Table.al, MMAzureMemberUpdateLog.Table.al, MMAzureRegistrationLog.Page.al, MMAzureRegistrationMethod.Enum.al, MMBlockMembership.XmlPort.al, MMBlockMembershipMember.XmlPort.al, MMCancelReservePoints.XmlPort.al, MMCaptureReservePoints.XmlPort.al, MMChangeMembership.XmlPort.al, MMConfirmAutoRenewPay.XmlPort.al, MMConfirmMembersPay.XmlPort.al, MMCreateMembership.Page.al, MMCreateMembership.XmlPort.al, MMCreateWalletMemPass.XmlPort.al, MMEditMembershipEntries.Page.al, MMForeignMembersMgr.Codeunit.al, MMForeignMembersSetup.Page.al, MMForeignMembersSetup.Table.al, MMGDPRGetSetApprState.XmlPort.al, MMGDPRManagement.Codeunit.al, MMGDPRMgtWrapper.Codeunit.al, MMGetAutoRenewProduct.XmlPort.al, MMGetLoyaltyConfig.XmlPort.al, MMGetLoyaltyPoints.XmlPort.al, MMGetLoyaltyRcptList.XmlPort.al, MMGetLoyStatement.XmlPort.al, MMGetMemberGDPRRoles.XmlPort.al, MMGetMemberLoyDetails.XmlPort.al, MMGetMembersChgItems.XmlPort.al, MMGetMembership.XmlPort.al, MMGetMembersMembers.XmlPort.al, MMGetMembersTicketList.XmlPort.al, MMGetSetAutoRenewOption.XmlPort.al, MMIAdditionalInfoRequest.Enum.al, MMIAdditionalInfoRequest.Interface.al, MMImportMembers.Codeunit.al, MMLanguage.Table.al, MMLanguages.Page.al, MMLoyaltyAlterMembers.Page.al, MMLoyaltyAlterMembers.Table.al, MMLoyaltyCouponElig.XmlPort.al, MMLoyaltyCouponMgr.Codeunit.al, MMLoyaltyCreateCoup.XmlPort.al, MMLoyaltyDeleteCoupont.XmlPort.al, MMLoyaltyExpireReservation.Codeunit.al, MMLoyaltyJnlLineTag.Table.al, MMLoyaltyJnlLineTags.Page.al, MMLoyaltyListCoupon.XmlPort.al, MMLoyaltyPointFacade.Codeunit.al, MMLoyaltyPointMgt.Codeunit.al, MMLoyaltyPointSetup.Page.al, MMLoyaltyPointSetup.Table.al, MMLoyaltyRetryQueue.Table.al, MMLoyaltyRetryQueueList.Page.al, MMLoyaltyRetryQueueMgr.Codeunit.al, MMLoyaltySalesChannel.Table.al, MMLoyaltySalesChannels.Page.al, MMLoyaltyServerTrxLog.Page.al, MMLoyaltySetup.Page.al, MMLoyaltySetup.Table.al, MMLoyaltyStoreSetup.Table.al, MMLoyaltyTag.Table.al, MMLoyaltyTags.Page.al, MMLoyaltyWebService.Codeunit.al, MMLoyaltyWebServiceMgr.Codeunit.al, MMLoyAssignmentOnSale.Codeunit.al, MMLoyItemPointSetup.Page.al, MMLoyItemPointSetup.Table.al, MMLoyLedgerEntrySrvr.Table.al, MMLoyPointMgrClient.Codeunit.al, MMLoyPointMgrServer.Codeunit.al, MMLoyPointPSPClient.Codeunit.al, MMLoyStoreSetupClient.Page.al, MMLoyStoreSetupServer.Page.al, MMMembEntryTagBuff.Table.al, MMMember.Table.al, MMMemberArrivalLog.Page.al, MMMemberArrLogEntry.Table.al, MMMemberAttrFactBox.Page.al, MMMemberCaptureList.Page.al, MMMemberCard.Page.al, MMMemberCard.Table.al, MMMemberCardCard.Page.al, MMMemberCardFactBox.Page.al, MMMemberCardList.Page.al, MMMemberCardListMPos.Page.al, MMMemberCardNotific.Query.al, MMMemberCardsListPart.Page.al, MMMemberComm.XmlPort.al, MMMemberCommSetup.Page.al, MMMemberCommSetup.Table.al, MMMemberCommunication.Page.al, MMMemberCommunication.Table.al, MMMemberCommunity.Page.al, MMMemberCommunity.Table.al, MMMemberCreateDemoData.Codeunit.al, MMMemberEvaluation.Report.al, MMMemberExtImageFactBox.Page.al, MMMemberFactBox.Page.al, MMMemberIdentifier.XmlPort.al, MMMemberImageMediaHandler.Codeunit.al, MMMemberInfoCapture.Page.al, MMMemberInfoCapture.Table.al, MMMemberInfoIntegrationSetup.Page.al, MMMemberInfoIntegrationSetup.Table.al, MMMemberInfoPicture.Page.al, MMMemberLimMgr.Codeunit.al, MMMemberMediaUploadQueue.Table.al, MMMemberMembersListPart.Page.al, MMMemberNotification.Codeunit.al, MMMemberNotificEntry.Page.al, MMMemberNotificEntry.Table.al, MMMemberNotificEntryBuf.Table.al, MMMemberNotificSetup.Page.al, MMMemberNotificSetup.Table.al, MMMemberNotifOnSale.Codeunit.al, MMMemberPaymentMethod.Table.al, MMMemberPaymentMethods.Page.al, MMMemberPicture.Page.al, MMMemberPointEntryTag.Table.al, MMMemberPOSUI.Codeunit.al, MMMemberPrintOnSale.Codeunit.al, MMMemberRemoteSearch.Page.al, MMMemberRetailIntegr.Codeunit.al, MMMembers.Page.al, MMMembersAdmisSetup.Page.al, MMMembersAdmisSetup.Table.al, MMMembersAlterationJnl.Page.al, MMMembersAlterGroup.Table.al, MMMembersAlterGroups.Page.al, MMMembersAlterLine.Table.al, MMMembersAlterLines.Page.al, MMMembersAlterSetup.Table.al, MMMembersAutoRenewCard.Page.al, MMMembersAutoRenewList.Page.al, MMMembersAutoRenewLog.Page.al, MMMemberSearchFields.Page.al, MMMembership.Table.al, MMMembershipAlter.Page.al, MMMembershipAutoRenew.Codeunit.al, MMMembershipAutoRenew.Enum.al, MMMembershipAutoRenew.Table.al, MMMembershipCard.Page.al, MMMembershipEntriesView.Page.al, MMMembershipEntry.Table.al, MMMembershipEntryLink.Table.al, MMMembershipEvents.Codeunit.al, MMMembershipFactBox.Page.al, MMMembershipKiosk.Page.al, MMMembershipLimSetup.Page.al, MMMembershipLimSetup.Table.al, MMMembershipLoyaltyJnl.Page.al, MMMembershipLoyaltyJnl.Table.al, MMMembershipMgt.Codeunit.al, MMMembershipMgtInternal.Codeunit.al, MMMembershipNotific.Page.al, MMMembershipNotific.Table.al, MMMembershipParkSale.Codeunit.al, MMMembershipPmtMethodMap.Table.al, MMMembershipPrintJnl.Page.al, MMMembershipRapidPckg.Page.al, MMMembershipRestApi.Codeunit.al, MMMembershipRestApiCache.Codeunit.al, MMMembershipRestApiCache.Enum.al, MMMembershipRole.Table.al, MMMemberships.Page.al, MMMembershipSalesSetup.Page.al, MMMembershipSetup.Page.al, MMMembershipSetup.Table.al, MMMembershipSoapApi.Codeunit.al, MMMembershipStatistics.Page.al, MMMembershipStatistics.Table.al, MMMembershipStatMgmt.Codeunit.al, MMMembershipWebHooks.Codeunit.al, MMMembersLedgerEntries.Page.al, MMMembersMemberListPart.Page.al, MMMembersMPos.Page.al, MMMembersPointEntry.Page.al, MMMembersPointsEntry.Table.al, MMMembersPointsSummary.Page.al, MMMembersPointsSummary.Table.al, MMMembersSalesSetup.Table.al, MMMembersSetupCard.Page.al, MMMembersTEMP.Page.al, MMMemberTicketManager.Codeunit.al, MMMemberUniqueIdentity.Enum.al, MMMemberWebService.Codeunit.al, MMMemberWebServiceMgr.Codeunit.al, MMMembPntEntryTagsFactbox.Page.al, MMMembPointEntryTags.Page.al, MMMembPointsDocType.Enum.al, MMNotificationTrigger.Enum.al, MMNPREndpointSetup.Page.al, MMNPRLoyWizard.Page.al, MMNPRMembership.Codeunit.al, MMNPRRemoteEndpSetup.Table.al, MMNpXmlMembersTrigger.Codeunit.al, MMNRPLoyaltyWizard.Codeunit.al, MMPaymentMethodCollection.Page.al, MMPaymentMethodMgt.Codeunit.al, MMPaymentMethodStatus.Enum.al, MMPaymentReconci.Table.al, MMPaymentRequestStatus.Enum.al, MMPaymentRequestType.Enum.al, MMPendingCustomerUpdate.Page.al, MMPendingCustomerUpdate.Table.al, MMPOSActionMemberMgmt.Codeunit.al, MMPOSLoyaltyProfile.Page.al, MMPOSLoyaltyProfile.Table.al, MMPOSLoyaltyProfiles.Page.al, MMPOSMemberCard.Page.al, MMPOSMemberProfile.Page.al, MMPOSMemberProfile.Table.al, MMPOSMemberProfiles.Page.al, MMPOSReceiptPrint.Codeunit.al, MMPOSSalesInfo.Table.al, MMProcessInlineNotif.Codeunit.al, MMRecurPaymentSetup.Page.al, MMRecurPaymSetup.Table.al, MMRecurringPayments.Page.al, MMRegisterSale.XmlPort.al, MMRegretMemberTimeframe.XmlPort.al, MMRegSalesBuffer.Table.al, MMRemoteMemberUpdate.Page.al, MMRemoteSearchResult.Page.al, MMRenewalSchedCard.Page.al, MMRenewalSchedHdr.Table.al, MMRenewalSchedLine.Table.al, MMRenewalSchedList.Page.al, MMRenewalSchedSub.Page.al, MMRequestMemberUpdate.Page.al, MMRequestMemberUpdate.Table.al, MMRequestMemberUpdMgr.Codeunit.al, MMReservePoints.XmlPort.al, MMRetailIntegration.Codeunit.al, MMSalesDocumentType.Enum.al, MMSearchMembers.XmlPort.al, MMSelectAlteration.Page.al, MMSetAutoRenewStatus.Page.al, MMSmartSearch.Codeunit.al, MMSponsorshipTicketMgt.Codeunit.al, MMSponsorsTicketEntry.Table.al, MMSponsorsTicketSetup.Page.al, MMSponsorsTicketSetup.Table.al, MMSponsorTicketEntry.Page.al, MMSubAdyenPGSetupCard.Page.al, MMSubPayReqLogEntries.Page.al, MMSubPayRequestToAccount.Query.al, MMSubReqLogEntries.Page.al, MMSubReqLogProcStatus.Enum.al, MMSubsAdyenPGEnvType.Enum.al, MMSubsAdyenPGSetup.Table.al, MMSubsAdyenRecProcModel.Enum.al, MMSubscrAutoRenewal.Enum.al, MMSubscription.Table.al, MMSubscriptionDetails.Page.al, MMSubscriptionFactBox.Page.al, MMSubscriptionList.Page.al, MMSubscriptionLog.Table.al, MMSubscriptionLogging.Codeunit.al, MMSubscriptionMgt.Codeunit.al, MMSubscriptionMgtImpl.Codeunit.al, MMSubscriptionPSP.Enum.al, MMSubscriptionTemplate.Table.al, MMSubscriptionTransact.Table.al, MMSubscrPaymentIHandler.Interface.al, MMSubscrPaymentRequest.Table.al, MMSubscrPaymentRequests.Page.al, MMSubscrPayReqProcJQ.Codeunit.al, MMSubscrPayReqTryProcess.Codeunit.al, MMSubscrPmtAdyen.Codeunit.al, MMSubscrPmtRequestFactBox.Page.al, MMSubscrPmtRequestList.Page.al, MMSubscrPmtUndefined.Codeunit.al, MMSubscrRenewPost.Codeunit.al, MMSubscrRenewProcess.Codeunit.al, MMSubscrRenewProcJQ.Codeunit.al, MMSubscrRenewReqJQ.Codeunit.al, MMSubscrRenewRequest.Codeunit.al, MMSubscrRequest.Table.al, MMSubscrRequestFactBox.Page.al, MMSubscrRequestList.Page.al, MMSubscrRequests.Page.al, MMSubscrRequestStatus.Enum.al, MMSubscrRequestType.Enum.al, MMSubscrRequestUtils.Codeunit.al, MMSubscrReversalMgt.Codeunit.al, MMSubscrTerminationJQ.Codeunit.al, MMSubscrTokenRenewalJQ.Codeunit.al, MMSubsMembersFactbox.Page.al, MMSubsMembersFactbWorker.Codeunit.al, MMSubsMembershipFactbox.Page.al, MMSubsPaymentGateway.Table.al, MMSubsPaymentGateways.Page.al, MMSubsPaymentIHandler.Interface.al, MMSubsPayReqLogEntry.Table.al, MMSubsPayReqLogProcStatus.Enum.al, MMSubsPayReqLogUtils.Codeunit.al, MMSubsPayRequestUtils.Codeunit.al, MMSubsPmtGatewayStatus.Enum.al, MMSubsReqLogEntry.Table.al, MMSubsReqLogUtils.Codeunit.al, MMSubsReqProcStatus.Enum.al, MMSubsRequestTermination.Page.al, MMSubsTerminationReason.Enum.al, MMSubsTryMethods.Codeunit.al, MMSubsTryRenewProcess.Codeunit.al, MMSubsUserAccountFactbox.Page.al, MMTextHelper.Codeunit.al, MMTimelineDescribeEvent.Codeunit.al, MMTimelineEventBuffer.Table.al, MMTimelineEventType.Enum.al, MMTimelineHandler.Codeunit.al, MMTimelineList.Page.al, MMTimelineTypeInterface.Interface.al, MMUnknownAddInfoRequest.Codeunit.al, MMUpdateCustomerPending.Codeunit.al, MMUpdateMember.XmlPort.al, MMVippsMPAddInfoRequest.Codeunit.al, MMVippsMPCommunication.Codeunit.al, MMVippsMPLoginSetup.Page.al, MMVippsMPLoginSetup.Table.al, MMVippsMPPollingDialog.Page.al, MMWebhookChangeDetect.Codeunit.al, NationalIdentifierDK.Codeunit.al, NationalIdentifierDKCPR.Codeunit.al, NationalIdentifierDKCVR.Codeunit.al, NationalIdentifierDKVAT.Codeunit.al, NationalIdentifierIface.Interface.al, NationalIdentifierNone.Codeunit.al, NationalIdentifierSE.Codeunit.al, NationalIdentifierSECNR.Codeunit.al, NationalIdentifierSEONR.Codeunit.al, NationalIdentifierSEPNR.Codeunit.al, NationalIdentifierSEVAT.Codeunit.al, NationalIdentifierType.Enum.al, POSActionChangePmtMethod.Codeunit.al, POSActionChangePmtMethodB.Codeunit.al, POSActionCreateMember.Codeunit.al, POSActionCreateMemberB.Codeunit.al, POSActionGetConfirmation.Codeunit.al, POSActionGetText.Codeunit.al, POSActionMemberAdmitOnEoS.Codeunit.al, POSActionMemberMgtWF2.Codeunit.al, POSActionMemberMgtWF3.Codeunit.al, POSActionMemberMgtWF3B.Codeunit.al, POSActionMMBackEndB.Codeunit.al, POSActionMMBackEndFun.Codeunit.al, POSActionMMMemberArr.Codeunit.al, POSActionMMMemberArrB.Codeunit.al, POSActionMMMemberLoy.Codeunit.al, POSActionMMMemberLoyB.Codeunit.al, POSActionPrintandAdmit.Codeunit.al, POSActionRegisterGuests.Codeunit.al, POSActionRegisterGuestsB.Codeunit.al, POSActionSSMemberArrB.Codeunit.al, POSMemberSession.Codeunit.al, PrintAdmitTryPrint.Codeunit.al, PrintandAdmit.Page.al, PrintandAdmitBuffer.Table.al, PrintandAdmitPublic.Codeunit.al, RCMembersBurndownChart.Page.al, RCMembersBurndownSetup.Page.al, RCMembersBurndownSetup.Table.al, RCMembershipStatistics.Page.al, RCMemStatCues.Table.al, RCMMMembersBurndownMgt.Codeunit.al, ReturnInfoCollectSetup.Page.al, ReturnInfoCollectSetup.Table.al, ReturnInfoDeviceSetting.Page.al, ReturnInfoDeviceSetting.Table.al, ReturnInfoDeviceSettings.Page.al, ReturnInfoRequest.Enum.al, SSPOSActionMemberArr.Codeunit.al, UserAccountToMembership.Query.al
