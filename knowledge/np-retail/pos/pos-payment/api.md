---
type: reference
tags: [pos, pos-payment, np-retail, tables, codeunits, pages, enums, interfaces, xmlports, permissionsets]
relates:
  - pos/pos-payment/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/AdyenAcqEMailReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/AdyenAcqPhoneNoReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/DataCollection/AdyenDataCollection.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/AdyenQRCodeShowReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Management/AdyenStoreAPI.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/MposTapToPay/AdyenTTPStatus.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/APICloud/APIPOSEFTAdyenCloud.Codeunit.al
  - Application/src/POS Payment/EFT/BIN Matching/BINMatchingUpgrade.Codeunit.al
  - Application/src/POS Payment/EFT/CreditCardProtHelper.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/DataCollection/_public/DataCollectStep.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/3cXml/EFT3cXmlProtocol.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenAbortAcqTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenAbortAcquireReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenAbortMgmt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenAbortTrxReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenAbortTrxTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenAbortUnfinTrx.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenAcqCardTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Enums/EFTAdyenAuxOperation.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenBackgndResp.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenBgdLookupReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenBndTrxReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/MposTapToPay/Requests/EFTAdyenBoardingToken.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenCardAcquireReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenCloudInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/EFTAdyenCloudIntegrat.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenCloudProt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/EFTAdyenCloudProtocol.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenCloudSignDia.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenCloudTrxDia.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenConfInputReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenContractMgmt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenDiagnoseReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenDisableCtrctReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenFeatureFlag.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/hardwareConnector/EFTAdyenHWCIntegrat.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenIntegration.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Local/EFTAdyenLocalIntegrat.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Local/EFTAdyenLocalTrxStatus.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Local/EFTAdyenLocalUnitSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Local/EFTAdyenLocalUnitSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenLookupReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenLookupTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/MposLan/EFTAdyenMposLanInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenPaymTypeSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenPaymTypeSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Enums/EFTAdyenRequestType.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenResponseHandler.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenResponseParser.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Enums/EFTAdyenResponseType.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/EFTAdyenRespParser.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenSetupCheckTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenShowQRCodeTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenSignatureBuffer.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenSignatureReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenSubsConfTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/_public/EFTAdyenTaskEvents.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/EFTAdyenTaskStatus.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenTextInputReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenTrxRequest.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/EFTAdyenTrxTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/MposTapToPay/EFTAdyenTTPInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenUnitSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/EFTAdyenUnitSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Requests/EFTAdyenVoidReq.Codeunit.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTAIDMapping.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTAIDMappingList.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTAidRidMapping.Table.al
  - Application/src/POS Payment/EFT/Core/EFTAuxiliaryOperations.Page.al
  - Application/src/POS Payment/EFT/Core/EFTAuxOperation.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINGroup.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINGroupCard.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINGroupList.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBinGroupPaymentLink.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINGroupPaymentLinks.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINGroupPaymLink.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINGroupPaymLinks.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINImport.XmlPort.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINRange.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINRanges.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTBINRangeSubPage.Page.al
  - Application/src/POS Payment/EFT/BIN Matching/_public/EFTCardDetection.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/DataCollection/_public/EFTDataCollectTaskStatus.Enum.al
  - Application/src/POS Payment/EFT/Integrations/External Terminal/EFTExternalTerminalPaymSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/External Terminal/EFTExternalTerminalPaymSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/External Terminal/EFTExtTerminalInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTFrameworkMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Core/_public/EFTIntegrationType.Table.al
  - Application/src/POS Payment/EFT/Core/EFTIntegrationTypes.Page.al
  - Application/src/POS Payment/EFT/Core/EFTInterface.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Loyalty Points/EFTLoyaltyPointsProtocol.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Mock Clientside/EFTMockClientInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Mock Clientside/EFTMockClientProt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS BAXI/EFTNETSBAXIIntegration.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS BAXI/EFTNETSBAXIPaymSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/NETS BAXI/EFTNETSBAXIPaymSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/NETS BAXI/EFTNETSBAXIProtocol.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS BAXI/EFTNETSBAXIRespPars.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/BackgroundTasks/EFTNETSCloudAbortTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudBgReq.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudBgResp.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudIntegrat.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/BackgroundTasks/EFTNETSCloudLookupTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudPaymSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudPaymSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudPOSUnitSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudProtocol.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudRespParser.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudToken.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudTrxDialog.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/Enums/EFTNETSCloudTrxStatus.Enum.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/BackgroundTasks/EFTNETSCloudTrxTask.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/EFTNETSCloudUnitSetup.Table.al
  - Application/src/POS Payment/EFT/BIN Matching/EFTPaymentMapping.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTPaymentParamSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/BackgroundTasks/EFTPlanetPAXAbort.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Setup/EFTPlanetPAXConfig.Table.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Setup/EFTPlanetPAXConfigCard.Page.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Setup/EFTPlanetPAXConfigList.Page.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/EFTPlanetPAXInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Setup/EFTPlanetPAXIntegConfig.Page.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Setup/EFTPlanetPAXIntegConfig.Table.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/EFTPlanetPAXLog.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Enums/EFTPlanetPAXLogLvl.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/3cXml/EFTPlanetPAXRequest.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/3cXml/EFTPlanetPAXResponse.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/EFTPlanetPAXState.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Enums/EFTPlanetPAXStatus.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/BackgroundTasks/EFTPlanetPAXTrx.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Enums/EFTPlanetPAXType.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/3cXml/EFTPlanetPAXUtil.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTPOSUnitParamSetup.Page.al
  - Application/src/POS Payment/EFT/Core/EFTReceipt.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTRecMatchScoreLine.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTRecMatchScoreMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconBankAmount.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconBankAmounts.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconciliation.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconciliation.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconciliationList.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconciliationMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconLine.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconLines.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconMatchCard.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconMatching.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconMatchLines.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconMatchList.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconMatchScore.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconProvider.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconProviderCard.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconProviderList.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconSubscriber.Table.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconSubscribers.Page.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconTellerAMEX.Codeunit.al
  - Application/src/POS Payment/EFT/Reconciliation/EFTReconTransList.Page.al
  - Application/src/POS Payment/EFT/Core/EFTRequestMechanism.Enum.al
  - Application/src/POS Payment/EFT/Core/EFTSetup.Page.al
  - Application/src/POS Payment/EFT/Core/_public/EFTSetup.Table.al
  - Application/src/POS Payment/EFT/Core/EFTShopperRecognition.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTShopperRecognition.Page.al
  - Application/src/POS Payment/EFT/Core/EFTShopperRecognition.Table.al
  - Application/src/POS Payment/EFT/Integrations/Mock Serverside (Test Framework)/EFTTestMockIntegrat.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTTransactionLog.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTransactionMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Core/_public/EFTTransactionPubMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTTransactionRequest.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTransactionRequests.Page.al
  - Application/src/POS Payment/EFT/Core/EFTTransactReqComment.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTrRqCommentSubform.Page.al
  - Application/src/POS Payment/EFT/Core/EFTTrxAsyncReq.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTrxAsyncResp.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTrxBgdSessionMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTTrxLogFactbox.Page.al
  - Application/src/POS Payment/EFT/Core/EFTTrxLoggingMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTTryAddShopper.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTTryPrintReceipt.Codeunit.al
  - Application/src/POS Payment/EFT/Core/EFTTypePayGenParam.Page.al
  - Application/src/POS Payment/EFT/Core/_public/EFTTypePayGenParam.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTypePaymBLOBParam.Page.al
  - Application/src/POS Payment/EFT/Core/EFTTypePaymBLOBParam.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTypePOSUnitBLOBParam.Page.al
  - Application/src/POS Payment/EFT/Core/EFTTypePOSUnitBLOBParam.Table.al
  - Application/src/POS Payment/EFT/Core/EFTTypePOSUnitGenParam.Page.al
  - Application/src/POS Payment/EFT/Core/EFTTypePOSUnitGenParam.Table.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifonePaymParam.Page.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifonePaymParam.Table.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifoneUnitParam.Page.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifoneUnitParam.Table.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifoneVimInteg.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifoneVimProt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Verifone VIM/EFTVerifoneVimRespParse.Codeunit.al
  - Application/src/POS Payment/EndOfDay/EndOfDayWorker.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/Tasks/GenericDataCollectTask.Codeunit.al
  - Application/src/POS Payment/NullPaymentHandler.Codeunit.al
  - Application/src/POS Payment/Pay-in_Payout/PayinPayoutMgr.Codeunit.al
  - Application/src/POS Payment/_public/PaymentProcessingEvents.Codeunit.al
  - Application/src/POS Payment/_public/PaymentProcessingType.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/AzureFunction/PlanetProxy.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/AdyenAcqCardDetails/POSActionAdyenAcqDet.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/MposLan/POSActionAdyenMposLan.Codeunit.al
  - Application/src/POS Payment/Cash/POSActionCashPayment.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/DataCollection/POSActionDataCollection.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/DataCollection/POSActionDataCollectionB.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Cloud/POSActionEFTAdyenCloud.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/hardwareConnector/POSActionEFTAdyenHWC.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Local/POSActionEFTAdyenLocal.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/MposTapToPay/POSActionEFTAdyenTTP.Codeunit.al
  - Application/src/POS Payment/EFT/GiftCard/POSActionEFTGiftCard2.Codeunit.al
  - Application/src/POS Payment/EFT/GiftCard/POSActionEFTGiftCardB.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Loyalty Points/POSActionEFTMMLoyalty.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Mock Clientside/POSActionEFTMock.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS BAXI/Actions/POSActionEFTNetsBaxi.Codeunit.al
  - Application/src/POS Payment/EFT/Core/GenericActions/Operations/POSActionEFTOp2.Codeunit.al
  - Application/src/POS Payment/EFT/Core/GenericActions/Operations/POSActionEFTOp2Bus.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Planet PAX/Actions/POSActionEFTPlanetPAX.Codeunit.al
  - Application/src/POS Payment/EFT/Core/GenericActions/Transaction/POSActionEFTTrx.Codeunit.al
  - Application/src/POS Payment/EndOfDay/POSActionEndOfDayv4.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/External Terminal/POSActionExtTerminal.Codeunit.al
  - Application/src/POS Payment/ForeignVoucher/POSActionForeignVoucher.Codeunit.al
  - Application/src/POS Payment/ForeignVoucher/POSActionForeignVoucherB.Codeunit.al
  - Application/src/POS Payment/EFT/Core/GenericActions/AuxOp/POSActionHWCGenAux.Codeunit.al
  - Application/src/POS Payment/EFT/Core/GenericActions/Close/POSActionHWCGenClose.Codeunit.al
  - Application/src/POS Payment/EFT/Core/GenericActions/Open/POSActionHWCGenOpen.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/NETS Cloud/Actions/POSActionNetsCloudTrx.Codeunit.al
  - Application/src/POS Payment/Pay-in_Payout/POSActionPayinPayout.Codeunit.al
  - Application/src/POS Payment/POSActionPaymentWF2.Codeunit.al
  - Application/src/POS Payment/POSActionPaymentWF2BL.Codeunit.al
  - Application/src/POS Payment/Check/POSActionPaymentWithCheck.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/ShowQRCode/POSActionShowQRCode.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Common/Actions/ShowQRCode/POSActionShowQRCodeB.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Adyen/Legacy/POSActionSSAdyen.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Actions/POSActionVippsMp.Codeunit.al
  - Application/src/POS Payment/Voucher/POSActionVoucherPayment.Codeunit.al
  - Application/src/POS Payment/Check/POSActPaymentWithCheckB.Codeunit.al
  - Application/src/POS Payment/_public/POSIPaymentWFHandler.Interface.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Api/VippsMpAccessTokenAPI.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Api/VippsMpePaymentAPI.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Webhook/VippsMpHMAC.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/VippsMpIntegration.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/VippsMpLog.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Enums/VippsMpLogLvl.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Api/VippsMpMgtAPI.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/VippsMpMigration.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/VippsMpPaymentSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/VippsMpPaymentSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Api/VippsMpQRAPI.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/QrCallback/VippsMpQrCallback.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/QrCallback/VippsMpQrCallback.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/QrCallback/VippsMpQrCallbackList.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/VippsMpQrMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/VippsMpResponseHandler.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/VippsMpSetupState.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Store/VippsMpStore.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Store/VippsMpStore.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Store/VippsMpStoreList.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Enums/VippsMpTrxState.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/VippsMpUnitSetup.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/VippsMpUnitSetup.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Webhook/VippsMpUserPass.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Webhook/VippsMpUserPass.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/VippsMpUtil.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/VippsMpWebhook.PermissionSet.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Webhook/VippsMpWebhook.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Api/VippsMpWebhookAPI.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Enums/VippsMpWebhookEvents.Enum.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Webhook/VippsMpWebhookList.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Webhook/VippsMpWebhookMgt.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Webhook/VippsMpWebhookMsg.Page.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Webhook/VippsMpWebhookMsg.Table.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Setup/Webhook/VippsMpWebhookSetup.Codeunit.al
  - Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/Protocol/Webhook/_public/VippsMpWebService.Codeunit.al
