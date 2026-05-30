---
type: reference
tags: [pos, pos-compliance, np-retail, tables, codeunits, pages, enums, queries, interfaces, reports, xmlports]
relates:
  - pos/pos-compliance/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Compliance/[AT] Fiskaly/ATAuditEntryType.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATCashRegister.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATCashRegisters.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATCashRegisterState.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATExpCashRegFilters.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFiskalyCommunication.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFiskalyJWT.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFONAuthStatus.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATFONRcptValidStatus.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATImpOtherCtrlRcptJQ.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATOrganization.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATOrganizationCard.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATOrganizationList.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATPaymentType.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATPOSPaymentMethodMap.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATPOSPaymentMethodMap.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATReceiptType.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATSCU.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATSCUs.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATSCUState.Enum.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATSecretMgt.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATValidateReceiptsJQ.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATVATPostingSetupMap.Page.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATVATPostingSetupMap.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/ATVATRate.Enum.al
  - Application/src/POS Compliance/[BE] Fiscal Sealing/BEAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[BE] Fiscal Sealing/BEFiscalisationSetup.Page.al
  - Application/src/POS Compliance/[BE] Fiscal Sealing/BEFiscalisationSetup.Table.al
  - Application/src/POS Compliance/[BE] Fiscal Sealing/BEFiscalSalesReceipt.Codeunit.al
  - Application/src/POS Compliance/[BE] Fiscal Sealing/BEPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[BE] Fiscal Sealing/BEPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/BGAuditEntryType.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/BGFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/BGFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/BGPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/BGPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISCommunicationMgt.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISCustIDNoType.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPaymentMethod.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSAuditLogAux.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSAuditLogAux.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSPaymMethMap.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSPaymMethMap.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSSale.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSUnitMapping.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPOSUnitMapping.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISPrinterModel.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISReturnReason.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISReturnReasonMap.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISReturnReasonMap.Table.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISTransactionType.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISVATCategory.Enum.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISVATPostSetupMap.Page.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/BGSISVATPostSetupMap.Table.al
  - Application/src/POS Compliance/[SE] CleanCash/CCTransactionStatus.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CCUnitStorStat.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashFaultCode.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashIdentityMsg.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashReceiptMsg.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashReceiptType.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashRequestType.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashResponseList.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashSetup.Table.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashSetupList.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashStatusMsg.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashTransactionCard.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashTransactions.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashTransactionVAT.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashTransRequest.Table.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashTransResponse.Table.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashTransVAT.Table.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashUnitMainStatus.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashWrapper.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashXCCSPInterface.Interface.al
  - Application/src/POS Compliance/[SE] CleanCash/CleanCashXCCSPProtocol.Codeunit.al
  - Application/src/POS Compliance/ComplianceFiscalMgt.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/_public/CreateCleanCashOnSale.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/CreateDeFiskalyonSale.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/CROAuditEntryType.Enum.al
  - Application/src/POS Compliance/[CRO] Fina/CROAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/_public/CROAuditSendMail.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/CROAuxSalesCrMemoHdr.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROAuxSalesHeader.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROAuxSalesInvHeader.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROAuxSalespersonPurch.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROCustLedgPostMgt.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalBillA4.Report.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalEMailLog.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalEMailLogs.Page.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalEMailMgt.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/_public/CROMstrDataAuxTableMgt.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/CROPaymentMethod.Enum.al
  - Application/src/POS Compliance/[CRO] Fina/CROPaymentMethodMapping.Page.al
  - Application/src/POS Compliance/[CRO] Fina/CROPaymentMethodMapping.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSAudLogAuxInfo.Page.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSAudLogAuxInfo.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSPaymentMethod.Enum.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSPaymMethodMapp.Page.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSPaymMethodMapp.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSSale.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSStoreMapping.Page.al
  - Application/src/POS Compliance/[CRO] Fina/CROPOSStoreMapping.Table.al
  - Application/src/POS Compliance/[CRO] Fina/CROTaxCommunicationMgt.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEAuditSetup.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEAuditSetup.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEAuditSetupNotifier.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEClientType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEConnectionParamSets.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEDataExport.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEDataExportCard.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEDataExports.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEEstablishment.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEEstablishment.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEEstablishments.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEExportException.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEExportState.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyCommunication.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyDSFINVK.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyDSFINVKJob.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyJob.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyPaymentType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyReceiptType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyTrxState.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyTSSClients.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEFiskalyVATRate.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEPOSUnitAuxInfo.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DEPOSUnitAuxInfoList.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DESecretMgt.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DESubmission.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DESubmissions.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DESubmissionState.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETaxpayerLegalForm.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETaxpayerPersonType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETaxpayerSalutation.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETSS.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETSSClient.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETSSClientState.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETSSList.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DETSSState.Enum.al
  - Application/src/POS Compliance/[DK] Skat/DKAuditEntryType.Enum.al
  - Application/src/POS Compliance/[DK] Skat/DKAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[DK] Skat/DKFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[DK] Skat/DKFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKGenSAFTCashFile.Codeunit.al
  - Application/src/POS Compliance/[DK] Skat/DKPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[DK] Skat/DKPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[DK] Skat/DKRegenAuditSignat.Codeunit.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExpHeader.Table.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportCard.Page.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportCheck.Codeunit.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportFile.Table.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportLine.Table.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportMgt.Codeunit.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExports.Page.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportZip.Table.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExportZips.Page.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExpStatus.Enum.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTCashExpSubpage.Page.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTDataCheckstatus.Enum.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTExpErrHandler.Codeunit.al
  - Application/src/POS Compliance/[DK] Skat/SAF-T Cash Register/DKSAFTXMLHelper.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/DSFINVKClosing.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/DSFINVKClosingList.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/DSFINVKPaymentType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/DSFINVKState.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESAuditEntryType.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESClient.Table.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESClients.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESClientState.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESFiskalyCommunication.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESFiskalyJWT.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvCancellationState.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvCorrectionMethod.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvoiceItemConcept.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvoiceRecipient.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvoiceState.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvoiceType.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvRcptIdType.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvRecipientType.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESInvRegistrationState.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESOrganization.Table.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESOrganizationCard.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESOrganizationList.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESRetrievePendingInvJQ.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESRetrieveSoftwareJQ.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESReturnReason.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESReturnReasonMapping.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESReturnReasonMapping.Table.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESSecretMgt.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESSigner.Table.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESSigners.Page.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESSignerState.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESTaxpayerTerritory.Enum.al
  - Application/src/POS Compliance/[ES] Fiskaly/ESTaxpayerType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/FiscalizationStatus.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/FiskalyJWT.Codeunit.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditArchive.XmlPort.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditArchWorkshifts.Codeunit.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditNoSeries.Page.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditNoSeries.Table.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditSetup.Page.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditSetup.Table.al
  - Application/src/POS Compliance/[FR] NF525/FRAuditSubscribers.Codeunit.al
  - Application/src/POS Compliance/[FR] NF525/FRPOSAuditLogAddInfo.Page.al
  - Application/src/POS Compliance/[FR] NF525/FRPOSAuditLogAddInfo.Table.al
  - Application/src/POS Compliance/[FR] NF525/FRPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[FR] NF525/FRPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[FR] NF525/FRSetupCheck.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/GenerateSAFTCashFile.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/HULAuditEntryType.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/HULCashMgtReason.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULCashMgtReason.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULCashMgtReasons.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULCashTransaction.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULCashTransactions.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULCommunicationMgt.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/HULFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULPaymCurrencyType.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULPaymentFiscalType.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULPaymFiscalSubtype.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSAuditLogAux.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSAuditLogAux.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSPaymMethMapp.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSPaymMethMapp.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSSale.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSUnitMapping.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULPOSUnitMapping.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULReturnReasonCode.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULReturnReasonMapp.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULReturnReasonMapp.Table.al
  - Application/src/POS Compliance/[HU] Laurel/HULTransactionType.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULTypeofPayment.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULVATIndex.Enum.al
  - Application/src/POS Compliance/[HU] Laurel/HULVATPostSetupMapp.Page.al
  - Application/src/POS Compliance/[HU] Laurel/HULVATPostSetupMapp.Table.al
  - Application/src/POS Compliance/[HU] NTCA/MultiSoft-EInvoice/HUMSAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[HU] NTCA/MultiSoft-EInvoice/HUMSFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[HU] NTCA/MultiSoft-EInvoice/HUMSPaymentMethodMap.Page.al
  - Application/src/POS Compliance/[HU] NTCA/MultiSoft-EInvoice/HUMSPaymentMethodMap.Table.al
  - Application/src/POS Compliance/[IRL] Advisory Council/IRLAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[IRL] Advisory Council/IRLFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[IRL] Advisory Council/IRLFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITAuditEntryType.Enum.al
  - Application/src/POS Compliance/[IT] Entrate/ITAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/ITAuxCustomer.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[IT] Entrate/ITFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITPaymentMethod.Enum.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSPaymMethodMapp.Page.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSPaymMethodMapp.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSSale.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSUnitMapping.Page.al
  - Application/src/POS Compliance/[IT] Entrate/ITPOSUnitMapping.Table.al
  - Application/src/POS Compliance/[IT] Entrate/ITPrinterDepartments.Enum.al
  - Application/src/POS Compliance/[IT] Entrate/ITPrinterMgt.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/ITTransactionType.Enum.al
  - Application/src/POS Compliance/[IT] Entrate/ITVATDepartmentCodebook.Page.al
  - Application/src/POS Compliance/[IT] Entrate/ITVATDepartmentCodebook.Table.al
  - Application/src/POS Compliance/[KSA] Handler/KSAAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[HU] NTCA/MultiSoft-EInvoice/MSHUFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/NOAuditEntryType.Enum.al
  - Application/src/POS Compliance/[NO] Lovdata/NOAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/Reports/NOBalacingA4POS.Report.al
  - Application/src/POS Compliance/[NO] Lovdata/_public/NOEoDReportStatistics.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/NOFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/NOFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/NOFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/NOGenInfoOutputType.Enum.al
  - Application/src/POS Compliance/[NO] Lovdata/Statistics/NOGroupSalesbySalespr.Query.al
  - Application/src/POS Compliance/[NO] Lovdata/NOPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/NOPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/NOPOSSaleLineSum.Query.al
  - Application/src/POS Compliance/[NO] Lovdata/NORegenAuditSignat.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/Statistics/NOReportStatisticsMgt.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/Statistics/NOSalesByItemCategory.Query.al
  - Application/src/POS Compliance/[DE] Fiskaly/PaymentMethodMapper.Page.al
  - Application/src/POS Compliance/[DE] Fiskaly/PaymentMethodMapper.Table.al
  - Application/src/POS Compliance/[AT] Fiskaly/POSActionATShowAuditLog/POSActionATAuditLkp.Codeunit.al
  - Application/src/POS Compliance/[AT] Fiskaly/POSActionATShowAuditLog/POSActionATAuditLkpB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISShowAuditLog/POSActionBGSISAudit.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISShowAuditLog/POSActionBGSISAuditB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISFiscalPrinterCashierMgt/POSActionBGSISCashier.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISFiscalPrinterCashierMgt/POSActionBGSISCashierB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISCashManagement/POSActionBGSISCashMgt.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISCashManagement/POSActionBGSISCashMgtB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISElectronicJournalExportData/POSActionBGSISEJExp.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISElectronicJournalExportData/POSActionBGSISEJExpB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISElectronicJournalReprint/POSActionBGSISEJRepr.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISElectronicJournalReprint/POSActionBGSISEJReprB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISFiscalPrinterMgt/POSActionBGSISFPMgt.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISFiscalPrinterMgt/POSActionBGSISFPMgtB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGPrintFiscalMemoryReport/POSActionBGSISPrFM.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGPrintFiscalMemoryReport/POSActionBGSISPrFMB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISReprintFiscalReceipt/POSActionBGSISReprFR.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISReprintFiscalReceipt/POSActionBGSISReprFRB.Codeunit.al
  - Application/src/POS Compliance/[BG] Fiscal/SIS/POSActionBGSISInsertReturnInfo/POSActionBGSISReturn.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/POSActionCROAuditLookup/POSActionCROAuditLkp.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/POSActionCROAuditLookup/POSActionCROAuditLkpB.Codeunit.al
  - Application/src/POS Compliance/[CRO] Fina/POSActionInsertParagon/POSActionCROParagonIns.Codeunit.al
  - Application/src/POS Compliance/[DE] Fiskaly/POSActionDEDataExports/POSActionDEDataExport.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/POSActionESShowAuditLog/POSActionESAuditLkp.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/POSActionESShowAuditLog/POSActionESAuditLkpB.Codeunit.al
  - Application/src/POS Compliance/[ES] Fiskaly/POSActionESShowResponsibilityDeclaration/POSActionESShowRespDcl.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionFPCashMgt/POSActionHULCashMgt.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionFPCashMgt/POSActionHULCashMgtB.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionHULFPDisplay/POSActionHULFPDisplay.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionHULFiscalPrinterMgt/POSActionHULFPMgt.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionHULFiscalPrinterMgt/POSActionHULFPMgtB.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionInsRefSale/POSActionHULInsRefSale.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionHULFiscalReceipt/POSActionHULReceipt.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionHULFiscalReceipt/POSActionHULReceiptB.Codeunit.al
  - Application/src/POS Compliance/[HU] Laurel/POSActionHULResetFP/POSActionHULResetFP.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/POSActionInsertAdditionalCustField/POSActionInsAddCustF.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/POSActionInsertCustId/POSActionInsertCustId.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/POSActionInsertReferentSaleInfo/POSActionInsRefSale.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/POSActionITPeriodicalReport/POSActionITEJReport.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/POSActionITPeriodicalReport/POSActionITEJReportB.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/POSActionITFPCashMgt/POSActionITFPCashMgt.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/POSActionITFPMgt/POSActionITFPMgt.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/POSActionITFPMgt/POSActionITFPMgtB.Codeunit.al
  - Application/src/POS Compliance/[IT] Entrate/POSActionITInLottery/POSActionITInLottery.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/POSActionNOPrintCopy/POSActionNOPrintCopy.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/POSActionNOPrintCopy/POSActionNOPrintCopyB.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/POSActionRSAuditLookUp/POSActionRSAuditLkpB.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/POSActionRSAuditLookUp/POSActionRSAuditLookUp.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/POSActionSIAuditLookup/POSActionSIAuditLkp.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/POSActionSIAuditLookup/POSActionSIAuditLkpB.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/POSActionSIReturnInfoIns/POSActionSIInsRetSale.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/POSActionSIPreInvInsert/POSActionSIPreInvIns.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/POSActionSIPreInvInsert/POSActionSIPreInvInsB.Codeunit.al
  - Application/src/POS Compliance/POSAuditLog.Page.al
  - Application/src/POS Compliance/POSAuditLog.Table.al
  - Application/src/POS Compliance/POSAuditLogMgt.Codeunit.al
  - Application/src/POS Compliance/POSAuditLogVerify.Codeunit.al
  - Application/src/POS Compliance/POSAuditNotification.Enum.al
  - Application/src/POS Compliance/POSAuditProfile.Page.al
  - Application/src/POS Compliance/_public/POSAuditProfile.Table.al
  - Application/src/POS Compliance/POSAuditProfileNotifier.Codeunit.al
  - Application/src/POS Compliance/POSAuditProfiles.Page.al
  - Application/src/POS Compliance/RetailLocalizationMgt.Codeunit.al
  - Application/src/POS Compliance/[RO] Fiscal/ROAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[RO] Fiscal/ROCustLedgPostMgt.Codeunit.al
  - Application/src/POS Compliance/[RO] Fiscal/ROFiscalisationSetup.Page.al
  - Application/src/POS Compliance/[RO] Fiscal/ROFiscalisationSetup.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAllowedTaxRates.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAllowedTaxRatesList.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAuditEntryType.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAuxSalesCrMemoHeader.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAuxSalesHeader.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSAuxSalesInvHeader.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSCustLedgPostMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSCustomerIdent.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAllowedTaxCateg.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAllowedUOM.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAllowedUOM.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxCompanyInfo.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxCustomer.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxPurchCrMemHdr.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxPurchHeader.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxPurchInvHdr.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxSalesCrMemoHdr.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxSalesHeader.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIAuxSalesInvHdr.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEICommunicationMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIDateDialog.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIDocTaxExemption.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIDocTaxExemption.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIDocumentType.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIInPurchInvMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIInvoiceTypeCode.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceDocument.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceDocuments.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceSelection.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceSetup.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceSetup.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEInvoiceStatus.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIOutSalesCrMemoMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIOutSalesInvMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIPaymentMeans.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIPaymentMethodMapp.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIPaymentMethodMapp.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEITaxExemptionReason.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEITaxExReasons.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEITaxLiabilityMethod.Enum.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIUOMMapping.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIUOMMapping.Table.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIVATPostSetupMap.Page.al
  - Application/src/POS Compliance/[RS] E-Invoice/RSEIVATPostSetupMap.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSReport/RSEODFiscalPrint.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalACopyPrivewFB.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalAInfoPrivewFB.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalAppAreaSetup.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalBGCommBatch.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalEMailLog.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalEMailLogs.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalEMailMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalisationSetup.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalisationSetup.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalPreviewMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalStatus.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/Statistics/RSGroupSalesbySalespr.Query.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSInvoiceType.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSReport/RSMonthlyFiscalPrint.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSReport/RSMonthlyReport.Report.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/_public/RSMstrDataAuxTablesMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSOptionalCustIdent.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPaymentMethod.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPaymentMethodMapping.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPaymentMethodMapping.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPinStatusResponse.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSAuditLogAuxCopy.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSAuditLogAuxCopy.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSPaymMethMapping.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSPaymMethMapping.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSSale.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSUnitMapping.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSPOSUnitMapping.Table.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSReportEMailSelection.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSReport/RSReportStatisticsMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/Statistics/RSSalesByItemCategory.Query.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSTaxCommunicationMgt.Codeunit.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSTransactionType.Enum.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSVATPostSetupMapping.Page.al
  - Application/src/POS Compliance/[RS] Fiskalizacija/RSVATPostSetupMapping.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportCard.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportCheck.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportFile.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportHeader.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportLine.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportMgt.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExports.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportStatus.Enum.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportSubpage.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportZip.Table.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTCashExportZips.Page.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTDataCheckstatus.Enum.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTExportErrorHandler.Codeunit.al
  - Application/src/POS Compliance/[NO] Lovdata/SAF-T Cash Register/SAFTXMLHelper.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CC Cash Register Export/SECCAuditEntryType.Enum.al
  - Application/src/POS Compliance/[SE] CleanCash/CC Cash Register Export/SECCCashRegAuditLog.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/CC Cash Register Export/SECCCashRegAuditLog.Table.al
  - Application/src/POS Compliance/[SE] CleanCash/CC Cash Register Export/SECCCashRegAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CC Cash Register Export/SECCCashRegExpMgt.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/CC Cash Register Export/SECCCashRegisterExport.Report.al
  - Application/src/POS Compliance/[SE] CleanCash/SECCReportStatMgt.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/SECleanCashFiscalPrint.Codeunit.al
  - Application/src/POS Compliance/[SE] CleanCash/SEFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[SE] CleanCash/SEFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIArchiveMgt.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/SIAuditEntryType.Enum.al
  - Application/src/POS Compliance/[SI] Davki/SIAuditMgt.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/SIAuxSalesCrMemoHeader.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIAuxSalesHeader.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIAuxSalesInvHeader.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIAuxSalespersonPurch.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalBillA4.Report.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalEMailLog.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalEMailLogs.Page.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalEMailMgt.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalizationSetup.Page.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalizationSetup.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIFiscalThermalPrint.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/SIInvoiceArchive.Report.al
  - Application/src/POS Compliance/[SI] Davki/SIInvoiceItemArchive.Report.al
  - Application/src/POS Compliance/[SI] Davki/_public/SIMstrDataAuxTableMgt.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/SIPOSAuditLogAuxInfo.Page.al
  - Application/src/POS Compliance/[SI] Davki/SIPOSAuditLogAuxInfo.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIPOSSale.Table.al
  - Application/src/POS Compliance/[SI] Davki/SIPOSStoreMapping.Page.al
  - Application/src/POS Compliance/[SI] Davki/SIPOSStoreMapping.Table.al
  - Application/src/POS Compliance/[SI] Davki/SISalesbookReceipt.Page.al
  - Application/src/POS Compliance/[SI] Davki/SISalesbookReceipt.Table.al
  - Application/src/POS Compliance/[SI] Davki/SITaxCommunicationMgt.Codeunit.al
  - Application/src/POS Compliance/[SI] Davki/SITransactionType.Enum.al
  - Application/src/POS Compliance/[DE] Fiskaly/VATPostGroupMapper.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/VATPostingGroupMapper.Table.al
  - Application/src/POS Compliance/[DE] Fiskaly/VATProdPostGroupMapper.Page.al