---

# POS Payment — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6150691 | "NPR EFT Adyen Local Unit Setup" | EFT Adyen Local POS Unit Setup | — | — |
| 6184508 | "NPR EFT Adyen Paym. Type Setup" | EFT Adyen Payment Type Setup | "Payment Type POS" | — |
| 6150913 | "NPR EFT Adyen Unit Setup" | EFT Adyen Unit Setup | "POS Unit No." | — |
| 6059783 | "NPR EFT AID Mapping" | EFT Application ID Mapping | "ApplicationID" | — |
| 6059792 | "NPR EFT Aid Rid Mapping" | EFT Application ID Mapping | "AID" | — |
| 6184505 | "NPR EFT Aux Operation" | EFT Aux Operation | "Integration Type", "Auxiliary ID" | — |
| 6184511 | "NPR EFT BIN Group" | EFT Mapping Group | "Code" | — |
| 6151276 | "NPR EFT BIN Group Payment Link" | EFT Mapping Group Payment Link | "Group Code", "Location Code", "From Payment Type POS" | — |
| 6184512 | "NPR EFT BIN Group Paym. Link" | EFT Mapping Group Payment Link | "Group Code", "Location Code" | — |
| 6184510 | "NPR EFT BIN Range" | EFT BIN Range | "BIN from", "BIN to", "BIN Group Code" | — |
| 6184520 | "NPR EFT Ext. Term. Paym. Setup" | EFT External Terminal Payment Setup | "Payment Type POS" | — |
| 6184486 | "NPR EFT Integration Type" | EFT Integration Type | "Code" | — |
| 6184518 | "NPR EFT NETS BAXI Paym. Setup" | EFT NETS BAXI Payment Setup | "Payment Type POS" | — |
| 6184517 | "NPR EFT NETS Cloud Paym. Setup" | EFT NETS Cloud Payment Setup | "Payment Type POS" | — |
| 6184519 | "NPR EFT NETSCloud Unit Setup" | EFT NETS Cloud POS Unit Setup | "POS Unit No." | — |
| 6060077 | "NPR EFT Planet PAX Config" | Planet Pax Config | "Register No." | — |
| 6150740 | "NPR EFT Planet Integ. Config" | Planet Pax Integration Config | — | — |
| 6014403 | "NPR EFT Receipt" | EFT Receipt | "Register No.", "Sales Ticket No.", "Entry No." | — |
| 6014630 | "NPR EFT Rec. Match/Score Line" | EFT Recon. Match/Score Line | Type, "Provider Code", ID, LineType, "Line No." | — |
| 6014615 | "NPR EFT Recon. Bank Amount" | EFT Recon. Bank Amount | "Reconciliation No.", "Application Account ID" | — |
| 6014616 | "NPR EFT Reconciliation" | EFT Reconciliation | "No." | — |
| 6014617 | "NPR EFT Recon. Line" | EFT Reconciliation Line | "Reconciliation No.", "Line No." | — |
| 6014619 | "NPR EFT Recon. Match/Score" | EFT Recon. Match/Score | Type, "Provider Code", ID | — |
| 6014622 | "NPR EFT Recon. Provider" | EFT Recon. Provider | "Code" | — |
| 6014629 | "NPR EFT Recon. Subscriber" | EFT Recon. Subscriber | "Provider Code", Type, "Subscriber Codeunit ID", "Subscriber Function" | — |
| 6184485 | "NPR EFT Setup" | EFT Setup | "Payment Type POS", "POS Unit No." | — |
| 6184507 | "NPR EFT Shopper Recognition" | EFT Shopper Recognition | "Integration Type", "Shopper Reference" | — |
| 6184513 | "NPR EFT Transaction Log" | EFT Transaction Logs | "Transaction Entry No.", "Log Entry No." | — |
| 6184495 | "NPR EFT Transaction Request" | EFT Transaction Request | "Entry No." | — |
| 6184496 | "NPR EFT Transact. Req. Comment" | EFT Transact. Req. Comment | "Entry No.", "Line No." | — |
| 6184516 | "NPR EFT Trx Async Req." | EFT Transaction Async Request | "Request Entry No" | — |
| 6184506 | "NPR EFT Trx Async Resp." | EFT Transaction Async Response | "Request Entry No" | — |
| 6184483 | "NPR EFT Type Pay. Gen. Param." | EFT Type Payment Gen. Param. | "Integration Type", "Payment Type POS", Name | — |
| 6184481 | "NPR EFTType Paym. BLOB Param." | EFT Type Payment BLOB Param. | "Integration Type", "Payment Type POS", Name | — |
| 6184482 | "NPR EFTType POSUnit BLOBParam." | EFT Type POS Unit BLOB Param. | "Integration Type", "POS Unit No.", Name | — |
| 6184484 | "NPR EFTType POSUnit Gen.Param." | EFT Type POS Unit Gen. Param. | "Integration Type", "POS Unit No.", Name | — |
| 6184514 | "NPR EFT Verifone Paym. Param." | EFT Verifone Payment Parameter | "Payment Type POS" | — |
| 6184515 | "NPR EFT Verifone Unit Param." | EFT Verifone Unit Parameter | "POS Unit" | — |
| 6150755 | "NPR Vipps Mp Payment Setup" | Vipps MobilePay Integration Config | — | — |
| 6150771 | "NPR Vipps Mp QrCallback" | Merchant QR Id | "Merchant Qr Id" | — |
| 6150781 | "NPR Vipps Mp Store" | Vipps Mobilepay Store | — | — |
| 6150754 | "NPR Vipps Mp Unit Setup" | Vipps Mobilepay Unit Configuration | "POS Unit No." | — |
| 6150780 | "NPR Vipps Mp UserPass" | Config Name | — | — |
| 6150773 | "NPR Vipps Mp Webhook" | Webhook Reference | "Webhook Reference" | — |
| 6150770 | "NPR Vipps Mp Webhook Msg" | Message | "Webhook Reference", "Operation Reference", "Event Type" | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6248335 | "NPR EFT Adyen Acq EMail Req." |  | GetRequestJson | — |
| 6150742 | "NPR Adyen Acq Phone No Req." |  | GetRequestJson | — |
| 6150746 | "NPR Adyen Data Collection" |  | RequestAdditionalInfo | — |
| 6248477 | "NPR Adyen QRCode Show Req." |  | GetRequestJson | — |
| 6185001 | "NPR Adyen Store API" |  | GetMerchantStoresIdAndNames, GetMerchantStores | — |
| 6151089 | "NPR API POS EFT Adyen Cloud" |  | PrepareEFTPayment, BuildEFTRequest, ParseEFTResponse, StartEFTPayment, PollEFTStatus | — |
| 6248651 | "NPR BINMatching Upgrade" |  | UpgradeEFTBinGroupPaymentLinks | — |
| 6014527 | "NPR Credit Card Prot. Helper" |  | FindPaymentType, CutCardPan, MatchEFTBINRange, FindPaymentType, MatchEFTBINRange | — |
| 6151605 | "NPR 3cXml Protocol" |  | PreparePlanetPaxEftRequest, SendRequest, HandleEftResponse | — |
| 6184616 | "NPR EFT Adyen Abort Acq. Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6184596 | "NPR EFT Adyen AbortAcquire Req" |  | GetRequestJson, GetRequestJson | — |
| 6184636 | "NPR EFT Adyen Abort Mgmt" |  | CreateAbortTransactionRequest, CreateAbortDataCollectionTransactionRequest, CreateAbortAcquireCardRequest, CanAbortLastUnfinishedTrx, GetLastTransaction | — |
| 6184595 | "NPR EFT Adyen AbortTrx Req" |  | GetRequestJson, GetRequestJson, BuildRequestJson, GetMessageCategory, GetMessageCategoryFromProcessedRequest | — |
| 6184615 | "NPR EFT Adyen Abort Trx Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled, GetEftTransactionRequest | — |
| 6184531 | "NPR EFT Adyen Abort Unfin. Trx" |  | — | — |
| 6184614 | "NPR EFT Adyen Acq.Card Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6184522 | "NPR EFT Adyen Backgnd. Resp." |  | — | — |
| 6184530 | "NPR EFT Adyen Bgd. Lookup Req." |  | — | — |
| 6184521 | "NPR EFT Adyen Bnd. Trx Req." |  | — | — |
| 6184995 | "NPR EFT Adyen Boarding Token" |  | RequestBoardingToken, GetBoardingUrl | — |
| 6184592 | "NPR EFT Adyen CardAcquire Req" |  | GetRequestJson, GetRequestJson | — |
| 6184517 | "NPR EFT Adyen Cloud Integ." |  | — | — |
| 6184607 | "NPR EFT Adyen Cloud Integrat." |  | IntegrationType, OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6184518 | "NPR EFT Adyen Cloud Prot." |  | — | — |
| 6184600 | "NPR EFT Adyen Cloud Protocol" |  | InvokeAPI, AppendRequestResponseBuffer, ClearLogBuffers, GetLogBuffer, GetTerminalURL | — |
| 6184520 | "NPR EFT Adyen Cloud Sign Dia." |  | — | — |
| 6184519 | "NPR EFT Adyen Cloud Trx Dia." |  | — | — |
| 6185058 | "NPR EFT Adyen ConfInput Req" |  | GetRequestJson, SetTitle, SetTextQst | — |
| 6184612 | "NPR EFT Adyen Contract Mgmt." |  | DisableRecurringContract | — |
| 6184598 | "NPR EFT Adyen Diagnose Req" |  | GetRequestJson | — |
| 6184599 | "NPR EFT Adyen DisableCtrct Req" |  | GetRequestJson | — |
| 6184644 | "NPR EFT Adyen Feature Flag" |  | — | — |
| 6248277 | "NPR EFT Adyen HWC Integrat." |  | IntegrationType, OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6184639 | "NPR EFT Adyen Integration" |  | CloudIntegrationType, HWCIntegrationType, MposTapToPayIntegrationType, MposLanIntegrationType, OnCreatePaymentOfGoodsRequest | — |
| 6184640 | "NPR EFT Adyen Local Integrat." |  | IntegrationType, OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6184597 | "NPR EFT Adyen Lookup Req" |  | GetRequestJson | — |
| 6184613 | "NPR EFT Adyen Lookup Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6185000 | "NPR EFT Adyen Mpos Lan Integ." |  | IntegrationType, OnDiscoverIntegrations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6184611 | "NPR EFT Adyen Response Handler" |  | ProcessResponse, EndPaymentTransaction, EndRefundTransaction, EndVoidTransaction, EndLookupTransaction | — |
| 6184605 | "NPR EFT Adyen Response Parser" |  | RunParser, SetResponseData, ParsePaymentTransactionAsLookup, ParsePaymentTransaction, ParseVoidTransaction | — |
| 6184529 | "NPR EFT Adyen Resp. Parser" |  | — | — |
| 6184642 | "NPR EFT Adyen Setup Check Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6151112 | "NPR EFT Adyen Show QRCode Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled, MarkRequestCompleted | — |
| 6184591 | "NPR EFT Adyen Signature Buffer" |  | SetSignatureData, GetSignatureData | — |
| 6248386 | "NPR EFT Adyen Signature Req." |  | GetRequestJson | — |
| 6185084 | "NPR EFT Adyen Subs Conf Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled, CalcSubscriptionAmountIncludingVAT | — |
| 6248592 | "NPR EFT Adyen Task Events" |  | OnBeforeEFTAdyenSubsConfirmationDialogTextSet | OnBeforeEFTAdyenSubsConfirmationDialogTextSet |
| 6185074 | "NPR EFT Adyen Text Input Req" |  | GetRequestJson, SetTitle, SetDefaultInput, SetMaskChararctersFlag | — |
| 6184589 | "NPR EFT Adyen Trx Request" |  | GetRequestJson, GetSaleToAcquirerData, GetLinkedCardAcquisition | — |
| 6184588 | "NPR EFT Adyen Trx Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6184884 | "NPR EFT Adyen TTP Integ." |  | IntegrationType, OnDiscoverIntegrations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6184594 | "NPR EFT Adyen Void Req" |  | GetRequestJson, GetRequestJson | — |
| 6185112 | "NPR EFT Card Detection" |  | DetectBIN, DetectBIN, DetectApplicationID, DetectApplicationID | — |
| 6184630 | "NPR EFT Ext. Terminal Integ." |  | IntegrationType, OnDiscoverIntegrations, OnConfigureIntegrationPaymentSetup, GetPaymentTypeParameters, GetCardDigitsParameter | — |
| 6184499 | "NPR EFT Framework Mgt." |  | CreateBeginWorkshiftRequest, CreateEndWorkshiftRequest, CreatePaymentOfGoodsRequest, CreateRefundRequest, CreateVoidRequest | — |
| 6184479 | "NPR EFT Interface" |  | OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup, OnCreateBeginWorkshiftRequest | OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup |
| 6184741 | "NPR EFT LoyaltyPointsProtocol" |  | CreateHwcEftDeviceRequest, PaymentTransaction, VoidTransaction, HandleDeviceResponse, HandleResponse | — |
| 6184511 | "NPR EFT Mock Client Integ." |  | IntegrationType, OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6184512 | "NPR EFT Mock Client Prot." |  | IntegrationType, HwcIntegrationName, CreateHwcEftDeviceRequest, PaymentTransaction, OpenTerminal | — |
| 6184540 | "NPR EFT NETS BAXI Integration" |  | IntegrationType, OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationPaymentSetup, OnCreatePaymentOfGoodsRequest | — |
| 6184541 | "NPR EFT NETS BAXI Protocol" |  | ConstructHwcRequest, PaymentTransaction, RefundTransaction, DepositTransaction, VoidTransaction | — |
| 6184542 | "NPR EFT NETS BAXI Resp. Pars." |  | ParseResponse, SetResponse, TryGetEftTransactionEntryNo, ParseOpenResponse, ParseCloseResponse | — |
| 6059907 | "NPR EFT NETS Cloud Abort Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6184536 | "NPR EFT NETSCloud Bg. Req." |  | — | — |
| 6184537 | "NPR EFT NETSCloud Bg. Resp." |  | — | — |
| 6184532 | "NPR EFT NETSCloud Integrat." |  | IntegrationType, OnDiscoverIntegrations, OnDiscoverAuxiliaryOperations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup | — |
| 6059892 | "NPR EFT NETS Cloud Lookup Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6184534 | "NPR EFT NETSCloud Protocol" |  | ProcessRequestSynchronously, Reconciliation, EndPaymentTransaction, EndRefundTransaction, EndGiftCardLoadTransaction | — |
| 6184538 | "NPR EFT NETSCloud Resp. Parser" |  | RunParser, SetResponseData, ParseTransaction, ParseTransactionResult, ParseTransactionFailure | — |
| 6184533 | "NPR EFT NETSCloud Token" |  | SetToken, TryGetToken, GetTokenExpiration | — |
| 6184535 | "NPR EFT NETSCloud Trx Dialog" |  | — | — |
| 6059893 | "NPR EFT NETS Cloud Trx Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6184510 | "NPR EFT Payment Mapping" |  | FindPaymentType, MatchBIN, MatchApplicationID, MatchIssuerID, MatchBIN | — |
| 6184635 | "NPR EFT Planet PAX Abort" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6150840 | "NPR EFT Planet PAX Integ" |  | IntegrationType, OnDiscoverIntegrations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup, OnCreatePaymentOfGoodsRequest | — |
| 6150942 | "NPR EFT Planet PAX Logger" |  | Log, Log | — |
| 6150844 | "NPR EFT Planet PAX Req." |  | PaymentRequest, RefundRequest, PaymentReversalRequest, RefundReversalRequest, LookupRequest | — |
| 6150940 | "NPR EFT Planet PAX Response" |  | HandleEftPaymentResponse, HandleEftRefundResponse, HandleEftLookupResponse, HandleEftVoidResponse, HandleAbortResponse | — |
| 6150932 | "NPR EFT Planet Pax State" |  | SetEftReqStatus, SetEftReqStatus, AddEftReqResponse, AddEftReqResponse, AddEftReqRequest | — |
| 6150878 | "NPR EFT Planet PAX Trx" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6150949 | "NPR EFT Planet PAX Util." |  | BigTextToText, GenTimeStamp, SelectSingleElement, GetTextValue, GetXmlNodeTxtValueOrDefault | — |
| 6014668 | "NPR EFT Rec. Match/Score Mgt." |  | TestFilterLine, FindBestScore, AddToScore, FitsAdditionalScoreFilter, HandleMatchSetup | — |
| 6014671 | "NPR EFT Reconciliation Mgt." |  | ImportReconciliationFile, MatchReconciliation, PostReconciliation, PostBankTransfer, InitJournalLine | — |
| 6014667 | "NPR EFT Recon. Teller / AMEX" |  | ImportFile, ImportStream, HandleLineType110, HandleLineType120, HandleLineType200 | — |
| 6184507 | "NPR EFT Shopper Recognition" |  | GetShopperReference, CreateShopperReference, GetShopperReferenceWorker, CreateShopperReferenceWorker | — |
| 6184543 | "NPR EFT Test Mock Integrat." |  | IntegrationType, OnDiscoverAuxiliaryOperations, OnCreatePaymentOfGoodsRequest, OnCreateGiftcardLoadRequest, OnCreateLookupTransactionRequest | — |
| 6184473 | "NPR EFT Transaction Mgt." |  | PreparePayment, PrepareVoid, PrepareReferencedRefund, PrepareLookup, PrepareBeginWorkshift | — |
| 6060021 | "NPR EFT Transaction Pub. Mgt." |  | GetEFTReceiptText, GetEFTReceiptText, GetEFTExternalCustomerId, GetEFTExternalTransactionId | — |
| 6184506 | "NPR EFT Trx Bgd. Session Mgt" |  | CreateRequestRecord, IsRequestDone, IsRequestAbortAttempted, IsRequestOutdated, MarkRequestAsDone | — |
| 6184505 | "NPR EFT Trx Logging Mgt." |  | WriteLogEntry | — |
| 6184508 | "NPR EFT Try Add Shopper" |  | — | — |
| 6184509 | "NPR EFT Try Print Receipt" |  | — | — |
| 6184526 | "NPR EFT Verifone Vim Integ." |  | — | — |
| 6184527 | "NPR EFT Verifone Vim Prot." |  | — | — |
| 6184528 | "NPR EFT VerifoneVim Resp.Parse" |  | — | — |
| 6059860 | "NPR End Of Day Worker" |  | ValidateRequirements, CalculateEndOfDay, SwitchView, CreateReport, CloseSlaveUnits | — |
| 6150750 | "NPR Generic Data Collect Task" |  | ExecuteBackgroundTask, BackgroundTaskSuccessContinuation, BackgroundTaskErrorContinuation, BackgroundTaskCancelled | — |
| 6059795 | "NPR Null PaymentHandler" |  | GetPaymentHandler | — |
| 6059790 | "NPR Pay-in Payout Mgr" |  | CreatePayInOutPayment | — |
| 6151042 | "NPR Payment Processing Events" |  | OnAddPreWorkflowsToRun, OnAddPostWorkflowsToRun, OnAfterCalculateSuggestionPaymentAmount, OnBeforeAddAmountPromptLblToResponse, InvokeOnPaymentView | OnAddPreWorkflowsToRun, OnAddPostWorkflowsToRun, OnAfterCalculateSuggestionPaymentAmount |
| 6184651 | "NPR AF Planet Proxy" |  | FunctionAppVersion, RunPlanetPaymentProxy, GetAFHttpClient | — |
| 6248232 | "NPR POS Action Adyen AcqDet" |  | Register, RunWorkflow, AcquireCard, GetCardDetails, GetActionScript | — |
| 6184999 | "NPR POS Action Adyen Mpos Lan" |  | Register, RunWorkflow, PrepareTerminalApiRequest, ParseTerminalResponse, OnError | — |
| 6059793 | "NPR POS Action: Cash Payment" |  | Register, RunWorkflow, GetPaymentHandler, CapturePayment, CapturePayment | — |
| 6248387 | "NPR POS Action Data Collection" |  | Register, RunWorkflow, CollectData, PollResponse, ProcessSignatureRequest | — |
| 6150804 | "NPR POS Action DataCollectionB" |  | RequestSignature, RequestPhoneNo, RequestEMail, ContinueAfterDataCollectionVerification, ShouldProceedToTransactionAfterDataStepCollectConfirmation | — |
| 6184608 | "NPR POS Action EFT Adyen Cloud" |  | Register, RunWorkflow, PollResponse, StartTransaction, ProcessAcquireCardResponse | — |
| 6248280 | "NPR POS Action EFT Adyen HWC" |  | Register, RunWorkflow, TransactionDone, ProcessResult, BuildSignatureVoidRequest | — |
| 6184637 | "NPR POS Action EFT Adyen Local" |  | Register, RunWorkflow, GetActionScript | — |
| 6184885 | "NPR POS Action EFT Adyen TTP" |  | Register, RunWorkflow, PrepareRequest, GetBoardingToken, PrepareAdyenRequest | — |
| 6059884 | "NPR POS Action: EFTGiftCard 2" |  | Register, RunWorkflow, OnLookupParameter, OnValidateParameter, GetActionJavascript | — |
| 6059883 | "NPR POS Action: EFTGiftCard B." |  | PrepareGiftCardLoad, InsertVoucherDiscountLine | — |
| 6184742 | "NPR POS Action EFT MM Loyalty" |  | Register, RunWorkflow, PrepareRequest, MakeRequest, ProcessResult | — |
| 6059794 | "NPR POS Action: EFT Mock" |  | Register, RunWorkflow, ProcessResult, GetActionScript | — |
| 6059954 | "NPR POS Action: EFT Nets Baxi" |  | Register, RunWorkflow, GetJavascript | — |
| 6059799 | "NPR POS Action: EFT Op 2" |  | Register, RunWorkflow, PrepareRequest, DoLegacyEftOperation, OnParameterLookup | — |
| 6059894 | "NPR POS Action: EFT Op 2 Bus." |  | StartBeginWorkshift, StartEndWorkshift, VoidLastTransaction, VoidList, StartVerifySetup | — |
| 6150841 | "NPR POS Action: EFT Planet PAX" |  | Register, RunWorkflow, StartTransaction, AbortTransaction, PollTransaction | — |
| 6184474 | "NPR POS Action: EFT Trx" |  | Register, RunWorkflow, GetPaymentHandler, PrepareRequest, GetActionScript | — |
| 6014600 | "NPR POS Action: EndOfDay V4" |  | Register, RunWorkflow, GetActionScript | — |
| 6184632 | "NPR POS Action Ext.Terminal" |  | Register, RunWorkflow, ProcessResult, GetActionScript | — |
| 6059939 | "NPR POSAction ForeignVoucher" |  | GetPaymentHandler, Register, RunWorkflow, CapturePayment, GetActionScript | — |
| 6151054 | "NPR POSAction ForeignVoucher B" |  | CapturePayment, ValidateExternalVoucher, ApplyForeignVoucherToPaymentLine | — |
| 6059788 | "NPR POS Action HWC Gen. Aux" |  | Register, RunWorkflow, ProcessResult, GetActionScript | — |
| 6059787 | "NPR POS Action HWC Gen. Close" |  | Register, RunWorkflow, ProcessResult, GetActionScript | — |
| 6059797 | "NPR POS Action HWC Gen. Open" |  | Register, RunWorkflow, ProcessResult, GetActionScript | — |
| 6059906 | "NPR POS Action: NetsCloud Trx" |  | Register, RunWorkflow, PollResponse, StartTransaction, StartLookup | — |
| 6059789 | "NPR POS Action Pay-in Payout" |  | Register, RunWorkflow, SelectAccount, SelectReason, HandlePayment | — |
| 6059796 | "NPR POS Action: Payment WF2" |  | Register, RunWorkflow, PreparePaymentWithPreprocessing, PreparePaymentAndDetectPostprocessing, HasExternalPostprocessingSubscribers | — |
| 6059778 | "NPR POS Action: Payment WF2 BL" |  | PrepareForPayment, PrepareForPayment, AttemptEndCurrentSale, CheckMMPaymentMethodAssigned, IsEFTSubscriptionPayment | — |
| 6059938 | "NPR POSAction PaymentWithCheck" |  | GetPaymentHandler, Register, RunWorkflow, CapturePayment, PrepareWorkflow | — |
| 6151113 | "NPR POS Action Show QRCode" |  | Register, RunWorkflow, ShowQRCodeOnTerminal, GetActionScript | — |
| 6151114 | "NPR POS Action Show QRCode B" |  | RequestShowQRCode, CreateAuxRequest, InitGenericRequest, GetQRCodeSetup | — |
| 6184544 | "NPR POS Action - SS Adyen" |  | — | — |
| 6184693 | "NPR POS Action: Vipps Mp" |  | Register, RunWorkflow, BeginWaitCustomer, WaitCustomerCheckin, CreateTransaction | — |
| 6059935 | "NPR POSAction VoucherPayment" |  | GetPaymentHandler, Register, RunWorkflow, GetActionScript | — |
| 6151064 | "NPR POSAct PaymentWithCheck B" |  | CapturePayment | — |
| 6184709 | "NPR Vipps Mp AccessToken API" |  | ClearCachedAccessTokens, SetCachedAccessToken, GetAccessToken, GetAccessToken, GetAccessToken | — |
| 6184699 | "NPR Vipps Mp ePayment API" |  | CreatePayment_StaticQRFlow, CapturePayment, RefundPayment, CancelPayment, GetPayment | — |
| 6184730 | "NPR Vipps Mp HMAC" |  | VerifyHMAC, VerifyContent, VerifySignature | — |
| 6184692 | "NPR Vipps Mp Integration" |  | IntegrationType, OnDiscoverIntegrations, OnConfigureIntegrationUnitSetup, OnConfigureIntegrationPaymentSetup, OnCreatePaymentOfGoodsRequest | — |
| 6184756 | "NPR Vipps Mp Log" |  | Log, Log, Log, Log | — |
| 6184721 | "NPR Vipps Mp Mgt. API" |  | GetMerchantMsn, GetMerchantPartner, GetMerchant, GetSalesUnitsMsn, GetSalesUnitsPartner | — |
| 6184763 | "NPR Vipps Mp Migration" |  | — | — |
| 6184715 | "NPR Vipps Mp QR API" |  | GetMerchantCallBackQrInfo, GetAllMerchantCallBackQrInfo, GetAllMerchantCallBackQRs, GetMerchantCallBackQRById, CreateOrUpdateCallbackQr | — |
| 6184740 | "NPR Vipps Mp Qr Mgt." |  | CreateQRBarcodeUI, CreateQRBarcode, RemoveQrBarcode, RefreshQrBarcodes, ListAll | — |
| 6184765 | "NPR Vipps Mp Response Handler" |  | AbortRequestBeforeTrxCreated, AbortRequestBeforeTrxCreated, HandleCreatedResponse, ParseCreatedResponse, HandleAuthorizedResponse | — |
| 6184694 | "NPR Vipps Mp SetupState" |  | SetCurrentPosUnitNo, GetCurrentPosUnitNo, SetCurrentMsn, GetCurrentMsn | — |
| 6184710 | "NPR Vipps Mp Util" |  | HeaderNameClientId, HeaderNameClientSecret, HeaderNameClientSubKey, HeaderNameMerchantSerialNo, HeaderNameIdempotencyKey | — |
| 6184723 | "NPR Vipps Mp Webhook API" |  | GetAllRegisteredWebhooks, RegisterWebhook, DeleteWebhook | — |
| 6184714 | "NPR Vipps Mp Webhook Mgt." |  | WriteWebhookMessage, VerifyMessage, DeleteOldWebhooks, SetEventTypeAndId, GetLastUserCheckin | — |
| 6184758 | "NPR Vipps Mp Webhook Setup" |  | CreateWebhook, DeleteWebhook, ListAllWebhooks, SynchronizeWebhooks, AzureWebhookUrl | — |
| 6184717 | "NPR Vipps Mp WebService" |  | GetWebServiceType, GetWebServiceName, OnBeforeInsertWebServiceAggregate, InitMpVippsWebserviceWebService, ReceiveWebhook | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6151296 | "NPR EFT Adyen Local Unit Setup" | EFT Adyen Local POS Unit Setup | "NPR EFT Adyen Local Unit Setup" | — |
| 6184504 | "NPR EFT Adyen Paym. Type Setup" | EFT Adyen Payment Type Setup | "NPR EFT Adyen Paym. Type Setup" | — |
| 6150838 | "NPR EFT Adyen Unit Setup" | EFT Adyen POS Unit Setup | "NPR EFT Adyen Unit Setup" | — |
| 6060010 | "NPR EFT AID Mapping List" | EFT AID Mapping List | "NPR EFT Aid Rid Mapping" | — |
| 6184474 | "NPR EFT Auxiliary Operations" | EFT Auxiliary Operations | "NPR EFT Aux Operation" | — |
| 6184513 | "NPR EFT BIN Group Card" | EFT Mapping Group Card | "NPR EFT BIN Group" | — |
| 6184511 | "NPR EFT BIN Group List" | EFT Mapping Group List | "NPR EFT BIN Group" | — |
| 6248199 | "NPR EFT BIN Group PaymentLinks" | EFT Mapping Group Payment Links | "NPR EFT BIN Group Payment Link" | — |
| 6184512 | "NPR EFT BIN Group Paym. Links" | EFT Mapping Group Payment Links | "NPR EFT BIN Group Paym. Link" | — |
| 6184514 | "NPR EFT BIN Ranges" | EFT BIN Ranges | "NPR EFT BIN Range" | — |
| 6184510 | "NPR EFT BIN Range SubPage" | EFT BIN Ranges | "NPR EFT BIN Range" | — |
| 6184520 | "NPR EFT Ext. Term. Paym. Setup" | EFT External Terminal Payment Setup | "NPR EFT Ext. Term. Paym. Setup" | — |
| 6184483 | "NPR EFT Integration Types" | EFT Integration Types | "NPR EFT Integration Type" | — |
| 6184509 | "NPR EFT NETS BAXI Paym. Setup" | EFT NETS BAXI Payment Setup | "NPR EFT NETS BAXI Paym. Setup" | — |
| 6184508 | "NPR EFT NETS Cloud Paym. Setup" | EFT NETS Cloud Payment Setup | "NPR EFT NETS Cloud Paym. Setup" | — |
| 6184515 | "NPR EFT NETSCloud POSUnitSetup" | EFT NETS Cloud POS Unit Setup | "NPR EFT NETSCloud Unit Setup" | — |
| 6184475 | "NPR EFT Payment Param. Setup" | EFT Payment Parameter Setup | "NPR EFT Setup" | — |
| 6150798 | "NPR EFT Planet PAX Config Card" | Planet Pax Terminal Configuration | "NPR EFT Planet PAX Config" | — |
| 6150799 | "NPR EFT Planet PAX Config List" | Planet PAX Terminal Configurations | "NPR EFT Planet PAX Config" | — |
| 6151318 | "NPR EFT Planet Integ. Conf." | Planet Pax Integration Configuration | "NPR EFT Planet Integ. Config" | — |
| 6184480 | "NPR EFT POSUnit Param. Setup" | EFT POS Unit Parameter Setup | "NPR EFT Setup" | — |
| 6059840 | "NPR EFT Recon. Bank Amounts" | EFT Recon. Bank Amounts | "NPR EFT Recon. Bank Amount" | — |
| 6059809 | "NPR EFT Reconciliation" | EFT Reconciliation | "NPR EFT Reconciliation" | — |
| 6059818 | "NPR EFT Reconciliation List" | EFT Reconciliation List | "NPR EFT Reconciliation" | — |
| 6059819 | "NPR EFT Recon. Lines" | Reconciliation Lines | "NPR EFT Recon. Line" | — |
| 6059824 | "NPR EFT Recon. Match Card" | EFT Recon. Match Card | "NPR EFT Recon. Match/Score" | — |
| 6059827 | "NPR EFT Recon. Matching" | Score status | "NPR EFT Recon. Line" | — |
| 6059828 | "NPR EFT Recon. Match Lines" |  | "NPR EFT Rec. Match/Score Line" | — |
| 6059835 | "NPR EFT Recon. Match List" | EFT Recon. Match List | "NPR EFT Recon. Match/Score" | — |
| 6059836 | "NPR EFT Recon. Provider Card" | EFT Recon. Provider Card | "NPR EFT Recon. Provider" | — |
| 6059837 | "NPR EFT Recon. Provider List" | EFT Recon. Provider List | "NPR EFT Recon. Provider" | — |
| 6059838 | "NPR EFT Recon. Subscribers" | EFT Recon. Subscribers | "NPR EFT Recon. Subscriber" | — |
| 6059839 | "NPR EFT Recon. Trans. List" | EFT Recon. Trans. List | "NPR EFT Transaction Request" | — |
| 6184481 | "NPR EFT Setup" | EFT Setup | "NPR EFT Setup" | — |
| 6184505 | "NPR EFT Shopper Recognition" | EFT Shopper Recognition | "NPR EFT Shopper Recognition" | — |
| 6184498 | "NPR EFT Transaction Requests" | EFT Transaction Requests | "NPR EFT Transaction Request" | — |
| 6184499 | "NPR EFT Tr.Rq.Comment Subform" | EFT Tr. Rq. Comment Subform | "NPR EFT Transact. Req. Comment" | — |
| 6184473 | "NPR EFT Trx Log Factbox" | EFT Transaction Logs | "NPR EFT Transaction Log" | — |
| 6184478 | "NPR EFT Type Pay. Gen. Param." | EFT Type Payment Gen. Param. | "NPR EFT Type Pay. Gen. Param." | — |
| 6184476 | "NPR EFT Type Paym. BLOB Param." | EFT Type Payment BLOB Param. | "NPR EFTType Paym. BLOB Param." | — |
| 6184477 | "NPR EFTType POSUnit BLOB Param" | EFT Type POS Unit BLOB Param. | "NPR EFTType POSUnit BLOBParam." | — |
| 6184479 | "NPR EFTType POSUnit Gen.Param." | EFT Type POS Unit Gen. Param. | "NPR EFTType POSUnit Gen.Param." | — |
| 6184506 | "NPR EFT Verifone Paym. Param." | EFT Verifone Payment Parameter | — | — |
| 6184507 | "NPR EFT Verifone Unit Param." | EFT Verifone Unit Parameters | — | — |
| 6151351 | "NPR Vipps Mp Payment Setup" | Vipps MobilePay Integration Config | "NPR Vipps Mp Payment Setup" | — |
| 6151463 | "NPR Vipps Mp QrCallback" | Vipps Mobilepay Static QR | "NPR Vipps Mp QrCallback" | — |
| 6151375 | "NPR Vipps Mp QrCallback List" | Vipps Mobilepay Static QRs | "NPR Vipps Mp QrCallback" | — |
| 6151498 | "NPR Vipps Mp Store" | Vipps Mobilepay Store | "NPR Vipps Mp Store" | — |
| 6151497 | "NPR Vipps Mp Store List" | Vipps Mobilepay Stores | "NPR Vipps Mp Store" | — |
| 6151349 | "NPR Vipps Mp Unit Setup" | Vipps Mobilepay Unit Configuration | "NPR Vipps Mp Unit Setup" | — |
| 6151495 | "NPR Vipps Mp UserPass" | OnPrem Additional Setup | "NPR Vipps Mp UserPass" | — |
| 6151479 | "NPR Vipps Mp Webhook List" | Vipps Mobilepay Webhooks | "NPR Vipps Mp Webhook" | — |
| 6151488 | "NPR Vipps Mp Webhook Msg." | Webhook Messages | "NPR Vipps Mp Webhook Msg" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6059794 | "NPR Adyen TTP Status" |  | Fetching BoardingToken, TAPI Sent, TAPI Recieved |
| 6014553 | "NPR Data Collect Step" | Signature | Signature, PhoneNo, EMail |
| 6059849 | "NPR EFT Adyen Aux Operation" | Abort Transaction | ABORT_TRX, ACQUIRE_CARD, ABORT_ACQUIRED, DETECT_SHOPPER, CLEAR_SHOPPER, DISABLE_CONTRACT, SUBSCRIPTION_CONFIRM, ACQUIRE_SIGNATURE |
| 6014611 | "NPR EFT Adyen Local Trx Status" |  | AcquireCardInitiated, AcquireCardResponseReceived, Initiated, ResultReceived, LookupNeeded, LookupInitiated |
| 6014606 | "NPR EFT Adyen Request Type" | Payment | Payment, Refund, Void, AbortTransaction, AcquireCard, AbortAcquireCard, TransactionLookup, DiagnoseTerminal |
| 6014605 | "NPR EFT Adyen Response Type" | Diagnose | Diagnose, Void, Payment, TransactionStatus, CardAcquisition, AbortAcquireCard, RejectNotification, DisableContract |
| 6014607 | "NPR EFT Adyen Task Status" |  | AcquireCardInitiated, AcquireCardResponseReceived, Initiated, ResultReceived, LookupNeeded, LookupInitiated, SubscriptionConfirmationResponseInitiated, SubscriptionConfirmationResponseReceived |
| 6014554 | "NPR EFT DataCollect TaskStatus" |  | SignatureResponseInitiated, SignatureResponseReceived, PhoneNoResponseInitiated, PhoneNoResponseRecevied, EmailResponseInitiated, EmailResponseReceived, Initiated, ResultReceived |
| 6014508 | "NPR EFT NETSCloud Trx Status" |  | Initiated, ResponseReceived, LookupNeeded, LookupInitiated |
| 6014620 | "NPR EFT Planet Pax Log Lvl" |  | None, Error, Verbose |
| 6014565 | "NPR EFT Planet PAX Status" |  | Uninitialized, Running, AbortRequested, Aborted, ResponseReceived, Success, Failed, Error |
| 6014608 | "NPR EFT Planet PAX Type" |  | None, Payment, Refund, Void, Lookup |
| 6014507 | "NPR EFT Request Mechanism" |  | Undefined, POSWorkflow, Synchronous |
| 6014487 | "NPR Payment Processing Type" | Cash | CASH, VOUCHER, CHECK, EFT, PAYOUT, FOREIGN VOUCHER |
| 6014630 | "NPR Vipps Mp Log Lvl" |  | Error, All |
| 6014636 | "NPR Vipps Mp Trx State" | Waiting Customer | WAITING_CUSTOMER, CREATING_TRX, WAITING_AUTHORIZED, AUTHORIZED, WAITING_CAPTURE, COMPLETED, ERROR, ABORT_REQUESTED |
| 6014635 | "NPR Vipps Mp WebhookEvents" |  | EPAYMENT_CREATED, EPAYMENT_ABORTED, EPAYMENT_EXPIRED, EPAYMENT_CANCELLED, EPAYMENT_CAPTURED, EPAYMENT_REFUNDED, EPAYMENT_AUTHORIZED, EPAYMENT_TERMINATED |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR POS IPaymentWFHandler" | GetPaymentHandler |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6184500 | "NPR EFT BIN Import" |  | — |