---

# POS Compliance — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6150844 | "NPR AT Cash Register" | AT Cash Register | "POS Unit No." | — |
| 6150828 | "NPR AT Fiscalization Setup" | AT Fiscalization Setup | "Primary Key" | — |
| 6150830 | "NPR AT Organization" | AT Organization | "Code" | — |
| 6150857 | "NPR AT POS Audit Log Aux. Info" | AT POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6150856 | "NPR AT POS Payment Method Map" | AT POS Payment Method Mapping | "POS Payment Method Code" | — |
| 6150840 | "NPR AT SCU" | AT Signature Creation Unit | "Code" | — |
| 6150855 | "NPR AT VAT Posting Setup Map" | AT VAT Posting Setup Mapping | "VAT Bus. Posting Group", "VAT Prod. Posting Group" | — |
| 6150909 | "NPR BE Fiscalisation Setup" | BE Fiscalization Setup | "Primary Key" | — |
| 6014682 | "NPR BE POS Audit Log Aux. Info" | BE POS Audit Log Aux. Info | "POS Entry No." | — |
| 6060085 | "NPR BG Fiscalization Setup" | BG Fiscalization Setup | "Primary Key" | — |
| 6060079 | "NPR BG POS Audit Log Aux. Info" | BG POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6150735 | "NPR BG SIS POS Audit Log Aux." | BG SIS POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6060088 | "NPR BG SIS POS Paym. Meth. Map" | BG SIS POS Payment Method Mapping | "POS Payment Method Code" | — |
| 6151289 | "NPR BG SIS POS Sale" | BG SIS POS Sale | "POS Sale SystemId" | — |
| 6060097 | "NPR BG SIS POS Unit Mapping" | BG SIS POS Unit Mapping | "POS Unit No." | — |
| 6060099 | "NPR BG SIS Return Reason Map" | BG SIS Return Reason Mapping | "Return Reason Code" | — |
| 6060089 | "NPR BG SIS VAT Post. Setup Map" | BG SIS VAT Posting Setup Mapping | "VAT Bus. Posting Group", "VAT Prod. Posting Group" | — |
| 6184500 | "NPR CleanCash Setup" | CleanCash Setup | Register | — |
| 6014438 | "NPR CleanCash Trans. Request" | CleanCash Trans. Request | "Entry No." | — |
| 6014455 | "NPR CleanCash Trans. Response" | CleanCash Trans. Response | "Request Entry No.", "Response No." | — |
| 6014454 | "NPR CleanCash Trans. VAT" | CleanCash Trans. VAT | "Request Entry No.", "VAT Class" | — |
| 6150697 | "NPR CRO Aux Sales Cr. Memo Hdr" | CRO Aux Sales Cr. Memo Header | "Sales Cr.Memo Header SystemId" | — |
| 6150695 | "NPR CRO Aux Sales Header" | CRO Aux Sales Header | "Sales Header SystemId" | — |
| 6150696 | "NPR CRO Aux Sales Inv. Header" | CRO Aux Sales Invoice Header | "Sales Inv. Header SystemId" | — |
| 6060038 | "NPR CRO Aux Salesperson/Purch." | CRO Aux Salesperson/Purchaser | "Salesperson/Purchaser SystemId" | — |
| 6151009 | "NPR CRO Fiscal E-Mail Log" | CRO Fiscal E-Mail Log | "Entry No." | — |
| 6060058 | "NPR CRO Fiscalization Setup" | CRO Fiscalization Setup | "Primary Key" | — |
| 6150724 | "NPR CRO Payment Method Mapping" | CRO Payment Method Mapping | "Payment Method Code" | — |
| 6060059 | "NPR CRO POS Aud. Log Aux. Info" | CRO POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6060039 | "NPR CRO POS Paym. Method Mapp." | CRO POS Payment Method Mapping | "Payment Method Code" | — |
| 6060100 | "NPR CRO POS Sale" | CRO POS Sale | "POS Sale SystemId" | — |
| 6151270 | "NPR CRO POS Store Mapping" | CRO POS Store Mapping | "POS Store Code" | — |
| 6014529 | "NPR DE Audit Setup" | DE Connection Parameter Set | "Primary Key" | — |
| 6059886 | "NPR DE Data Export" | DE Data Export | "Entry No." | — |
| 6150994 | "NPR DE Establishment" | DE Establishment | "POS Store Code" | — |
| 6150916 | "NPR DE Fiscalization Setup" | DE Fiscalization Setup | — | — |
| 6014531 | "NPR DE POS Audit Log Aux. Info" | DE POS Audit Log Aux. Info | "POS Entry No." | — |
| 6014532 | "NPR DE POS Unit Aux. Info" | DE Fiskaly TSS Client | "POS Unit No." | — |
| 6151008 | "NPR DE Submission" | DE Submission | "Entry No." | — |
| 6014687 | "NPR DE TSS" | DE Technical Security System | Code | — |
| 6150746 | "NPR DK Fiscalization Setup" | DK Fiscalization Setup | "Primary Key" | — |
| 6150745 | "NPR DK POS Audit Log Aux. Info" | DK POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6150748 | "NPR DK SAF-T Cash Exp. Header" | SAF-T Cash Register Export Header | ID | — |
| 6150747 | "NPR DK SAF-T Cash Export File" | SAF-T Cash Export File | "Export ID", "File No." | — |
| 6150749 | "NPR DK SAF-T Cash Export Line" | SAF-T Cash Export Line | ID, "Line No." | — |
| 6150750 | "NPR DK SAF-T Cash Export Zip" | SAF-T Cash Export Zip | "Export ID", "Zip No." | — |
| 6014573 | "NPR DSFINVK Closing" | DSFINVK Closing | "DSFINVK Closing No.", "POS Unit No." | — |
| 6150890 | "NPR ES Client" | ES Client | "POS Unit No." | — |
| 6150838 | "NPR ES Fiscalization Setup" | ES Fiscalization Setup | "Primary Key" | — |
| 6150884 | "NPR ES Organization" | ES Organization | "Code" | — |
| 6150894 | "NPR ES POS Audit Log Aux. Info" | ES POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6150900 | "NPR ES Return Reason Mapping" | ES Return Reason Mapping | "Return Reason Code" | — |
| 6150887 | "NPR ES Signer" | ES Signer | "Code" | — |
| 6184851 | "NPR FR Audit No. Series" | FR Audit No. Series | "POS Unit No." | — |
| 6184850 | "NPR FR Audit Setup" | FR Audit Setup | "Primary Key" | — |
| 6014699 | "NPR FR POS Audit Log Add. Info" | FR POS Audit Log Add. Info | "POS Audit Log Entry No." | — |
| 6184852 | "NPR FR POS Audit Log Aux. Info" | FR POS Entry Aux. Info | "POS Entry No." | — |
| 6151043 | "NPR HU L Cash Mgt. Reason" | HU Laurel Cash Mgt Reason | "Entry No." | — |
| 6151044 | "NPR HU L Cash Transaction" | HU Laurel Cash Transaction | "Entry No." | — |
| 6150922 | "NPR HU L Fiscalization Setup" | HU Laurel Fiscalization Setup | "Primary Key" | — |
| 6150995 | "NPR HU L POS Audit Log Aux." | HU Laurel POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6151116 | "NPR HU L POS Paym. Meth. Mapp." | HU Laurel POS Payment Method Mapping | "POS Payment Method Code" | — |
| 6151098 | "NPR HU L POS Sale" | HU Laurel POS Sale | "POS Sale SystemId" | — |
| 6151115 | "NPR HU L POS Unit Mapping" | HU Laurel Unit Mapping | "POS Unit No." | — |
| 6151066 | "NPR HU L Return Reason Mapp." | HU Laurel Return Reason Mapping | "Return Reason Code" | — |
| 6151029 | "NPR HU L VAT Post. Setup Mapp." | HU Laurel VAT Posting Setup Mapping | "VAT Bus. Posting Group", "VAT Prod. Posting Group" | — |
| 6150760 | "NPR HU MS Fiscalization Setup" | HU MultiSoft/NaviPartner EInvoice Setup | "Primary Key" | — |
| 6150761 | "NPR HU MS Payment Method Map." | HU Payment Method Mapping | "Payment Method" | — |
| 6150914 | "NPR IRL Fiscalization Setup" | IRL Fiscalization Setup | "Primary Key" | — |
| 6150775 | "NPR IT Aux Customer" | IT Aux Customer | "No." | — |
| 6150737 | "NPR IT Fiscalization Setup" | IT Fiscalization Setup | "Primary Key" | — |
| 6150738 | "NPR IT POS Audit Log Aux Info" | IT POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6150741 | "NPR IT POS Paym. Method Mapp." | IT POS Payment Method Mapping | "Entry No.", "Payment Method Code" | — |
| 6150774 | "NPR IT POS Sale" | IT POS Sale | "POS Sale SystemId" | — |
| 6150739 | "NPR IT POS Unit Mapping" | IT POS Unit Mapping | "POS Unit No." | — |
| 6150751 | "NPR IT VAT Department Codebook" | IT VAT Department Codebook | "Entry No." | — |
| 6060060 | "NPR NO Fiscalization Setup" | NO Fiscalization Setup | "Primary Key" | — |
| 6060065 | "NPR NO POS Audit Log Aux. Info" | NO POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6014533 | "NPR Payment Method Mapper" | Payment Method Mapper | "POS Payment Method" | — |
| 6150637 | "NPR POS Audit Log" | POS Audit Log | "Entry No." | — |
| 6150650 | "NPR POS Audit Profile" | POS Audit Profile | "Code" | — |
| 6248725 | "NPR RO Fiscalisation Setup" | RO Fiscalization Setup | "Primary Key" | — |
| 6059812 | "NPR RS Allowed Tax Rates" | RS Allowed Tax Rates | "Tax Category Name", "Tax Category Rate Label" | — |
| 6059827 | "NPR RS Aux Sales CrMemo Header" | RS Aux Sales Credit Memo Header | "Sales Cr.Memo Header No." | — |
| 6059828 | "NPR RS Aux Sales Header" | RS Aux Sales Header | "Sales Header SystemId" | — |
| 6059826 | "NPR RS Aux Sales Inv. Header" | RS Aux Sales Invoice Header | "Sales Invoice Header No." | — |
| 6150822 | "NPR RS EI Allowed UOM" | RS EI Allowed Unit of Measures | Code | — |
| 6150831 | "NPR RS EI Aux Company Info" | RS EI Aux Company Information | "Company Info SystemId" | — |
| 6150832 | "NPR RS EI Aux Customer" | RS EI Aux Customer | "Customer No." | — |
| 6150864 | "NPR RS EI Aux Purch. CrMem Hdr" | RS EI Aux Purchase Cr. Memo Header | "Purch. Cr. Memo Hdr. SystemId" | — |
| 6150862 | "NPR RS EI Aux Purch. Header" | RS EI Aux Purchase Header | "Purchase Header SystemId" | — |
| 6150863 | "NPR RS EI Aux Purch. Inv. Hdr." | RS EI Aux Purchase Inv. Header | "Purch. Inv. Header SystemId" | — |
| 6150865 | "NPR RSEI Aux Sales Cr.Memo Hdr" | RS EI Aux Sales Cr. Memo Header | "Sales Cr.Memo Header SystemId" | — |
| 6150833 | "NPR RS EI Aux Sales Header" | RS EI Aux Sales Header | "Sales Header SystemId" | — |
| 6150834 | "NPR RS EI Aux Sales Inv. Hdr." | RS EI Aux Sales Invoice Header | "Sales Invoice SystemId" | — |
| 6150836 | "NPR RS EI Doc. Tax Exemption" | RS EI Document Tax Exemption | "Document No.", "Tax Category" | — |
| 6150804 | "NPR RS E-Invoice Document" | RS E-Invoice Document | "Entry No." | — |
| 6150803 | "NPR RS E-Invoice Setup" | RS E-Invoice Setup | "Primary Key" | — |
| 6150824 | "NPR RS EI Payment Method Mapp." | RS E-Invoice Payment Method Mapping | "Payment Method Code" | — |
| 6150835 | "NPR RS EI Tax Exemption Reason" | RS EI Tax Exemption Reason | "Tax Category", "Tax Exemption Reason Code" | — |
| 6150823 | "NPR RS EI UOM Mapping" | RS E-Invoice UOM Mapping | "Unit of Measure" | — |
| 6150878 | "NPR RS EI VAT Post. Setup Map." | RS EI VAT Posting Setup Mapping | "VAT Bus. Posting Group", "VAT Prod. Posting Group" | — |
| 6059815 | "NPR RS Fiscal E-Mail Log" | RS Fiscal E-Mail Log | "Entry No." | — |
| 6059861 | "NPR RS Fiscalisation Setup" | RS Fiscalization Setup | "Primary Key" | — |
| 6059817 | "NPR RS Payment Method Mapping" | RS Paymnet Method Mapping | "Payment Method Code" | — |
| 6059860 | "NPR RS POS Audit Log Aux. Copy" | RS POS Audit Log Aux. Copy | "Audit Entry Type", "Audit Entry No.", "Copy No." | — |
| 6059830 | "NPR RS POS Audit Log Aux. Info" | RS POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6059818 | "NPR RS POS Paym. Meth. Mapping" | RS POS Paymnet Method Mapping | "POS Payment Method Code" | — |
| 6059824 | "NPR RS POS Sale" | RS POS Sale | "POS Sale SystemId" | — |
| 6059819 | "NPR RS POS Unit Mapping" | RS POS Unit Mapping | "POS Unit Code" | — |
| 6059821 | "NPR RS VAT Post. Setup Mapping" | RS VAT Posting Setup Mapping | "VAT Bus. Posting Group", "VAT Prod. Posting Group" | — |
| 6060096 | "NPR SAF-T Cash Export File" | SAF-T Cash Export File | "Export ID", "File No." | — |
| 6059834 | "NPR SAF-T Cash Export Header" | SAF-T Cash Register Export Header | ID | — |
| 6059833 | "NPR SAF-T Cash Export Line" | SAF-T Cash Export Line | ID, "Line No." | — |
| 6059846 | "NPR SAF-T Cash Export Zip" | SAF-T Cash Export Zip | "Export ID", "Zip No." | — |
| 6059857 | "NPR SE CC Cash Reg. Audit Log" | CleanCash Cash Register Audit Log | "Entry No." | — |
| 6150827 | "NPR SE Fiscalization Setup." | SE Fiscalization Setup | "Primary Key" | — |
| 6150954 | "NPR SI Aux Sales CrMemo Header" | SI Aux Sales Header | "Sales Cr.Memo Header SystemId" | — |
| 6150952 | "NPR SI Aux Sales Header" | SI Aux Sales Header | "Sales Header SystemId" | — |
| 6150953 | "NPR SI Aux Sales Inv. Header" | SI Aux Sales Invoice Header | "Sales Invoice Header SystemId" | — |
| 6150687 | "NPR SI Aux Salesperson/Purch." | SI Aux Salesperson/Purchaser | "Salesperson/Purchaser SystemId" | — |
| 6059869 | "NPR SI Fiscal E-Mail Log" | SI Fiscal E-Mail Log | "Entry No." | — |
| 6059835 | "NPR SI Fiscalization Setup" | SI Fiscalization Setup | "Primary Key" | — |
| 6059838 | "NPR SI POS Audit Log Aux. Info" | SI POS Audit Log Aux. Info | "Audit Entry Type", "Audit Entry No." | — |
| 6060164 | "NPR SI POS Sale" | SI POS Sale | "POS Sale SystemId" | — |
| 6150692 | "NPR SI POS Store Mapping" | SI POS Store Mapping | "POS Store Code" | — |
| 6150992 | "NPR SI Salesbook Receipt" | SI Salesbook Receipt | "Entry No." | — |
| 6014578 | "NPR VAT Post. Group Mapper" | VAT Posting Setup Mapper | "VAT Prod. Pos. Group", "VAT Bus. Posting Group" | — |
| 6014545 | "NPR VAT Posting Group Mapper" | VAT Product Posting Group Mapper | "VAT Prod. Pos. Group" | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6184848 | "NPR AT Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6184903 | "NPR AT Fiscal Thermal Print" |  | PrintReceipt, PrintThermalReceipt, PrintThermalControlReceipt, InsertPrinterDeviceSettings, InsertPrinterDeviceSettingsForWindows1251Encoding | — |
| 6184861 | "NPR AT Fiskaly Communication" |  | GetJWT, AuthenticateAPI, CheckAuthenticateAPICredentials, CheckIsAPIKeyAssigned, CheckIsAPISecretNameAssigned | — |
| 6184862 | "NPR AT Fiskaly JWT" |  | GetToken, SetToken | — |
| 6184911 | "NPR AT Imp Other Ctrl Rcpt JQ" |  | — | — |
| 6184859 | "NPR AT Secret Mgt." |  | SetSecretKey, GetSecretKey, HasSecretKey, RemoveSecretKey | — |
| 6184909 | "NPR AT Validate Receipts JQ" |  | — | — |
| 6059817 | "NPR BE Audit Mgt." |  | OnLookupAuditHandler, OnBeforeInitSale, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6248349 | "NPR BE Fiscal Sales Receipt" |  | AddReceiptInformation | — |
| 6151610 | "NPR BG SIS Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6184476 | "NPR BG SIS Communication Mgt." |  | ProcessFiscalPrinterInfoResponse, ProcessPrintSaleAndRefundResponse, ProcessPrintXReportResponse, ProcessPrintZReportResponse, ProcessPrintDuplicateResponse | — |
| 6014454 | "NPR CleanCash Identity Msg." |  | CreateRequest, CreateRequest, GetRequestXml, SerializeResponse, AddToPrintBuffer | — |
| 6014459 | "NPR CleanCash Receipt Msg." |  | CreateRequest, CreateRequest, GetReceiptVat, StoreCleanCashReceipt, GetRequestXml | — |
| 6014461 | "NPR CleanCash Status Msg." |  | CreateRequest, CreateRequest, GetRequestXml, SerializeResponse, AddToPrintBuffer | — |
| 6184500 | "NPR CleanCash Wrapper" |  | PrintCleanCash, PrintCleanCashTransaction, OnReceiptFooter, OnBeforeInsertWorkflowStep, CurrCodeunitId | — |
| 6014477 | "NPR CleanCash XCCSP Protocol" |  | StoreReceipt, HandleRequest, TrySendRequest, GetBasicAuthInfo, ExtractUserNamePasswordFromUrl | — |
| 6248243 | "NPR Compliance Fiscal Mgt." |  | OnBeforeNormalLookupLocationCode, POSStoreLocationCodeRetailDrillDown, SalesLine_OnAfterValidate_LocationCode, CheckForDifferentLocationTypes, GetFirstSalesLineWithLocation | — |
| 6184648 | "NPR Create Clean Cash On Sale" |  | — | — |
| 6150984 | "NPR Create De Fiskaly on Sale" |  | — | — |
| 6151547 | "NPR CRO Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6248659 | "NPR CRO Audit Send Mail" |  | SendFiscalBillViaEmail | — |
| 6185071 | "NPR CRO Cust. Ledg. Post. Mgt." |  | OnBeforeInsertGenJournalLinesForCustLedgEntryPosting, OnBeforeCloseCustLedgerEntries, CheckIfCROCustLedgEntryPostingEnabled, IsCROFiscalizationEnabled | — |
| 6248213 | "NPR CRO Fiscal E-Mail Mgt." |  | SendFiscalBillViaEmail, SendFiscalBillViaEmail, CreateAndSendEmailMessage, CreateAttachment, LogEmailSendingInfo | — |
| 6151584 | "NPR CRO Fiscal Thermal Print" |  | PrintReceipt, AddPOSReceiptInformation, AddSalesInvoiceReceiptInformation, AddSalesCrMemoReceiptInformation, AddCollectInStorePOSSaleContentSection | — |
| 6185089 | "NPR CRO MstrData Aux Table Mgt" |  | GetCROAuxSalesHeaderPosUnit, SetCROAuxSalesHeaderPosUnit, InitializeCROAuxSalesHeader | — |
| 6151497 | "NPR CRO Tax Communication Mgt." |  | CreateNormalSale, CreateAndFiscalizePOSSale, CreateAndFiscalizeSalesInvSale, CreateAndFiscalizeSalesCrMemoRefund, AddHeaderSection | — |
| 6014444 | "NPR DE Audit Mgt." |  | HandlerCode, IsAuditEnabled, IsAuditEnabled, IsFiscalizationEnabled, ShouldDisplayNotification | — |
| 6059849 | "NPR DE Audit Setup Notifier" |  | ShowDEAuditSetupNotification, OnActionShowSetup, OnActionLearnMore, GetNotificationId, OnAfterValidateAuditHandler | — |
| 6248729 | "NPR DE Fiscal Thermal Print" |  | PrintFiscalReceipt, IsFiscalizationFailed, AddTSEOutageWarning, AddStornoHeaderIfCancellation, AddFiskalyTextBlock | — |
| 6014445 | "NPR DE Fiskaly Communication" |  | SendDocument, TrySendDocument, StartTransaction, EndTransaction, SendTransaction | — |
| 6014442 | "NPR DE Fiskaly DSFINVK" |  | CreateDSFINVKDocument, GetHeader, FillTransactionData, FillTmpPayment, FillTmpVat | — |
| 6014487 | "NPR DE Fiskaly DSFINVK Job" |  | SendWithoutParameterData, SendParameterStringData, TriggerExport, UpdateClosingState, SendDataWithError | — |
| 6014449 | "NPR DE Fiskaly Job" |  | — | — |
| 6059850 | "NPR DE Secret Mgt." |  | SetSecretKey, GetSecretKey, HasSecretKey, RemoveSecretKey | — |
| 6184669 | "NPR DK Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6184670 | "NPR DK Gen. SAF-T Cash File" |  | ExportHeader, ExportAuditFileSender, ExportCompanyInfo, ExportAddress, ExportBusinessPartners | — |
| 6184666 | "NPR DK Re-gen. Audit Signat." |  | — | — |
| 6184671 | "NPR DK SAF-T Cash Export Check" |  | — | — |
| 6184672 | "NPR DK SAF-T Cash Export Mgt." |  | StartExport, DeleteExport, ThrowNoParallelExecutionNotification, RestartTaskOnExportLine, UpdateExportStatus | — |
| 6184673 | "NPR DK SAF-T Exp. Err. Handler" |  | — | — |
| 6184674 | "NPR DK SAF-T XML Helper" |  | Initialize, SetNamespace, CreateRootWithNamespace, AddNewXMLNode, AppendXMLNode | — |
| 6184866 | "NPR ES Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6248600 | "NPR ES Fiscal Thermal Print" |  | PrintFiscalReceipt, AddReceiptInformation, AddPapercutCommand, AddVerifactuComplianceQRCode, AddTicketBAIComplianceQRCode | — |
| 6184937 | "NPR ES Fiskaly Communication" |  | GetJWT, RetrieveAccessToken, CheckRetrieveAccessTokenCredentials, CheckIsAPIKeyAssigned, CheckIsAPISecretNameAssigned | — |
| 6184936 | "NPR ES Fiskaly JWT" |  | GetToken, SetToken | — |
| 6184988 | "NPR ES Retrieve Pending Inv JQ" |  | — | — |
| 6184987 | "NPR ES Retrieve Software JQ" |  | — | — |
| 6184938 | "NPR ES Secret Mgt." |  | SetSecretKey, GetSecretKey, HasSecretKey, RemoveSecretKey | — |
| 6014560 | "NPR FiskalyJWT" |  | SetJWT, GetToken | — |
| 6184851 | "NPR FR Audit Arch. Workshifts" |  | — | — |
| 6184850 | "NPR FR Audit Mgt." |  | OnClearCompanyConfig, HandlerCode, IsEnabled, LoadCertificate, VerifySignature | OnBeforeDownloadArchive |
| 6184890 | "NPR FR Audit Subscribers" |  | OnLookupAuditHandler, OnArchiveWorkshiftPeriod, OnHandleAuditLogBeforeInsert, OnHandleAuditLogAfterInsert, OnReceiptFooter | — |
| 6184889 | "NPR FR Setup Check" |  | RunCheck | — |
| 6059782 | "NPR Generate SAF-T Cash File" |  | ExportHeader, ExportAuditFileSender, ExportCompanyInfo, ExportAddress, ExportBusinessPartners | — |
| 6185037 | "NPR HU L Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnAfterInsertPOSSaleLineBeforeCommit, OnBeforeSetQuantity | — |
| 6248367 | "NPR HU L Communication Mgt." |  | OpenFiscalDay, CloseFiscalDay, PrintCashierFCUReport, GetDailyTotal, ResetPrinter | — |
| 6184708 | "NPR HU MS Audit Mgt." |  | OnClearCompanyConfig, OnAfterEndSale, SalesDocExpMgtCreateSalesHeaderOnBeforeSalesHeaderModify, SalesHeaderOnBeforeSalesHeaderModify, GetPOSEntryFromSalesTicketNo | — |
| 6185015 | "NPR IRL Audit Mgt." |  | OnClearCompanyConfig, UpdateRetentionPolicyTo6Years, AddAllowedTable, GetRetentionPeriodCode, RetentionPeriodExists | — |
| 6184647 | "NPR IT Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6184659 | "NPR IT Printer Mgt." |  | ProcessFPrinterPrintReceiptRespose, ProcessFPrinterLoginResponse, ProcessFPrinterModelResponse, ProcessFPrinterPrintZReportResponse, ProcessFPrinterPrintXReportResponse | — |
| 6248250 | "NPR KSA Audit Mgt." |  | OnLookupAuditHandler, AddKSAAuditHandler, IsKSAAuditEnabled, HandlerCode, OnAfterInsertPOSSaleLineBeforeCommit | — |
| 6151548 | "NPR NO Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6184788 | "NPR NO EoD Report Statistics" |  | IsNOAuditEnabled, FindPreviousZReport, FindFromEntryNo, SetFilterOnPOSEntry, CalcOtherPaymentsAmountAndQuantity | — |
| 6184562 | "NPR NO Fiscal Thermal Print" |  | PrintEndOfDayReceipt, PrintThermalReceipt, PrintReceiptHeader, PrintEODPart, PrintCardTerminalsPart | — |
| 6060013 | "NPR NO Re-gen. Audit Signat." |  | — | — |
| 6060034 | "NPR NO Report Statistics Mgt." |  | CalcCardsAmountAndQuantity, CalcOtherPaymentsAmountAndQuantity, CalcReturnsAndSalesAmount, CalcTaxAmount, CalcTaxAmounts | — |
| 6184906 | "NPR POS Action: AT Audit Lkp" |  | Register, RunWorkflow, ShowATAuditLog, GetActionScript | — |
| 6184907 | "NPR POS Action: AT Audit Lkp B" |  | ShowATAuditLog | — |
| 6184626 | "NPR POS Action: BG SIS Audit" |  | Register, RunWorkflow, ShowBGSISAuditLog, GetActionScript | — |
| 6184684 | "NPR POS Action: BG SIS Audit B" |  | ShowBGSISAuditLog | — |
| 6184641 | "NPR POS Action: BG SIS Cashier" |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetActionScript | — |
| 6184687 | "NPR POS Action: BG SISCashierB" |  | PrepareHTTPRequest, HandleResponse, SelectSalesperson | — |
| 6184700 | "NPR POS Action: BGSISCashMgt" |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetActionScript | — |
| 6184707 | "NPR POS Action: BGSISCashMgt B" |  | PrepareHTTPRequest, HandleResponse | — |
| 6184604 | "NPR POS Action: BG SIS EJ Exp" |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetActionScript | — |
| 6184686 | "NPR POS Action: BG SIS EJ ExpB" |  | PrepareHTTPRequest, HandleResponse | — |
| 6184609 | "NPR POS Action: BG SIS EJ Repr" |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetActionScript | — |
| 6184685 | "NPR POS Action: BG SIS EJReprB" |  | PrepareHTTPRequest, HandleResponse | — |
| 6184606 | "NPR POS Action: BG SIS FP Mgt." |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetSalesTicketNo | — |
| 6184683 | "NPR POS Action: BG SIS FP MgtB" |  | PrepareHTTPRequest, HandleResponse, ClearGlobalVariables, FindAuditLog, FindPOSEntry | — |
| 6184643 | "NPR POS Action: BG SIS Pr FM" |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetActionScript | — |
| 6184682 | "NPR POS Action: BG SIS Pr FM B" |  | PrepareHTTPRequest, HandleResponse | — |
| 6184734 | "NPR POS Action: BG SIS Repr FR" |  | Register, RunWorkflow, PrepareHTTPRequest, HandleResponse, GetActionScript | — |
| 6184735 | "NPR POS Action: BG SIS ReprFRB" |  | PrepareHTTPRequest, HandleResponse, SelectFiscalizedAuditLog | — |
| 6248687 | "NPR POS Action: BG SIS Return" |  | Register, RunWorkflow, InsertReturnInfo, GetActionScript | — |
| 6184557 | "NPR POS Action: CROAudit Lkp" |  | Register, GetActionScript, RunWorkflow, ParameterShow_Name | — |
| 6184556 | "NPR POS Action: CROAudit Lkp-B" |  | ProcessRequest | — |
| 6184558 | "NPR POS Action: CROParagon Ins" |  | Register, RunWorkflow, InputAuditParagonNumber, GetActionScript, InputAuditParagonNumberTest | — |
| 6150785 | "NPR POS Action: DE Data Export" |  | Register, RunWorkflow, ShowDEDataExportPage, CreateAndShowDEDataExport, GetActionScript | — |
| 6184979 | "NPR POS Action: ES Audit Lkp" |  | Register, RunWorkflow, ShowESAuditLog, GetActionScript | — |
| 6184980 | "NPR POS Action: ES Audit Lkp B" |  | ShowESAuditLog | — |
| 6248383 | "NPR POS Action: ES ShowRespDcl" |  | Register, RunWorkflow, ShowResponsibilityDeclaration, GetActionScript | — |
| 6248274 | "NPR POS Action: HUL Cash Mgt" |  | Register, RunWorkflow, SetValuesToContext, ProcessLaurelMiniPOSData, GetActionScript | — |
| 6248275 | "NPR POS Action: HUL Cash Mgt B" |  | SetRequestValuesToContext, PrepareHwcRequest, CreateMoneyInRequest, CreateMoneyOutRequest, ProcessLaurelMiniPOSData | — |
| 6248344 | "NPR POS Action: HUL FP Display" |  | Register, RunWorkflow, SetValuesToContext, ProcessLaurelMiniPOSData, GetActionScript | — |
| 6248368 | "NPR POS Action: HU L FP Mgt." |  | Register, RunWorkflow, SetValuesToContext, ProcessLaurelMiniPOSData, GetActionScript | — |
| 6248366 | "NPR POS Action: HU L FP Mgt. B" |  | SetRequestValuesToContext, PrepareHwcRequest, ProcessLaurelMiniPOSData, ProcessLaurelMiniPOSResponse, ParseHwcResponse | — |
| 6248343 | "NPR POS Action: HUL InsRefSale" |  | Register, RunWorkflow, GetActionScript, InputOriginalReceiptData | — |
| 6248254 | "NPR POS Action: HU L Receipt" |  | Register, RunWorkflow, SetValuesToContext, ProcessLaurelMiniPOSData, GetActionScript | — |
| 6248259 | "NPR POS Action: HU L Receipt B" |  | SetRequestValuesToContext, PrepareHwcRequest, CreatePrintReceiptRequest, ProcessLaurelMiniPOSData, ProcessLaurelMiniPOSResponse | — |
| 6248451 | "NPR POS Action: HU L Reset FP" |  | Register, RunWorkflow, SetValuesToContext, SetRequestValuesToContext, PrepareHwcRequest | — |
| 6059956 | "NPR POS Action - Ins. AddCustF" |  | Register, RunWorkflow, InputPosRSCustomerAddCustField, GetActionScript | — |
| 6059952 | "NPR POS Action - Insert CustId" |  | Register, RunWorkflow, InputPosRSCustomerCustIdentification, GetActionScript | — |
| 6060159 | "NPR POS Action - Ins. RefSale" |  | Register, RunWorkflow, AddPresetValuesToContext, InsertReferenceInfo, GetActionScript | — |
| 6184728 | "NPR POS Action: IT EJ Report" |  | Register, RunWorkflow, AddPresetValuesToContext, CreateHTTPRequestBody, HandleResponse | — |
| 6184729 | "NPR POS Action: IT EJ Report B" |  | CreateHTTPRequestBody, HandleResponse, GetPOSUnitNo, AddParametersToRequest, ReportByRecNumberFormatData | — |
| 6184745 | "NPR POS Action: IT FP Cash Mgt" |  | Register, RunWorkflow, CreateHTTPRequestBody, HandleResponse, AddParametersToRequest | — |
| 6184662 | "NPR POS Action: IT FP Mgt." |  | Register, RunWorkflow, CreateHTTPRequestBody, HandleResponse, GetActionScript | — |
| 6184706 | "NPR POS Action: IT FP Mgt. B" |  | CreateHTTPRequestBody, HandleResponse, AddRequestToRequestsArray, GetPOSUnitNo, GetAuditLog | — |
| 6184738 | "NPR POS Action: IT In. Lottery" |  | Register, RunWorkflow, InsertCustomerLotteryCodeOnPOSSale, SetupWorkflowContext, GetActionScript | — |
| 6248438 | "NPR POS Action: NO Print Copy" |  | Register, GetActionScript, RunWorkflow, PrepareDigitalReceiptWorkflow, ActionCode | — |
| 6248439 | "NPR POS Action: NO Print CopyB" |  | GetSalesTicketNoAndPrintReceipt, ChooseReceiptPOSEntry, LastReceiptPOSEntry, LastBalancePOSEntry, FilterPOSEntries | — |
| 6151358 | "NPR POS Action: RSAudit Lkp-B" |  | ProcessRequest, ShowAllRSAuditLog, ShowLastRSAuditLog | — |
| 6150956 | "NPR POS Action: RSAudit Lookup" |  | Register, GetActionScript, RunWorkflow, ParameterShow_Name | — |
| 6184602 | "NPR POS Action: SIAudit Lkp" |  | Register, GetActionScript, RunWorkflow, ParameterShow_Name | — |
| 6184603 | "NPR POS Action: SIAudit Lkp-B" |  | ProcessRequest, ShowAllSIAuditLog, ShowLastSIAuditLog | — |
| 6185095 | "NPR POS Action: SI Ins RetSale" |  | Register, RunWorkflow, AddPresetValuesToContext, InsertReturnInfo, GetActionScript | — |
| 6184559 | "NPR POS Action: SIPreInv Ins." |  | Register, RunWorkflow, InsertSalesbookReceiptInfo, GetActionScript, InputAuditPreInvoiceNumbersTest | — |
| 6248197 | "NPR POS Action: SIPreInv Ins B" |  | InsertSalesbookReceiptInfo, InputSalesBookInitialInfo | — |
| 6150619 | "NPR POS Audit Log Mgt." |  | IsEnabled, ValidateLog, ArchiveWorkshiftPeriod, CreateEntry, CreateEntryExtended | OnValidateLogRecords, OnLookupAuditHandler, OnShowAdditionalInfo |
| 6059888 | "NPR POS Audit Log Verify" |  | VerificationError | — |
| 6184789 | "NPR POS Audit Profile Notifier" |  | OnAfterValidateAuditHandler, ShowNotification, ShowAuditHandlerSetupNotification, OnActionShowSetup, OnActionLearnMore | — |
| 6184737 | "NPR Retail Localization Mgt." |  | IsRetailLocalizationEnabled, RSRetailEnabled | — |
| 6248727 | "NPR RO Audit Mgt." |  | OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnClearCompanyConfig, AddROAuditHandler, IsEnabled | — |
| 6248728 | "NPR RO Cust. Ledg. Post. Mgt." |  | OnBeforeInsertGenJournalLinesForCustLedgEntryPosting, OnBeforeCloseCustLedgerEntries, CheckIfROCustLedgEntryPostingEnabled, IsROFiscalizationEnabled | — |
| 6059942 | "NPR RS Audit Mgt." |  | OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnAfterInsertPOSEntry, OnIssueVoucherBeforeNpRvSalesLineModify, OnBeforeEndSale | — |
| 6185069 | "NPR RS Cust. Ledg. Post. Mgt." |  | OnBeforeInsertGenJournalLinesForCustLedgEntryPosting, OnBeforeCloseCustLedgerEntries, CheckIfRSCustLedgEntryPostingEnabled, IsRSFiscalizationEnabled | — |
| 6184794 | "NPR RS EI Communication Mgt." |  | ImportNewPurchaseInvoiceDocuments, GetPurchaseInvoice, RefreshPurchaseDocumentsStatus, GetPurchaseDocumentStatus, AcceptIncomingPurchaseDocument | — |
| 6184883 | "NPR RS EI In Purch. Inv. Mgt." |  | ProcessGetPurchaseInvoiceDocumentResponse, InsertPurchaseDocument, SetDocumentHeaderInfoOnRSEInvoiceDocument, InitializePurchaseHeaderDates, InitializeDocTypeOnPurhcHeader | — |
| 6184860 | "NPR RS E-Invoice Mgt." |  | OnClearCompanyConfig, IsRSEInvoiceEnabled, CheckJKBJSFormatValidity, CheckJMBGFormatValidity, Customer_OnAfterDeleteEvent | — |
| 6184888 | "NPR RSEI Out SalesCr.Memo Mgt." |  | CreateRequestAndSendSalesCrMemo, InsertInvoiceDocumentRec, InsertDataToSalesCrMemoAuxTable, CreateInvoiceXMLDocument, CreateXmlDocument | — |
| 6184793 | "NPR RS EI Out Sales Inv. Mgt." |  | CreateRequestAndSendSalesInvoice, InsertInvoiceDocumentRec, InsertDataToSalesInvAuxTable, CreateSalesInvoiceXMLDocument, CreatePrepaymentInvoiceXMLDocument | — |
| 6184934 | "NPR RS EOD Fiscal Print" |  | PrintEndOfDayReceipt, PrintThermalReceipt, PrintReceiptHeader, PrintEODPart, PrintSalespersonPart | — |
| 6059936 | "NPR RS Fiscal BG Comm. Batch" |  | — | — |
| 6059934 | "NPR RS Fiscal E-Mail Mgt." |  | SendFiscalBillViaEmail, SendFiscalBillViaEmail, CreateAndSendEmailMessage, CreateAttachments, CreateAttachment | — |
| 6059930 | "NPR RS Fiscal Preview Mgt." |  | SetContentOfFiscalBillPrivew, SetParametersFromRecord, AddHtmlReceiptCopyIfExists, AddHtmlReceiptOriginal, AddCurrentReceipt | — |
| 6150981 | "NPR RS Fiscal Thermal Print" |  | PrintReceipt, PrintReceipt, PrintThermalReceipt, PrintThermalReceipt, PrintDiscountNonFiscal | — |
| 6184976 | "NPR RS Monthly Fiscal Print" |  | PrintMonthlyStatistics, PrintReport, PrintReceiptHeader, PrintEODPart, PrintMonthlySalespersonPart | — |
| 6185003 | "NPR RS MstrData Aux Tables Mgt" |  | GetRSAuxSalesHeaderPosUnit, SetRSAuxSalesHeaderPosUnit, InitializeRSAuxSalesHeader | — |
| 6184939 | "NPR RS Report Statistics Mgt." |  | FindCashWorkshiftPaymentLines, FindPreviousZReport, FindFromEntryNo, CalcTaxAmounts, CalcSalespersonAmount | — |
| 6150982 | "NPR RS Tax Communication Mgt." |  | CreateNormalSale, CreateNormalSale, CreatePrepaymentSale, CreatePrepaymentRefund, CreateProformaSale | — |
| 6060010 | "NPR SAF-T Cash Export Check" |  | — | — |
| 6184504 | "NPR SAF-T Cash Export Mgt." |  | StartExport, DeleteExport, ThrowNoParallelExecutionNotification, RestartTaskOnExportLine, UpdateExportStatus | — |
| 6184523 | "NPR SAF-T Export Error Handler" |  | — | — |
| 6184524 | "NPR SAF-T XML Helper" |  | Initialize, SetNamespace, CreateRootWithNamespace, AddNewXMLNode, AppendXMLNode | — |
| 6184844 | "NPR SE CC Cash Reg. Audit Mgt." |  | InsertAuditLog_OnAfterDeleteItem, CreateAuditLogEntry, IsSECleanCashEnabled | — |
| 6184843 | "NPR SE CC Cash Reg. Exp. Mgt." |  | ExportCashRegisterJournalFile, DownloadExportFile, CreateXMLBaseDocument, CreateCashRegisterExportXml, AppendDesignatedCashRegWCompanyInfoSection | — |
| 6184868 | "NPR SE CC Report Stat. Mgt." |  | CalcTaxAmounts, CalcReturnTaxAmounts, CalcCopyAndPrintReceiptsQuantity, GetPOSAuditLogCount, SetFilterOnPOSEntry | — |
| 6184856 | "NPR SE CleanCash Fiscal Print" |  | PrintEndOfDayReceipt, PrintThermalReceipt, PrintReceiptHeader, PrintEODPart, PrintTotalsPart | — |
| 6184590 | "NPR SI Archive Mgt." |  | GenerateInvoiceArchive, AppendCustomerInfo, AppendCustomerInfo, GenerateInvoiceItemArchive, AppendPOSEntrySalesLineItemSale | — |
| 6151546 | "NPR SI Audit Mgt." |  | OnHandlePOSAuditProfileAdditionalSetup, OnLookupAuditHandler, OnHandleAuditLogBeforeInsert, OnBeforeRenamePOSStore, OnBeforeRenamePOSUnit | — |
| 6150672 | "NPR SI Fiscal E-Mail Mgt." |  | SendFiscalBillViaEmail, SendFiscalBillViaEmail, CreateAndSendEmailMessage, CreateAttachment, LogEmailSendingInfo | — |
| 6151588 | "NPR SI Fiscal Thermal Print" |  | PrintReceipt, PrintThermalReceipt, PrintHeader, PrintCollectInStorePOSEntryContent, PrintPOSEntryContent | — |
| 6248181 | "NPR SI MstrData Aux Table Mgt" |  | GetSIAuxSalesHeaderPosUnit, SetSIAuxSalesHeaderPosUnit, InitializeSIAuxSalesHeader | — |
| 6151587 | "NPR SI Tax Communication Mgt." |  | CreateNormalSale, CreateSaleDocument, CreatePreNumberedBookSaleDocument, AddTaxSection, AddPOSEntryTaxSection | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6184596 | "NPR AT Cash Registers" | AT Cash Registers | "NPR AT Cash Register" | — |
| 6184643 | "NPR AT Exp. Cash Reg. Filters" | Export Cash Register Filters | — | — |
| 6184578 | "NPR AT Fiscalization Setup" | AT Fiscalization Setup | "NPR AT Fiscalization Setup" | — |
| 6184583 | "NPR AT Organization Card" | AT Organization Card | "NPR AT Organization" | — |
| 6184584 | "NPR AT Organization List" | AT Organizations | "NPR AT Organization" | — |
| 6184638 | "NPR AT POS Audit Log Aux. Info" | AT POS Audit Log Aux. Info | "NPR AT POS Audit Log Aux. Info" | — |
| 6184633 | "NPR AT POS Payment Method Map" | AT POS Payment Method Mapping | "NPR AT POS Payment Method Map" | — |
| 6184589 | "NPR AT SCUs" | AT Signature Creation Units | "NPR AT SCU" | — |
| 6184632 | "NPR AT VAT Posting Setup Map" | AT VAT Posting Setup Mapping | "NPR AT VAT Posting Setup Map" | — |
| 6184739 | "NPR BE Fiscalisation Setup" | BE Fiscalization Setup | "NPR BE Fiscalisation Setup" | — |
| 6059874 | "NPR BE POS Audit Log Aux. Info" | BE POS Audit Log Aux. Info | "NPR BE POS Audit Log Aux. Info" | — |
| 6151269 | "NPR BG Fiscalization Setup" | BG Fiscalization Setup | "NPR BG Fiscalization Setup" | — |
| 6151268 | "NPR BG POS Audit Log Aux. Info" | BG POS Audit Log Aux. Info | "NPR BG POS Audit Log Aux. Info" | — |
| 6151316 | "NPR BG SIS POS Audit Log Aux." | BG SIS POS Audit Log Aux. Info | "NPR BG SIS POS Audit Log Aux." | — |
| 6151272 | "NPR BG SIS POS Paym. Meth. Map" | BG SIS POS Payment Method Mapping | "NPR BG SIS POS Paym. Meth. Map" | — |
| 6151281 | "NPR BG SIS POS Unit Mapping" | BG SIS POS Unit Mapping | "NPR BG SIS POS Unit Mapping" | — |
| 6151288 | "NPR BG SIS Return Reason Map" | BG SIS Return Reason Mapping | "NPR BG SIS Return Reason Map" | — |
| 6151273 | "NPR BG SIS VAT Post. Setup Map" | BG SIS VAT Posting Setup Mapping | "NPR BG SIS VAT Post. Setup Map" | — |
| 6014542 | "NPR CleanCash Response List" | CleanCash Response List | "NPR CleanCash Trans. Response" | — |
| 6184500 | "NPR CleanCash Setup List" | CleanCash POS Unit Setup | "NPR CleanCash Setup" | — |
| 6014543 | "NPR CleanCash Transaction Card" | CleanCash Transaction Card | "NPR CleanCash Trans. Request" | — |
| 6014603 | "NPR CleanCash Transactions" | CleanCash Transactions | "NPR CleanCash Trans. Request" | — |
| 6014599 | "NPR CleanCash Transaction VAT" | VAT Details | "NPR CleanCash Trans. VAT" | — |
| 6184924 | "NPR CRO Fiscal E-Mail Logs" | CRO Fiscal E-Mail Logs | "NPR CRO Fiscal E-Mail Log" | — |
| 6151214 | "NPR CRO Fiscalization Setup" | CRO Tax Fiscalization Setup | "NPR CRO Fiscalization Setup" | — |
| 6151303 | "NPR CRO Payment Method Mapping" | CRO Payment Method Mapping | "NPR CRO Payment Method Mapping" | — |
| 6151213 | "NPR CRO POS Aud. Log Aux. Info" | CRO POS Audit Log Aux. Info | "NPR CRO POS Aud. Log Aux. Info" | — |
| 6151183 | "NPR CRO POS Paym. Method Mapp." | CRO POS Payment Method Mapping | "NPR CRO POS Paym. Method Mapp." | — |
| 6248194 | "NPR CRO POS Store Mapping" | CRO POS Store Mapping | "NPR CRO POS Store Mapping" | — |
| 6014421 | "NPR DE Audit Setup" | DE Connection Parameter Set | "NPR DE Audit Setup" | — |
| 6059891 | "NPR DE Connection Param. Sets" | DE Connection Parameter Sets | "NPR DE Audit Setup" | — |
| 6150863 | "NPR DE Data Export Card" | DE Data Export Card | "NPR DE Data Export" | — |
| 6150889 | "NPR DE Data Exports" | DE Data Exports | "NPR DE Data Export" | — |
| 6184911 | "NPR DE Establishment" | DE Establishment | "NPR DE Establishment" | — |
| 6184910 | "NPR DE Establishments" | DE Establishments | "NPR DE Establishment" | — |
| 6184744 | "NPR DE Fiscalization Setup" | DE Fiscalization Setup | "NPR DE Fiscalization Setup" | — |
| 6150756 | "NPR DE Fiskaly TSS Clients" | DE Fiskaly TSS Clients | "NPR DE POS Unit Aux. Info" | — |
| 6014426 | "NPR DE POS Audit Log Aux. Info" | DE POS Audit Log | "NPR DE POS Audit Log Aux. Info" | — |
| 6014427 | "NPR DE POS Unit Aux. Info List" | DE Fiskaly TSS Clients | "NPR DE POS Unit Aux. Info" | — |
| 6184923 | "NPR DE Submissions" | DE Submissions | "NPR DE Submission" | — |
| 6184913 | "NPR DE TSS Client" | DE Fiskaly TSS Client | "NPR DE POS Unit Aux. Info" | — |
| 6059882 | "NPR DE TSS List" | DE Technical Security Systems | "NPR DE TSS" | — |
| 6151325 | "NPR DK Fiscalization Setup" | DK Fiscalization Setup | "NPR DK Fiscalization Setup" | — |
| 6151324 | "NPR DK POS Audit Log Aux. Info" | DK POS Audit Log Aux. Info | "NPR DK POS Audit Log Aux. Info" | — |
| 6151326 | "NPR DK SAF-T Cash Export Card" | SAF-T Cash Register Export | "NPR DK SAF-T Cash Exp. Header" | — |
| 6151327 | "NPR DK SAF-T Cash Exports" | SAF-T Cash Register Exports | "NPR DK SAF-T Cash Exp. Header" | — |
| 6151329 | "NPR DK SAF-T Cash Export Zips" | SAF-T Cash Register Export Zips | "NPR DK SAF-T Cash Export Zip" | — |
| 6151328 | "NPR DK SAF-T Cash Exp. Subpage" | SAF-T Cash Export Lines | "NPR DK SAF-T Cash Export Line" | — |
| 6014459 | "NPR DSFINVK Closing List" | DSFINVK Closing List | "NPR DSFINVK Closing" | — |
| 6184705 | "NPR ES Clients" | ES Clients | "NPR ES Client" | — |
| 6184588 | "NPR ES Fiscalization Setup" | ES Fiscalization Setup | "NPR ES Fiscalization Setup" | — |
| 6184716 | "NPR ES Invoice Recipient" | Invoice Recipient | — | — |
| 6184702 | "NPR ES Organization Card" | ES Organization Card | "NPR ES Organization" | — |
| 6184700 | "NPR ES Organization List" | ES Organizations | "NPR ES Organization" | — |
| 6184711 | "NPR ES POS Audit Log Aux. Info" | ES POS Audit Log Aux. Info | "NPR ES POS Audit Log Aux. Info" | — |
| 6184720 | "NPR ES Return Reason Mapping" | ES Return Reason Mapping | "NPR ES Return Reason Mapping" | — |
| 6184703 | "NPR ES Signers" | ES Signers | "NPR ES Signer" | — |
| 6184851 | "NPR FR Audit No. Series" | FR Audit No. Series | "NPR FR Audit No. Series" | — |
| 6184850 | "NPR FR Audit Setup" | FR Compliance Setup | "NPR FR Audit Setup" | — |
| 6060005 | "NPR FR POS Audit Log Add. Info" | FR POS Audit Log Add. Info | "NPR FR POS Audit Log Add. Info" | — |
| 6184852 | "NPR FR POS Audit Log Aux. Info" | FR POS Entry Aux. Info | "NPR FR POS Audit Log Aux. Info" | — |
| 6184953 | "NPR HU L Cash Mgt. Reasons" | HU Laurel Cash Mgt Reasons | "NPR HU L Cash Mgt. Reason" | — |
| 6184954 | "NPR HU L Cash Transactions" | HU Laurel Cash Transactions | "NPR HU L Cash Transaction" | — |
| 6184826 | "NPR HU L Fiscalization Setup" | HU Laurel Fiscalization Setup | "NPR HU L Fiscalization Setup" | — |
| 6184912 | "NPR HU L POS Audit Log Aux." | HU Laurel POS Audit Log Aux. Info | "NPR HU L POS Audit Log Aux." | — |
| 6184914 | "NPR HU L POS Paym. Meth. Mapp." | HU Laurel POS Payment Method Mapping | "NPR HU L POS Paym. Meth. Mapp." | — |
| 6185013 | "NPR HU L POS Unit Mapping" | HU Laurel POS Unit Mapping | "NPR HU L POS Unit Mapping" | — |
| 6184966 | "NPR HU L Return Reason Mapp." | HU Laurel Return Reason Mapping | "NPR HU L Return Reason Mapp." | — |
| 6184942 | "NPR HU L VAT Post. Setup Mapp." | HU Laurel VAT Posting Setup Mapping | "NPR HU L VAT Post. Setup Mapp." | — |
| 6151364 | "NPR HU MS Payment Method Map." | HU Payment Method Mapping | "NPR HU MS Payment Method Map." | — |
| 6184791 | "NPR IRL Fiscalization Setup" | IRL Fiscalization Setup | "NPR IRL Fiscalization Setup" | — |
| 6151312 | "NPR IT Fiscalization Setup" | IT Tax Fiscalization Setup | "NPR IT Fiscalization Setup" | — |
| 6151313 | "NPR IT POS Audit Log Aux Info" | IT POS Audit Log Aux. Info | "NPR IT POS Audit Log Aux Info" | — |
| 6151319 | "NPR IT POS Paym. Method Mapp." | IT POS Payment Method Mapping | "NPR IT POS Paym. Method Mapp." | — |
| 6151317 | "NPR IT POS Unit Mapping" | IT POS Unit Mapping | "NPR IT POS Unit Mapping" | — |
| 6151331 | "NPR IT VAT Department Codebook" | IT VAT Department Codebook | "NPR IT VAT Department Codebook" | — |
| 6151363 | "NPR MS HU Fiscalization Setup" | HU MultiSoft/NaviPartner EInvoice Setup | "NPR HU MS Fiscalization Setup" | — |
| 6151224 | "NPR NO Fiscalization Setup" | NO Tax Fiscalization Setup | "NPR NO Fiscalization Setup" | — |
| 6151226 | "NPR NO POS Audit Log Aux. Info" | NO POS Audit Log Aux. Info | "NPR NO POS Audit Log Aux. Info" | — |
| 6014433 | "NPR Payment Method Mapper" | Payment Method Mapper | "NPR Payment Method Mapper" | — |
| 6150673 | "NPR POS Audit Log" | POS Audit Log | "NPR POS Audit Log" | — |
| 6150626 | "NPR POS Audit Profile" | POS Audit Profile | "NPR POS Audit Profile" | — |
| 6150632 | "NPR POS Audit Profiles" | POS Audit Profiles | "NPR POS Audit Profile" | — |
| 6248726 | "NPR RO Fiscalisation Setup" | RO Fiscalization Setup | "NPR RO Fiscalisation Setup" | — |
| 6059906 | "NPR RS Allowed Tax Rates List" | RS Allowed Tax Rates List | "NPR RS Allowed Tax Rates" | — |
| 6184570 | "NPR RS EI Allowed UOM" | RS E-Invoice Allowed Units Of Measure | "NPR RS EI Allowed UOM" | — |
| 6184649 | "NPR RS EI Date Dialog" | Date Input | — | — |
| 6184661 | "NPR RS EI Doc. Tax Exemption" | RS E-Invoice Document Tax Exemption Reasons | "NPR RS EI Doc. Tax Exemption" | — |
| 6184547 | "NPR RS E-Invoice Documents" | RS E-Invoice Documents | "NPR RS E-Invoice Document" | — |
| 6184641 | "NPR RS E-Invoice Selection" | RS E-Invoice Selection | "NPR RS E-Invoice Document" | — |
| 6184546 | "NPR RS E-Invoice Setup" | RS E-Invoice Setup | "NPR RS E-Invoice Setup" | — |
| 6184572 | "NPR RS EI Payment Method Mapp." | RS E-Invoice Payment Method Mapping | "NPR RS EI Payment Method Mapp." | — |
| 6184585 | "NPR RS EI Tax Ex. Reasons" | RS E-Invoice Tax Exemption Reasons | "NPR RS EI Tax Exemption Reason" | — |
| 6184571 | "NPR RS EI UOM Mapping" | RS E-Invoice Units of Measure Mapping | "NPR RS EI UOM Mapping" | — |
| 6184660 | "NPR RS EI VAT Post. Setup Map." | RS E-Invoice VAT Posting Setup Mapping | "NPR RS EI VAT Post. Setup Map." | — |
| 6059909 | "NPR RS Fiscal A.Copy Privew FB" | RS Fiscal Bill Preview | "NPR RS POS Audit Log Aux. Copy" | — |
| 6150853 | "NPR RS Fiscal A.Info Privew FB" | RS Fiscal Bill Preview | "NPR RS POS Audit Log Aux. Info" | — |
| 6059911 | "NPR RS Fiscal App. Area Setup" | RS Fiscal Application Area Setup | "Application Area Setup" | — |
| 6150700 | "NPR RS Fiscal E-Mail Logs" | RS Fiscal E-Mail Logs | "NPR RS Fiscal E-Mail Log" | — |
| 6150854 | "NPR RS Fiscalisation Setup" | RS Tax Fiscalization Setup | "NPR RS Fiscalisation Setup" | — |
| 6150855 | "NPR RS Payment Method Mapping" | RS Payment Method Mapping | "NPR RS Payment Method Mapping" | — |
| 6059908 | "NPR RS POS Audit Log Aux. Copy" | RS POS Audit Log Aux. Copy | "NPR RS POS Audit Log Aux. Copy" | — |
| 6059907 | "NPR RS POS Audit Log Aux. Info" | RS POS Audit Log Aux. Info | "NPR RS POS Audit Log Aux. Info" | — |
| 6150856 | "NPR RS POS Paym. Meth. Mapping" | RS POS Payment Method Mapping | "NPR RS POS Paym. Meth. Mapping" | — |
| 6150715 | "NPR RS POS Unit Mapping" | RS POS Unit Mapping | "NPR RS POS Unit Mapping" | — |
| 6150721 | "NPR RS VAT Post. Setup Mapping" | RS VAT Posting Setup Mapping | "NPR RS VAT Post. Setup Mapping" | — |
| 6151282 | "NPR SAF-T Cash Export Card" | SAF-T Cash Register Export | "NPR SAF-T Cash Export Header" | — |
| 6150770 | "NPR SAF-T Cash Exports" | SAF-T Cash Register Exports | "NPR SAF-T Cash Export Header" | — |
| 6151280 | "NPR SAF-T Cash Export Subpage" | SAF-T Cash Export Lines | "NPR SAF-T Cash Export Line" | — |
| 6151283 | "NPR SAF-T Cash Export Zips" | SAF-T Cash Register Export Zips | "NPR SAF-T Cash Export Zip" | — |
| 6150826 | "NPR SE CC Cash Reg. Audit Log" | CleanCash Cash Register Audit Log | "NPR SE CC Cash Reg. Audit Log" | — |
| 6184577 | "NPR SE Fiscalization Setup" | SE CleanCash Fiscalisation Setup | "NPR SE Fiscalization Setup." | — |
| 6184893 | "NPR SI Fiscal E-Mail Logs" | SI Fiscal E-Mail Logs | "NPR SI Fiscal E-Mail Log" | — |
| 6150767 | "NPR SI Fiscalization Setup" | SI Tax Fiscalization Setup | "NPR SI Fiscalization Setup" | — |
| 6150768 | "NPR SI POS Audit Log Aux. Info" | SI POS Audit Log Aux. Info | "NPR SI POS Audit Log Aux. Info" | — |
| 6151297 | "NPR SI POS Store Mapping" | SI POS Store Mapping | "NPR SI POS Store Mapping" | — |
| 6184907 | "NPR SI Salesbook Receipt" | SI Salesbook Receipt | "NPR SI Salesbook Receipt" | — |
| 6014434 | "NPR VAT Prod Post Group Mapper" | VAT Posting Setup Mapper List | "NPR VAT Post. Group Mapper" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014682 | "NPR AT Audit Entry Type" | POS Entry | POS Entry, Control Transaction |
| 6014667 | "NPR AT Cash Register State" |   |  , CREATED, REGISTERED, INITIALIZED, DECOMMISSIONED, OUTAGE, DEFECTIVE |
| 6014665 | "NPR AT FON Auth. Status" |   |  , AUTHENTICATED, UNAUTHENTICATED, ERROR_UNSPECIFIED |
| 6014678 | "NPR AT FON Rcpt. Valid. Status" |   |  , SUCCESS, ERROR_UNSPECIFIED |
| 6014676 | "NPR AT Payment Type" |   |  , CASH, NON_CASH |
| 6014680 | "NPR AT Receipt Type" |   |  , NORMAL, CANCELLATION, TRAINING, INITIALIZATION, DECOMMISSION, MONTHLY_CLOSE, YEARLY_CLOSE |
| 6014666 | "NPR AT SCU State" |   |  , PENDING, CREATED, INITIALIZED, DECOMMISSIONED, OUTAGE, DEFECTIVE |
| 6014675 | "NPR AT VAT Rate" |   |  , STANDARD, REDUCED_1, REDUCED_2, SPECIAL, ZERO |
| 6014537 | "NPR BG Audit Entry Type" | POS Entry | POS Entry |
| 6014642 | "NPR BG SIS Cust. ID No. Type" | BG Company | BG Company, BG Physical Person, Foreign Company or Physical Person,   |
| 6014596 | "NPR BG SIS Payment Method" | Cash | Cash, Bank Transfer, Credit/Debit Card, Cheque, Internal Usage, Voucher, External Voucher, NHIT |
| 6014641 | "NPR BG SIS Printer Model" |   |  , MF-P1200DN 179, MF-TH250QR 100, MF-TH230QR 203, BULPRINT T2QR 143, BULPRINT T3QR 169 |
| 6014600 | "NPR BG SIS Return Reason" | Cashier Error | Cashier Error, Refund/Return, Wrong Price,   |
| 6014615 | "NPR BG SIS Transaction Type" |   |  , Sale, Refund |
| 6014597 | "NPR BG SIS VAT Category" | A Category (0%) | A Category, B Category, C Category, D Category,   |
| 6014402 | "NPR CC Transaction Status" | Pending | PENDING, FAILED, COMPLETE |
| 6014404 | "NPR CC Unit Stor. Stat." | OK | OK, WARNING, MEMORY, NO_VALUE |
| 6014406 | "NPR CleanCash Fault Code" | Unknown request | UnknownRequest, Invalid, NotOperational, InvalidPosId, InternalError, LicenseExceeded, MemoryFull, ServerInternalError |
| 6014401 | "NPR CleanCash Receipt Type" | Sales Receipt | normal, kopia, ovning, profo, NO_VALUE |
| 6014405 | "NPR CleanCash Request Type" | Not selected | NotSelected, IdentityRequest, StatusRequest, RegisterSalesReceipt, RegisterReturnReceipt |
| 6014403 | "NPR CleanCash Unit Main Status" | OK | OK, WARNING, PROTOCOL_ERROR, NON_FATAL_ERROR, FATAL_ERROR, BUSY, ERROR, NO_VALUE |
| 6014586 | "NPR CRO Audit Entry Type" | POS Entry | POS Entry, Sales Invoice, Sales Credit Memo |
| 6014619 | "NPR CRO Payment Method" | Ostalo | Other, Cash, Card, Check |
| 6014583 | "NPR CRO POS Payment Method" | Ostalo | Other, Cash, Card, Check |
| 6059841 | "NPR DE Client Type" |   |  , 1, 2, 3, 4, 5 |
| 6014562 | "NPR DE Export Exception" | DE Export Exception |  , E_UNEXPECTED, E_ID_NOT_FOUND, E_BAD_REQUEST, E_INTERNAL, E_TRANSACTION_ID_NOT_FOUND, E_NO_DATA_AVAILABLE, E_TOO_MANY_RECORDS |
| 6014690 | "NPR DE Export State" | DE Export State |  , CANCELLED, PENDING, WORKING, COMPLETED, ERROR |
| 6014502 | "NPR DE Fiskaly Payment Type" | DE Fiskaly Payment Type |  , CASH, NON_CASH |
| 6014500 | "NPR DE Fiskaly Receipt Type" | DE Fiskaly Receipt Type | Unknown, RECEIPT, TRAINING, TRANSFER, ORDER, CANCELLATION, ABORT, BENEFIT_IN_KIND |
| 6014499 | "NPR DE Fiskaly Trx. State" | DE Fiskaly Transaction State | Unknown, ACTIVE, FINISHED, CANCELLED |
| 6014501 | "NPR DE Fiskaly VAT Rate" | DE Fiskaly VAT Rate |  , NORMAL, REDUCED_1, SPECIAL_RATE_1, SPECIAL_RATE_2, NULL |
| 6059845 | "NPR DE Submission State" |   |  , CREATED, VALIDATION_TRIGGERED, INTERNAL_VALIDATION_FAILED, EXTERNAL_VALIDATION_FAILED, VALIDATION_SUCCEEDED, XML_GENERATION_SUCCEEDED, XML_GENERATION_FAILED |
| 6059832 | "NPR DE Taxpayer Legal Form" |   |  , 16, 20, 21, 22, 23, 24, 25 |
| 6059831 | "NPR DE Taxpayer Person Type" |   |  , natural, legal |
| 6059833 | "NPR DE Taxpayer Salutation" |   |  , 1, 2, 3 |
| 6014498 | "NPR DE TSS Client State" | DE TSS Client State | Unknown, REGISTERED, DEREGISTERED |
| 6014497 | "NPR DE TSS State" | DE TSS State | Unknown, CREATED, UNINITIALIZED, INITIALIZED, DISABLED, DELETED, DEFECTIVE |
| 6014590 | "NPR DK Audit Entry Type" | POS Entry | POS Entry |
| 6014591 | "NPR DK SAF-T Cash Exp. Status" | Not Started | Not Started, In Progress, Failed, Completed |
| 6014592 | "NPR DK SAF-T Data Check status" |   |  , Failed, Passed |
| 6014471 | "NPR DSFINVK Payment Type" | Bar | Bar, Unbar, ECKarte, Kreditkarte, ElZahlungsdienstleister, GuthabenKarte, Keine |
| 6014472 | "NPR DSFINVK State" |   |  , PENDING, WORKING, COMPLETED, CANCELLED, EXPIRED, DELETED, ERROR |
| 6059787 | "NPR ES Audit Entry Type" | POS Entry | POS Entry, Customer Information |
| 6059775 | "NPR ES Client State" |   |  , ENABLED, DISABLED |
| 6059780 | "NPR ES Inv. Cancellation State" |   |  , NOT_CANCELLED, PENDING, STORED, CANCELLED, REQUIRES_INSPECTION, INVALID |
| 6059786 | "NPR ES Inv. Correction Method" |   |  , SUBSTITUTION, DIFFERENCES |
| 6059785 | "NPR ES Invoice Item Concept" |   |  , NATIONAL_OR_SIMPLIFIED, INTERNATIONAL_GOOD, INTERNATIONAL_SERVICE |
| 6059778 | "NPR ES Invoice State" |   |  , ISSUED, CANCELLED, IMPORTED |
| 6059777 | "NPR ES Invoice Type" |   |  , SIMPLIFIED, COMPLETE, CORRECTING, ENRICHMENT, REMEDY, EXTERNAL |
| 6059781 | "NPR ES Inv. Rcpt. Id Type" |   |  , TAX_NUMBER, PASSPORT, DOCUMENT, CERTIFICATE, OTHER |
| 6059783 | "NPR ES Inv. Recipient Type" |   |  , National, International |
| 6059779 | "NPR ES Inv. Registration State" |   |  , PENDING, REGISTERED, REQUIRES_CORRECTION, REQUIRES_INSPECTION, STORED, INVALID |
| 6059788 | "NPR ES Return Reason" |   |  , CORRECTION_1, CORRECTION_2, CORRECTION_3, CORRECTION_4 |
| 6059773 | "NPR ES Signer State" |   |  , ENABLED, DISABLED, DEFECTIVE |
| 6059769 | "NPR ES Taxpayer Territory" |   |  , ARABA, BIZKAIA, GIPUZKOA, NAVARRE, CANARY_ISLANDS, CEUTA, MELILLA |
| 6059770 | "NPR ES Taxpayer Type" |   |  , COMPANY, INDIVIDUAL |
| 6014465 | "NPR Fiscalization Status" | Not Fiscalized | Not Fiscalized, Transaction Started, Fiscalized |
| 6059872 | "NPR HU L Audit Entry Type" | POS Entry | POS Entry |
| 6059861 | "NPR HU L Cash Mgt. Reason" | Change Pay-in | Change Pay-in, Cashier Pay-in, Fee Collection, Lottery Ticket Selling, Deposit, Cash Shortage, Tip, Other Pay-in |
| 6059859 | "NPR HU L Paym. Currency Type" | Ft. | Ft., EUR, Other (non-foreign), Foreign |
| 6059885 | "NPR HU L Payment Fiscal Type" | Cash | CASH, CREDIT/DEBIT, OTHER, ROUNDING, FOREIGN, EMPTY, CHANGE |
| 6059840 | "NPR HU L Paym. Fiscal Subtype" | Non-categorized | Non-categorized, National Voucher, Loan Card, Gift Card, Loyalty Card, Smartcard, Bottle deposit voucher, Coupon |
| 6059863 | "NPR HU L Return Reason Code" |  |  , V1, V2, V3, S1, S2, S3, S4 |
| 6059886 | "NPR HU L Transaction Type" |   |  , Standard Receipt, Return, Simple Invoice, Void |
| 6059871 | "NPR HU L Type of Payment" | Ft | Ft, EUR, Other Non-Foreign, Foreign |
| 6059857 | "NPR HU L VAT Index" | VAT Category A (5%) | VAT Category A, VAT Category B, VAT Category C, VAT Category D, VAT Category E |
| 6014616 | "NPR IT Audit Entry Type" | POS Entry | POS Entry |
| 6014621 | "NPR IT Payment Method" | Cash | 0, 1, 2, 3 |
| 6014627 | "NPR IT Printer Departments" | 01 | 1, 2, 3, 4, 5, 6, 7, 8 |
| 6014631 | "NPR IT Transaction Type" | Sale | SALE, REFUND |
| 6014587 | "NPR NO Audit Entry Type" | POS Entry | POS Entry |
| 6014550 | "NPR NO Gen. Info Output Type" | Total | Total, Per Salesperson |
| 6014658 | "NPR POS Audit Notification" |  | NPRRSFiscal, NPRCROFiscal, NPRSIFiscal, NPRBGSISFiscal, NPRITFiscal, NPRSEFiscal, NPRBEFiscal, NPRDKFiscal |
| 6014517 | "NPR RS Audit Entry Type" | POS Entry | POS Entry, Sales Header, Sales Invoice Header, Sales Cr.Memo Header |
| 6014527 | "NPR RS Customer Ident." |   |  , PIB, JMBG, PIB&JBKJS, Licna karta, Izbeglicka karta, EBS, Domaci Pasos |
| 6014695 | "NPR RS EI Allowed Tax Categ." |   |  , S, AE, Z, E, R, O, OE |
| 6014653 | "NPR RS EI Document Type" |   |  , Sales Invoice, Sales Cr. Memo, Purchase Invoice, Purchase Order, Purchase Cr. Memo |
| 6014698 | "NPR RS EI Invoice Type Code" | Commercial Invoice | 380, 381, 383, 386 |
| 6014654 | "NPR RS E-Invoice Status" |   |  , NEW, SEEN, RENOTIFIED, APPROVED, REJECTED, STORNO, DRAFT |
| 6014659 | "NPR RS EI Payment Means" | Cash | 10, 20, 30, 31, 42, 54, 55, 56 |
| 6014683 | "NPR RS EI Tax Liability Method" |   |  , 0, 3, 35, 432 |
| 6014524 | "NPR RS Fiscal Status" |   |  , Proforma Sales, Proforma Refund, Normal Sale, Normal Refund, Advance Sale, Advance Refund |
| 6014520 | "NPR RS Invoice Type" | Normal | NORMAL, ADVANCE, TRAINING, COPY, PROFORMA |
| 6014530 | "NPR RS Optional Cust. Ident." |   |  , SNPDV, LNPDV, PPO-PDV, ZPPO-PDV, MPPO-PDV, IPPO-PDV, Corporate |
| 6014525 | "NPR RS Payment Method" | Other | Other, Cash, Card, Check, WireTransfer, Voucher, MobileMoney |
| 6014531 | "NPR RS Pin Status Response" | SUCCESS | SUCCESS, PIN_WRONG, PIN_ENTRY_EXCEEDED, SMART_CARD_NOT_INSERTED, SECURE_ELEMENT_FAILURE, SDC_DEVICE_NOT_CONFIGURED_FOR_SIGN, ESDC_PIN_NOT_PASS |
| 6014529 | "NPR RS Report E-Mail Selection" | Fiscal Bill A4 | Fiscal Bill A4, Thermal printing receipt, Both |
| 6014523 | "NPR RS Transaction Type" | Sale | SALE, REFUND |
| 6014589 | "NPR SAF-T Cash Export Status" | Not Started | Not Started, In Progress, Failed, Completed |
| 6014588 | "NPR SAF-T Data Check status" |   |  , Failed, Passed |
| 6014672 | "NPR SE CC Audit Entry Type" | Item deleted | DELETE_ITEM |
| 6014533 | "NPR SI Audit Entry Type" | POS Entry | POS Entry, Sales Invoice Header, Sales Cr. Memo Header |
| 6014594 | "NPR SI Transaction Type" | Sale | Sale, Return |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR CleanCash XCCSP Interface" | CreateRequest, CreateRequest, GetRequestXml, SerializeResponse, AddToPrintBuffer |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014428 | "NPR NO Group Sales by Salespr." | NO Group Sales by Salesperson | — |
| 6014484 | "NPR NO POS Sale Line Sum" | NO POS Sale Line Sum | — |
| 6014468 | "NPR NO Sales By Item Category" | NO Sales By Item Category | — |
| 6014478 | "NPR RS Group Sales by Salespr." | RS Group Sales by Salesperson | — |
| 6014477 | "NPR RS Sales By Item Category" | RS Sales By Item Category | — |


## Reports

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014554 | "NPR CRO Fiscal Bill A4" | CRO Fiscal Bill A4 | — |
| 6014468 | "NPR NO Balacing A4 POS" | NO Balancing Report A4 POS | — |
| 6014539 | "NPR RS Monthly Report" | RS Monthly Report | — |
| 6014531 | "NPR SE CC Cash Register Export" | CleanCash Cash Register Export | — |
| 6014556 | "NPR SI Fiscal Bill A4" | SI Fiscal Bill A4 | — |
| 6014500 | "NPR SI Invoice Archive" | SI Archive Invoices | — |
| 6014501 | "NPR SI Invoice Item Archive" | SI Archive Item Invoices | — |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6184850 | "NPR FR Audit Archive" | FR Audit Archive | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: ATAuditEntryType.Enum.al, ATAuditMgt.Codeunit.al, ATCashRegister.Table.al, ATCashRegisters.Page.al, ATCashRegisterState.Enum.al, ATExpCashRegFilters.Page.al, ATFiscalizationSetup.Page.al, ATFiscalizationSetup.Table.al, ATFiscalThermalPrint.Codeunit.al, ATFiskalyCommunication.Codeunit.al, ATFiskalyJWT.Codeunit.al, ATFONAuthStatus.Enum.al, ATFONRcptValidStatus.Enum.al, ATImpOtherCtrlRcptJQ.Codeunit.al, ATOrganization.Table.al, ATOrganizationCard.Page.al, ATOrganizationList.Page.al, ATPaymentType.Enum.al, ATPOSAuditLogAuxInfo.Page.al, ATPOSAuditLogAuxInfo.Table.al, ATPOSPaymentMethodMap.Page.al, ATPOSPaymentMethodMap.Table.al, ATReceiptType.Enum.al, ATSCU.Table.al, ATSCUs.Page.al, ATSCUState.Enum.al, ATSecretMgt.Codeunit.al, ATValidateReceiptsJQ.Codeunit.al, ATVATPostingSetupMap.Page.al, ATVATPostingSetupMap.Table.al, ATVATRate.Enum.al, BEAuditMgt.Codeunit.al, BEFiscalisationSetup.Page.al, BEFiscalisationSetup.Table.al, BEFiscalSalesReceipt.Codeunit.al, BEPOSAuditLogAuxInfo.Page.al, BEPOSAuditLogAuxInfo.Table.al, BGAuditEntryType.Enum.al, BGFiscalizationSetup.Page.al, BGFiscalizationSetup.Table.al, BGPOSAuditLogAuxInfo.Page.al, BGPOSAuditLogAuxInfo.Table.al, BGSISAuditMgt.Codeunit.al, BGSISCommunicationMgt.Codeunit.al, BGSISCustIDNoType.Enum.al, BGSISPaymentMethod.Enum.al, BGSISPOSAuditLogAux.Page.al, BGSISPOSAuditLogAux.Table.al, BGSISPOSPaymMethMap.Page.al, BGSISPOSPaymMethMap.Table.al, BGSISPOSSale.Table.al, BGSISPOSUnitMapping.Page.al, BGSISPOSUnitMapping.Table.al, BGSISPrinterModel.Enum.al, BGSISReturnReason.Enum.al, BGSISReturnReasonMap.Page.al, BGSISReturnReasonMap.Table.al, BGSISTransactionType.Enum.al, BGSISVATCategory.Enum.al, BGSISVATPostSetupMap.Page.al, BGSISVATPostSetupMap.Table.al, CCTransactionStatus.Enum.al, CCUnitStorStat.Enum.al, CleanCashFaultCode.Enum.al, CleanCashIdentityMsg.Codeunit.al, CleanCashReceiptMsg.Codeunit.al, CleanCashReceiptType.Enum.al, CleanCashRequestType.Enum.al, CleanCashResponseList.Page.al, CleanCashSetup.Table.al, CleanCashSetupList.Page.al, CleanCashStatusMsg.Codeunit.al, CleanCashTransactionCard.Page.al, CleanCashTransactions.Page.al, CleanCashTransactionVAT.Page.al, CleanCashTransRequest.Table.al, CleanCashTransResponse.Table.al, CleanCashTransVAT.Table.al, CleanCashUnitMainStatus.Enum.al, CleanCashWrapper.Codeunit.al, CleanCashXCCSPInterface.Interface.al, CleanCashXCCSPProtocol.Codeunit.al, ComplianceFiscalMgt.Codeunit.al, CreateCleanCashOnSale.Codeunit.al, CreateDeFiskalyonSale.Codeunit.al, CROAuditEntryType.Enum.al, CROAuditMgt.Codeunit.al, CROAuditSendMail.Codeunit.al, CROAuxSalesCrMemoHdr.Table.al, CROAuxSalesHeader.Table.al, CROAuxSalesInvHeader.Table.al, CROAuxSalespersonPurch.Table.al, CROCustLedgPostMgt.Codeunit.al, CROFiscalBillA4.Report.al, CROFiscalEMailLog.Table.al, CROFiscalEMailLogs.Page.al, CROFiscalEMailMgt.Codeunit.al, CROFiscalizationSetup.Page.al, CROFiscalizationSetup.Table.al, CROFiscalThermalPrint.Codeunit.al, CROMstrDataAuxTableMgt.Codeunit.al, CROPaymentMethod.Enum.al, CROPaymentMethodMapping.Page.al, CROPaymentMethodMapping.Table.al, CROPOSAudLogAuxInfo.Page.al, CROPOSAudLogAuxInfo.Table.al, CROPOSPaymentMethod.Enum.al, CROPOSPaymMethodMapp.Page.al, CROPOSPaymMethodMapp.Table.al, CROPOSSale.Table.al, CROPOSStoreMapping.Page.al, CROPOSStoreMapping.Table.al, CROTaxCommunicationMgt.Codeunit.al, DEAuditMgt.Codeunit.al, DEAuditSetup.Page.al, DEAuditSetup.Table.al, DEAuditSetupNotifier.Codeunit.al, DEClientType.Enum.al, DEConnectionParamSets.Page.al, DEDataExport.Table.al, DEDataExportCard.Page.al, DEDataExports.Page.al, DEEstablishment.Page.al, DEEstablishment.Table.al, DEEstablishments.Page.al, DEExportException.Enum.al, DEExportState.Enum.al, DEFiscalizationSetup.Page.al, DEFiscalizationSetup.Table.al, DEFiscalThermalPrint.Codeunit.al, DEFiskalyCommunication.Codeunit.al, DEFiskalyDSFINVK.Codeunit.al, DEFiskalyDSFINVKJob.Codeunit.al, DEFiskalyJob.Codeunit.al, DEFiskalyPaymentType.Enum.al, DEFiskalyReceiptType.Enum.al, DEFiskalyTrxState.Enum.al, DEFiskalyTSSClients.Page.al, DEFiskalyVATRate.Enum.al, DEPOSAuditLogAuxInfo.Page.al, DEPOSAuditLogAuxInfo.Table.al, DEPOSUnitAuxInfo.Table.al, DEPOSUnitAuxInfoList.Page.al, DESecretMgt.Codeunit.al, DESubmission.Table.al, DESubmissions.Page.al, DESubmissionState.Enum.al, DETaxpayerLegalForm.Enum.al, DETaxpayerPersonType.Enum.al, DETaxpayerSalutation.Enum.al, DETSS.Table.al, DETSSClient.Page.al, DETSSClientState.Enum.al, DETSSList.Page.al, DETSSState.Enum.al, DKAuditEntryType.Enum.al, DKAuditMgt.Codeunit.al, DKFiscalizationSetup.Page.al, DKFiscalizationSetup.Table.al, DKGenSAFTCashFile.Codeunit.al, DKPOSAuditLogAuxInfo.Page.al, DKPOSAuditLogAuxInfo.Table.al, DKRegenAuditSignat.Codeunit.al, DKSAFTCashExpHeader.Table.al, DKSAFTCashExportCard.Page.al, DKSAFTCashExportCheck.Codeunit.al, DKSAFTCashExportFile.Table.al, DKSAFTCashExportLine.Table.al, DKSAFTCashExportMgt.Codeunit.al, DKSAFTCashExports.Page.al, DKSAFTCashExportZip.Table.al, DKSAFTCashExportZips.Page.al, DKSAFTCashExpStatus.Enum.al, DKSAFTCashExpSubpage.Page.al, DKSAFTDataCheckstatus.Enum.al, DKSAFTExpErrHandler.Codeunit.al, DKSAFTXMLHelper.Codeunit.al, DSFINVKClosing.Table.al, DSFINVKClosingList.Page.al, DSFINVKPaymentType.Enum.al, DSFINVKState.Enum.al, ESAuditEntryType.Enum.al, ESAuditMgt.Codeunit.al, ESClient.Table.al, ESClients.Page.al, ESClientState.Enum.al, ESFiscalizationSetup.Page.al, ESFiscalizationSetup.Table.al, ESFiscalThermalPrint.Codeunit.al, ESFiskalyCommunication.Codeunit.al, ESFiskalyJWT.Codeunit.al, ESInvCancellationState.Enum.al, ESInvCorrectionMethod.Enum.al, ESInvoiceItemConcept.Enum.al, ESInvoiceRecipient.Page.al, ESInvoiceState.Enum.al, ESInvoiceType.Enum.al, ESInvRcptIdType.Enum.al, ESInvRecipientType.Enum.al, ESInvRegistrationState.Enum.al, ESOrganization.Table.al, ESOrganizationCard.Page.al, ESOrganizationList.Page.al, ESPOSAuditLogAuxInfo.Page.al, ESPOSAuditLogAuxInfo.Table.al, ESRetrievePendingInvJQ.Codeunit.al, ESRetrieveSoftwareJQ.Codeunit.al, ESReturnReason.Enum.al, ESReturnReasonMapping.Page.al, ESReturnReasonMapping.Table.al, ESSecretMgt.Codeunit.al, ESSigner.Table.al, ESSigners.Page.al, ESSignerState.Enum.al, ESTaxpayerTerritory.Enum.al, ESTaxpayerType.Enum.al, FiscalizationStatus.Enum.al, FiskalyJWT.Codeunit.al, FRAuditArchive.XmlPort.al, FRAuditArchWorkshifts.Codeunit.al, FRAuditMgt.Codeunit.al, FRAuditNoSeries.Page.al, FRAuditNoSeries.Table.al, FRAuditSetup.Page.al, FRAuditSetup.Table.al, FRAuditSubscribers.Codeunit.al, FRPOSAuditLogAddInfo.Page.al, FRPOSAuditLogAddInfo.Table.al, FRPOSAuditLogAuxInfo.Page.al, FRPOSAuditLogAuxInfo.Table.al, FRSetupCheck.Codeunit.al, GenerateSAFTCashFile.Codeunit.al, HULAuditEntryType.Enum.al, HULAuditMgt.Codeunit.al, HULCashMgtReason.Enum.al, HULCashMgtReason.Table.al, HULCashMgtReasons.Page.al, HULCashTransaction.Table.al, HULCashTransactions.Page.al, HULCommunicationMgt.Codeunit.al, HULFiscalizationSetup.Page.al, HULFiscalizationSetup.Table.al, HULPaymCurrencyType.Enum.al, HULPaymentFiscalType.Enum.al, HULPaymFiscalSubtype.Enum.al, HULPOSAuditLogAux.Page.al, HULPOSAuditLogAux.Table.al, HULPOSPaymMethMapp.Page.al, HULPOSPaymMethMapp.Table.al, HULPOSSale.Table.al, HULPOSUnitMapping.Page.al, HULPOSUnitMapping.Table.al, HULReturnReasonCode.Enum.al, HULReturnReasonMapp.Page.al, HULReturnReasonMapp.Table.al, HULTransactionType.Enum.al, HULTypeofPayment.Enum.al, HULVATIndex.Enum.al, HULVATPostSetupMapp.Page.al, HULVATPostSetupMapp.Table.al, HUMSAuditMgt.Codeunit.al, HUMSFiscalizationSetup.Table.al, HUMSPaymentMethodMap.Page.al, HUMSPaymentMethodMap.Table.al, IRLAuditMgt.Codeunit.al, IRLFiscalizationSetup.Page.al, IRLFiscalizationSetup.Table.al, ITAuditEntryType.Enum.al, ITAuditMgt.Codeunit.al, ITAuxCustomer.Table.al, ITFiscalizationSetup.Page.al, ITFiscalizationSetup.Table.al, ITPaymentMethod.Enum.al, ITPOSAuditLogAuxInfo.Page.al, ITPOSAuditLogAuxInfo.Table.al, ITPOSPaymMethodMapp.Page.al, ITPOSPaymMethodMapp.Table.al, ITPOSSale.Table.al, ITPOSUnitMapping.Page.al, ITPOSUnitMapping.Table.al, ITPrinterDepartments.Enum.al, ITPrinterMgt.Codeunit.al, ITTransactionType.Enum.al, ITVATDepartmentCodebook.Page.al, ITVATDepartmentCodebook.Table.al, KSAAuditMgt.Codeunit.al, MSHUFiscalizationSetup.Page.al, NOAuditEntryType.Enum.al, NOAuditMgt.Codeunit.al, NOBalacingA4POS.Report.al, NOEoDReportStatistics.Codeunit.al, NOFiscalizationSetup.Page.al, NOFiscalizationSetup.Table.al, NOFiscalThermalPrint.Codeunit.al, NOGenInfoOutputType.Enum.al, NOGroupSalesbySalespr.Query.al, NOPOSAuditLogAuxInfo.Page.al, NOPOSAuditLogAuxInfo.Table.al, NOPOSSaleLineSum.Query.al, NORegenAuditSignat.Codeunit.al, NOReportStatisticsMgt.Codeunit.al, NOSalesByItemCategory.Query.al, PaymentMethodMapper.Page.al, PaymentMethodMapper.Table.al, POSActionATAuditLkp.Codeunit.al, POSActionATAuditLkpB.Codeunit.al, POSActionBGSISAudit.Codeunit.al, POSActionBGSISAuditB.Codeunit.al, POSActionBGSISCashier.Codeunit.al, POSActionBGSISCashierB.Codeunit.al, POSActionBGSISCashMgt.Codeunit.al, POSActionBGSISCashMgtB.Codeunit.al, POSActionBGSISEJExp.Codeunit.al, POSActionBGSISEJExpB.Codeunit.al, POSActionBGSISEJRepr.Codeunit.al, POSActionBGSISEJReprB.Codeunit.al, POSActionBGSISFPMgt.Codeunit.al, POSActionBGSISFPMgtB.Codeunit.al, POSActionBGSISPrFM.Codeunit.al, POSActionBGSISPrFMB.Codeunit.al, POSActionBGSISReprFR.Codeunit.al, POSActionBGSISReprFRB.Codeunit.al, POSActionBGSISReturn.Codeunit.al, POSActionCROAuditLkp.Codeunit.al, POSActionCROAuditLkpB.Codeunit.al, POSActionCROParagonIns.Codeunit.al, POSActionDEDataExport.Codeunit.al, POSActionESAuditLkp.Codeunit.al, POSActionESAuditLkpB.Codeunit.al, POSActionESShowRespDcl.Codeunit.al, POSActionHULCashMgt.Codeunit.al, POSActionHULCashMgtB.Codeunit.al, POSActionHULFPDisplay.Codeunit.al, POSActionHULFPMgt.Codeunit.al, POSActionHULFPMgtB.Codeunit.al, POSActionHULInsRefSale.Codeunit.al, POSActionHULReceipt.Codeunit.al, POSActionHULReceiptB.Codeunit.al, POSActionHULResetFP.Codeunit.al, POSActionInsAddCustF.Codeunit.al, POSActionInsertCustId.Codeunit.al, POSActionInsRefSale.Codeunit.al, POSActionITEJReport.Codeunit.al, POSActionITEJReportB.Codeunit.al, POSActionITFPCashMgt.Codeunit.al, POSActionITFPMgt.Codeunit.al, POSActionITFPMgtB.Codeunit.al, POSActionITInLottery.Codeunit.al, POSActionNOPrintCopy.Codeunit.al, POSActionNOPrintCopyB.Codeunit.al, POSActionRSAuditLkpB.Codeunit.al, POSActionRSAuditLookUp.Codeunit.al, POSActionSIAuditLkp.Codeunit.al, POSActionSIAuditLkpB.Codeunit.al, POSActionSIInsRetSale.Codeunit.al, POSActionSIPreInvIns.Codeunit.al, POSActionSIPreInvInsB.Codeunit.al, POSAuditLog.Page.al, POSAuditLog.Table.al, POSAuditLogMgt.Codeunit.al, POSAuditLogVerify.Codeunit.al, POSAuditNotification.Enum.al, POSAuditProfile.Page.al, POSAuditProfile.Table.al, POSAuditProfileNotifier.Codeunit.al, POSAuditProfiles.Page.al, RetailLocalizationMgt.Codeunit.al, ROAuditMgt.Codeunit.al, ROCustLedgPostMgt.Codeunit.al, ROFiscalisationSetup.Page.al, ROFiscalisationSetup.Table.al, RSAllowedTaxRates.Table.al, RSAllowedTaxRatesList.Page.al, RSAuditEntryType.Enum.al, RSAuditMgt.Codeunit.al, RSAuxSalesCrMemoHeader.Table.al, RSAuxSalesHeader.Table.al, RSAuxSalesInvHeader.Table.al, RSCustLedgPostMgt.Codeunit.al, RSCustomerIdent.Enum.al, RSEIAllowedTaxCateg.Enum.al, RSEIAllowedUOM.Page.al, RSEIAllowedUOM.Table.al, RSEIAuxCompanyInfo.Table.al, RSEIAuxCustomer.Table.al, RSEIAuxPurchCrMemHdr.Table.al, RSEIAuxPurchHeader.Table.al, RSEIAuxPurchInvHdr.Table.al, RSEIAuxSalesCrMemoHdr.Table.al, RSEIAuxSalesHeader.Table.al, RSEIAuxSalesInvHdr.Table.al, RSEICommunicationMgt.Codeunit.al, RSEIDateDialog.Page.al, RSEIDocTaxExemption.Page.al, RSEIDocTaxExemption.Table.al, RSEIDocumentType.Enum.al, RSEIInPurchInvMgt.Codeunit.al, RSEIInvoiceTypeCode.Enum.al, RSEInvoiceDocument.Table.al, RSEInvoiceDocuments.Page.al, RSEInvoiceMgt.Codeunit.al, RSEInvoiceSelection.Page.al, RSEInvoiceSetup.Page.al, RSEInvoiceSetup.Table.al, RSEInvoiceStatus.Enum.al, RSEIOutSalesCrMemoMgt.Codeunit.al, RSEIOutSalesInvMgt.Codeunit.al, RSEIPaymentMeans.Enum.al, RSEIPaymentMethodMapp.Page.al, RSEIPaymentMethodMapp.Table.al, RSEITaxExemptionReason.Table.al, RSEITaxExReasons.Page.al, RSEITaxLiabilityMethod.Enum.al, RSEIUOMMapping.Page.al, RSEIUOMMapping.Table.al, RSEIVATPostSetupMap.Page.al, RSEIVATPostSetupMap.Table.al, RSEODFiscalPrint.Codeunit.al, RSFiscalACopyPrivewFB.Page.al, RSFiscalAInfoPrivewFB.Page.al, RSFiscalAppAreaSetup.Page.al, RSFiscalBGCommBatch.Codeunit.al, RSFiscalEMailLog.Table.al, RSFiscalEMailLogs.Page.al, RSFiscalEMailMgt.Codeunit.al, RSFiscalisationSetup.Page.al, RSFiscalisationSetup.Table.al, RSFiscalPreviewMgt.Codeunit.al, RSFiscalStatus.Enum.al, RSFiscalThermalPrint.Codeunit.al, RSGroupSalesbySalespr.Query.al, RSInvoiceType.Enum.al, RSMonthlyFiscalPrint.Codeunit.al, RSMonthlyReport.Report.al, RSMstrDataAuxTablesMgt.Codeunit.al, RSOptionalCustIdent.Enum.al, RSPaymentMethod.Enum.al, RSPaymentMethodMapping.Page.al, RSPaymentMethodMapping.Table.al, RSPinStatusResponse.Enum.al, RSPOSAuditLogAuxCopy.Page.al, RSPOSAuditLogAuxCopy.Table.al, RSPOSAuditLogAuxInfo.Page.al, RSPOSAuditLogAuxInfo.Table.al, RSPOSPaymMethMapping.Page.al, RSPOSPaymMethMapping.Table.al, RSPOSSale.Table.al, RSPOSUnitMapping.Page.al, RSPOSUnitMapping.Table.al, RSReportEMailSelection.Enum.al, RSReportStatisticsMgt.Codeunit.al, RSSalesByItemCategory.Query.al, RSTaxCommunicationMgt.Codeunit.al, RSTransactionType.Enum.al, RSVATPostSetupMapping.Page.al, RSVATPostSetupMapping.Table.al, SAFTCashExportCard.Page.al, SAFTCashExportCheck.Codeunit.al, SAFTCashExportFile.Table.al, SAFTCashExportHeader.Table.al, SAFTCashExportLine.Table.al, SAFTCashExportMgt.Codeunit.al, SAFTCashExports.Page.al, SAFTCashExportStatus.Enum.al, SAFTCashExportSubpage.Page.al, SAFTCashExportZip.Table.al, SAFTCashExportZips.Page.al, SAFTDataCheckstatus.Enum.al, SAFTExportErrorHandler.Codeunit.al, SAFTXMLHelper.Codeunit.al, SECCAuditEntryType.Enum.al, SECCCashRegAuditLog.Page.al, SECCCashRegAuditLog.Table.al, SECCCashRegAuditMgt.Codeunit.al, SECCCashRegExpMgt.Codeunit.al, SECCCashRegisterExport.Report.al, SECCReportStatMgt.Codeunit.al, SECleanCashFiscalPrint.Codeunit.al, SEFiscalizationSetup.Page.al, SEFiscalizationSetup.Table.al, SIArchiveMgt.Codeunit.al, SIAuditEntryType.Enum.al, SIAuditMgt.Codeunit.al, SIAuxSalesCrMemoHeader.Table.al, SIAuxSalesHeader.Table.al, SIAuxSalesInvHeader.Table.al, SIAuxSalespersonPurch.Table.al, SIFiscalBillA4.Report.al, SIFiscalEMailLog.Table.al, SIFiscalEMailLogs.Page.al, SIFiscalEMailMgt.Codeunit.al, SIFiscalizationSetup.Page.al, SIFiscalizationSetup.Table.al, SIFiscalThermalPrint.Codeunit.al, SIInvoiceArchive.Report.al, SIInvoiceItemArchive.Report.al, SIMstrDataAuxTableMgt.Codeunit.al, SIPOSAuditLogAuxInfo.Page.al, SIPOSAuditLogAuxInfo.Table.al, SIPOSSale.Table.al, SIPOSStoreMapping.Page.al, SIPOSStoreMapping.Table.al, SISalesbookReceipt.Page.al, SISalesbookReceipt.Table.al, SITaxCommunicationMgt.Codeunit.al, SITransactionType.Enum.al, VATPostGroupMapper.Table.al, VATPostingGroupMapper.Table.al, VATProdPostGroupMapper.Page.al