## Permission Sets

| ID | Name | Caption |
| --- | --- | --- |
| 6014404 | "NPR Vipps Mp Webhook" | Vipps Mobilepay Webhook |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AdyenAcqEMailReq.Codeunit.al, AdyenAcqPhoneNoReq.Codeunit.al, AdyenDataCollection.Codeunit.al, AdyenQRCodeShowReq.Codeunit.al, AdyenStoreAPI.Codeunit.al, AdyenTTPStatus.Enum.al, APIPOSEFTAdyenCloud.Codeunit.al, BINMatchingUpgrade.Codeunit.al, CreditCardProtHelper.Codeunit.al, DataCollectStep.Enum.al, EFT3cXmlProtocol.Codeunit.al, EFTAdyenAbortAcqTask.Codeunit.al, EFTAdyenAbortAcquireReq.Codeunit.al, EFTAdyenAbortMgmt.Codeunit.al, EFTAdyenAbortTrxReq.Codeunit.al, EFTAdyenAbortTrxTask.Codeunit.al, EFTAdyenAbortUnfinTrx.Codeunit.al, EFTAdyenAcqCardTask.Codeunit.al, EFTAdyenAuxOperation.Enum.al, EFTAdyenBackgndResp.Codeunit.al, EFTAdyenBgdLookupReq.Codeunit.al, EFTAdyenBndTrxReq.Codeunit.al, EFTAdyenBoardingToken.Codeunit.al, EFTAdyenCardAcquireReq.Codeunit.al, EFTAdyenCloudInteg.Codeunit.al, EFTAdyenCloudIntegrat.Codeunit.al, EFTAdyenCloudProt.Codeunit.al, EFTAdyenCloudProtocol.Codeunit.al, EFTAdyenCloudSignDia.Codeunit.al, EFTAdyenCloudTrxDia.Codeunit.al, EFTAdyenConfInputReq.Codeunit.al, EFTAdyenContractMgmt.Codeunit.al, EFTAdyenDiagnoseReq.Codeunit.al, EFTAdyenDisableCtrctReq.Codeunit.al, EFTAdyenFeatureFlag.Codeunit.al, EFTAdyenHWCIntegrat.Codeunit.al, EFTAdyenIntegration.Codeunit.al, EFTAdyenLocalIntegrat.Codeunit.al, EFTAdyenLocalTrxStatus.Enum.al, EFTAdyenLocalUnitSetup.Page.al, EFTAdyenLocalUnitSetup.Table.al, EFTAdyenLookupReq.Codeunit.al, EFTAdyenLookupTask.Codeunit.al, EFTAdyenMposLanInteg.Codeunit.al, EFTAdyenPaymTypeSetup.Page.al, EFTAdyenPaymTypeSetup.Table.al, EFTAdyenRequestType.Enum.al, EFTAdyenResponseHandler.Codeunit.al, EFTAdyenResponseParser.Codeunit.al, EFTAdyenResponseType.Enum.al, EFTAdyenRespParser.Codeunit.al, EFTAdyenSetupCheckTask.Codeunit.al, EFTAdyenShowQRCodeTask.Codeunit.al, EFTAdyenSignatureBuffer.Codeunit.al, EFTAdyenSignatureReq.Codeunit.al, EFTAdyenSubsConfTask.Codeunit.al, EFTAdyenTaskEvents.Codeunit.al, EFTAdyenTaskStatus.Enum.al, EFTAdyenTextInputReq.Codeunit.al, EFTAdyenTrxRequest.Codeunit.al, EFTAdyenTrxTask.Codeunit.al, EFTAdyenTTPInteg.Codeunit.al, EFTAdyenUnitSetup.Page.al, EFTAdyenUnitSetup.Table.al, EFTAdyenVoidReq.Codeunit.al, EFTAIDMapping.Table.al, EFTAIDMappingList.Page.al, EFTAidRidMapping.Table.al, EFTAuxiliaryOperations.Page.al, EFTAuxOperation.Table.al, EFTBINGroup.Table.al, EFTBINGroupCard.Page.al, EFTBINGroupList.Page.al, EFTBinGroupPaymentLink.Table.al, EFTBINGroupPaymentLinks.Page.al, EFTBINGroupPaymLink.Table.al, EFTBINGroupPaymLinks.Page.al, EFTBINImport.XmlPort.al, EFTBINRange.Table.al, EFTBINRanges.Page.al, EFTBINRangeSubPage.Page.al, EFTCardDetection.Codeunit.al, EFTDataCollectTaskStatus.Enum.al, EFTExternalTerminalPaymSetup.Page.al, EFTExternalTerminalPaymSetup.Table.al, EFTExtTerminalInteg.Codeunit.al, EFTFrameworkMgt.Codeunit.al, EFTIntegrationType.Table.al, EFTIntegrationTypes.Page.al, EFTInterface.Codeunit.al, EFTLoyaltyPointsProtocol.Codeunit.al, EFTMockClientInteg.Codeunit.al, EFTMockClientProt.Codeunit.al, EFTNETSBAXIIntegration.Codeunit.al, EFTNETSBAXIPaymSetup.Page.al, EFTNETSBAXIPaymSetup.Table.al, EFTNETSBAXIProtocol.Codeunit.al, EFTNETSBAXIRespPars.Codeunit.al, EFTNETSCloudAbortTask.Codeunit.al, EFTNETSCloudBgReq.Codeunit.al, EFTNETSCloudBgResp.Codeunit.al, EFTNETSCloudIntegrat.Codeunit.al, EFTNETSCloudLookupTask.Codeunit.al, EFTNETSCloudPaymSetup.Page.al, EFTNETSCloudPaymSetup.Table.al, EFTNETSCloudPOSUnitSetup.Page.al, EFTNETSCloudProtocol.Codeunit.al, EFTNETSCloudRespParser.Codeunit.al, EFTNETSCloudToken.Codeunit.al, EFTNETSCloudTrxDialog.Codeunit.al, EFTNETSCloudTrxStatus.Enum.al, EFTNETSCloudTrxTask.Codeunit.al, EFTNETSCloudUnitSetup.Table.al, EFTPaymentMapping.Codeunit.al, EFTPaymentParamSetup.Page.al, EFTPlanetPAXAbort.Codeunit.al, EFTPlanetPAXConfig.Table.al, EFTPlanetPAXConfigCard.Page.al, EFTPlanetPAXConfigList.Page.al, EFTPlanetPAXInteg.Codeunit.al, EFTPlanetPAXIntegConfig.Page.al, EFTPlanetPAXIntegConfig.Table.al, EFTPlanetPAXLog.Codeunit.al, EFTPlanetPAXLogLvl.Enum.al, EFTPlanetPAXRequest.Codeunit.al, EFTPlanetPAXResponse.Codeunit.al, EFTPlanetPAXState.Codeunit.al, EFTPlanetPAXStatus.Enum.al, EFTPlanetPAXTrx.Codeunit.al, EFTPlanetPAXType.Enum.al, EFTPlanetPAXUtil.Codeunit.al, EFTPOSUnitParamSetup.Page.al, EFTReceipt.Table.al, EFTRecMatchScoreLine.Table.al, EFTRecMatchScoreMgt.Codeunit.al, EFTReconBankAmount.Table.al, EFTReconBankAmounts.Page.al, EFTReconciliation.Page.al, EFTReconciliation.Table.al, EFTReconciliationList.Page.al, EFTReconciliationMgt.Codeunit.al, EFTReconLine.Table.al, EFTReconLines.Page.al, EFTReconMatchCard.Page.al, EFTReconMatching.Page.al, EFTReconMatchLines.Page.al, EFTReconMatchList.Page.al, EFTReconMatchScore.Table.al, EFTReconProvider.Table.al, EFTReconProviderCard.Page.al, EFTReconProviderList.Page.al, EFTReconSubscriber.Table.al, EFTReconSubscribers.Page.al, EFTReconTellerAMEX.Codeunit.al, EFTReconTransList.Page.al, EFTRequestMechanism.Enum.al, EFTSetup.Page.al, EFTSetup.Table.al, EFTShopperRecognition.Codeunit.al, EFTShopperRecognition.Page.al, EFTShopperRecognition.Table.al, EFTTestMockIntegrat.Codeunit.al, EFTTransactionLog.Table.al, EFTTransactionMgt.Codeunit.al, EFTTransactionPubMgt.Codeunit.al, EFTTransactionRequest.Table.al, EFTTransactionRequests.Page.al, EFTTransactReqComment.Table.al, EFTTrRqCommentSubform.Page.al, EFTTrxAsyncReq.Table.al, EFTTrxAsyncResp.Table.al, EFTTrxBgdSessionMgt.Codeunit.al, EFTTrxLogFactbox.Page.al, EFTTrxLoggingMgt.Codeunit.al, EFTTryAddShopper.Codeunit.al, EFTTryPrintReceipt.Codeunit.al, EFTTypePayGenParam.Page.al, EFTTypePayGenParam.Table.al, EFTTypePaymBLOBParam.Page.al, EFTTypePaymBLOBParam.Table.al, EFTTypePOSUnitBLOBParam.Page.al, EFTTypePOSUnitBLOBParam.Table.al, EFTTypePOSUnitGenParam.Page.al, EFTTypePOSUnitGenParam.Table.al, EFTVerifonePaymParam.Page.al, EFTVerifonePaymParam.Table.al, EFTVerifoneUnitParam.Page.al, EFTVerifoneUnitParam.Table.al, EFTVerifoneVimInteg.Codeunit.al, EFTVerifoneVimProt.Codeunit.al, EFTVerifoneVimRespParse.Codeunit.al, EndOfDayWorker.Codeunit.al, GenericDataCollectTask.Codeunit.al, NullPaymentHandler.Codeunit.al, PayinPayoutMgr.Codeunit.al, PaymentProcessingEvents.Codeunit.al, PaymentProcessingType.Enum.al, PlanetProxy.Codeunit.al, POSActionAdyenAcqDet.Codeunit.al, POSActionAdyenMposLan.Codeunit.al, POSActionCashPayment.Codeunit.al, POSActionDataCollection.Codeunit.al, POSActionDataCollectionB.Codeunit.al, POSActionEFTAdyenCloud.Codeunit.al, POSActionEFTAdyenHWC.Codeunit.al, POSActionEFTAdyenLocal.Codeunit.al, POSActionEFTAdyenTTP.Codeunit.al, POSActionEFTGiftCard2.Codeunit.al, POSActionEFTGiftCardB.Codeunit.al, POSActionEFTMMLoyalty.Codeunit.al, POSActionEFTMock.Codeunit.al, POSActionEFTNetsBaxi.Codeunit.al, POSActionEFTOp2.Codeunit.al, POSActionEFTOp2Bus.Codeunit.al, POSActionEFTPlanetPAX.Codeunit.al, POSActionEFTTrx.Codeunit.al, POSActionEndOfDayv4.Codeunit.al, POSActionExtTerminal.Codeunit.al, POSActionForeignVoucher.Codeunit.al, POSActionForeignVoucherB.Codeunit.al, POSActionHWCGenAux.Codeunit.al, POSActionHWCGenClose.Codeunit.al, POSActionHWCGenOpen.Codeunit.al, POSActionNetsCloudTrx.Codeunit.al, POSActionPayinPayout.Codeunit.al, POSActionPaymentWF2.Codeunit.al, POSActionPaymentWF2BL.Codeunit.al, POSActionPaymentWithCheck.Codeunit.al, POSActionShowQRCode.Codeunit.al, POSActionShowQRCodeB.Codeunit.al, POSActionSSAdyen.Codeunit.al, POSActionVippsMp.Codeunit.al, POSActionVoucherPayment.Codeunit.al, POSActPaymentWithCheckB.Codeunit.al, POSIPaymentWFHandler.Interface.al, VippsMpAccessTokenAPI.Codeunit.al, VippsMpePaymentAPI.Codeunit.al, VippsMpHMAC.Codeunit.al, VippsMpIntegration.Codeunit.al, VippsMpLog.Codeunit.al, VippsMpLogLvl.Enum.al, VippsMpMgtAPI.Codeunit.al, VippsMpMigration.Codeunit.al, VippsMpPaymentSetup.Page.al, VippsMpPaymentSetup.Table.al, VippsMpQRAPI.Codeunit.al, VippsMpQrCallback.Page.al, VippsMpQrCallback.Table.al, VippsMpQrCallbackList.Page.al, VippsMpQrMgt.Codeunit.al, VippsMpResponseHandler.Codeunit.al, VippsMpSetupState.Codeunit.al, VippsMpStore.Page.al, VippsMpStore.Table.al, VippsMpStoreList.Page.al, VippsMpTrxState.Enum.al, VippsMpUnitSetup.Page.al, VippsMpUnitSetup.Table.al, VippsMpUserPass.Page.al, VippsMpUserPass.Table.al, VippsMpUtil.Codeunit.al, VippsMpWebhook.PermissionSet.al, VippsMpWebhook.Table.al, VippsMpWebhookAPI.Codeunit.al, VippsMpWebhookEvents.Enum.al, VippsMpWebhookList.Page.al, VippsMpWebhookMgt.Codeunit.al, VippsMpWebhookMsg.Page.al, VippsMpWebhookMsg.Table.al, VippsMpWebhookSetup.Codeunit.al, VippsMpWebService.Codeunit.al
