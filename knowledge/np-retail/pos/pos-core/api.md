---
type: reference
tags: [pos, pos-core, np-retail, tables, codeunits, pages, enums, queries, interfaces]
relates:
  - pos/pos-core/overview.md
updated: 2026-05-30
source_files:
  - Application/src/POS Core/Menus/Actions/ActionType.Enum.al
  - Application/src/POS Core/Front-End Async/Async Requests/AppGatewayProtocolResponse.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Menus/Actions/BaseAction.Codeunit.al
  - Application/src/POS Core/Menus/ButtonEnabledState.Enum.al
  - Application/src/POS Core/Menus/ButtonType.Enum.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureActionSequences.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureFont.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureKeyboardBindings.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureReusableWorkflow.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureSecureMethods.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureSecureMethodsClientPasswords.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ConfigureTheme.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Menus/Actions/CustomerAction.Codeunit.al
  - Application/src/POS Core/Data/DataColumn.Codeunit.al
  - Application/src/POS Core/Data/_public/DataRow.Codeunit.al
  - Application/src/POS Core/Data/DataSet.Codeunit.al
  - Application/src/POS Core/Data/_public/DataSource.Codeunit.al
  - Application/src/POS Core/Data/DataStore.Codeunit.al
  - Application/src/POS Core/Data/_public/DataType.Enum.al
  - Application/src/POS Core/DragonglassResponseQueue.Codeunit.al
  - Application/src/POS Core/Data Source Extension Field/DSExtFieldDefaultImpl.Codeunit.al
  - Application/src/POS Core/Data Source Extension Field/DSExtFieldSetupFactBox.Page.al
  - Application/src/POS Core/Data Source Extension Field/_public/DSExtFieldSetupPublic.Codeunit.al
  - Application/src/POS Core/Data Source Extension Field/DSExtFldLocationSetup.Page.al
  - Application/src/POS Core/Data Source Extension Field/DSExtFldLocSetupMgt.Codeunit.al
  - Application/src/POS Core/LoadingBugDummyFiles/DummyControlAddIn.al
  - Application/src/POS Core/_public/ExecutionOrderOnSale.Table.al
  - Application/src/POS Core/Front-End Async/FontDefinition.Interface.al
  - Application/src/POS Core/FrameworkDragonglass.Codeunit.al
  - Application/src/POS Core/FrameworkInterface.Interface.al
  - Application/src/POS Core/Front-End Async/Async Requests/FrontEndApplAdminTempl.Codeunit.al
  - Application/src/POS Core/Front-End Async/FrontEndAsyncRequest.Interface.al
  - Application/src/POS Core/Front-End Async/Async Requests/FrontEndHWC.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/FrontEndRefreshData.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/FrontEndWkfCallCompl.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/Generic.AsyncRequest.Codeunit.al
  - Application/src/POS Core/HWCResponseMethod.Codeunit.al
  - Application/src/POS Core/Menus/Actions/IAction.Interface.al
  - Application/src/POS Core/IJsonSerializable.Interface.al
  - Application/src/POS Core/ImageFormat.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/InvokeDevice.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Workflow V3/_public/IPOSWorkflow.Interface.al
  - Application/src/POS Core/Menus/ISubMenu.Interface.al
  - Application/src/POS Core/Menus/Actions/ItemAction.Codeunit.al
  - Application/src/POS Core/JSInterfaceErrorHandler.Codeunit.al
  - Application/src/POS Core/Data Source Extension Field/_public/LocationFilterFrom.Enum.al
  - Application/src/POS Core/Front-End Async/Async Requests/Menu.AsyncRequest.Codeunit.al
  - Application/src/POS Core/_public/MoveEntries.Codeunit.al
  - Application/src/POS Core/NewAttractionPrintExp.Codeunit.al
  - Application/src/POS Core/NewEFTReceiptExp.Codeunit.al
  - Application/src/POS Core/NewPOSEditorFeature.Codeunit.al
  - Application/src/POS Core/NewRestaurantPrintExp.Codeunit.al
  - Application/src/POS Core/NewSalesReceiptExp.Codeunit.al
  - Application/src/POS Core/NewVoucherReservation.Codeunit.al
  - Application/src/POS Core/NPEmail POS Receipt OnSale/NPEmailPOSReceiptOnSale.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/PauseWorkflow.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Menus/Actions/PaymentAction.Codeunit.al
  - Application/src/POS Core/Menus/Actions/PopupMenuAction.Codeunit.al
  - Application/src/POS Core/POSActionManagement.Codeunit.al
  - Application/src/POS Core/Workflow V3/_public/POSActionParamBuf.Codeunit.al
  - Application/src/POS Core/POSAfterSaleExecution.Codeunit.al
  - Application/src/POS Core/_public/POSCaptionManagement.Codeunit.al
  - Application/src/POS Core/POSCreditSalesCrMemo.Query.al
  - Application/src/POS Core/POSCreditSalesInvoice.Query.al
  - Application/src/POS Core/POSDragonglass.Page.al
  - Application/src/POS Core/LoadingBugDummyFiles/POSDragonglass.Page.tmp1.al
  - Application/src/POS Core/LoadingBugDummyFiles/POSDragonglass.Page.tmp2.al
  - Application/src/POS Core/LoadingBugDummyFiles/POSDragonglass.Page.tmp3.al
  - Application/src/POS Core/_public/POSDragonglassAPI.Codeunit.al
  - Application/src/POS Core/POSDragonglassRunMethod.Codeunit.al
  - Application/src/POS Core/LoadingBugDummyFiles/POSDragonglassTmp4.Page.al
  - Application/src/POS Core/_public/POSDragonglassTmp5.Page.al
  - Application/src/POS Core/Data Source Extension Field/POSDSExtenFieldMgt.Codeunit.al
  - Application/src/POS Core/Data Source Extension Field/_public/POSDSExtenFieldSetup.Interface.al
  - Application/src/POS Core/Data Source Extension Field/POSDSExtenFieldSetup.Page.al
  - Application/src/POS Core/Data Source Extension Field/_public/POSDSExtenFieldSetup.Table.al
  - Application/src/POS Core/Data Source Extension Field/_public/POSDSExtensionModule.Enum.al
  - Application/src/POS Core/Front-End Async/_public/POSFrontEndManagement.Codeunit.al
  - Application/src/POS Core/POSGiveChange.Codeunit.al
  - Application/src/POS Core/POSIUOMUtils.Codeunit.al
  - Application/src/POS Core/_public/POSJavaScriptInterface.Codeunit.al
  - Application/src/POS Core/Workflow V3/_public/POSJSONHelper.Codeunit.al
  - Application/src/POS Core/_public/POSJSONManagement.Codeunit.al
  - Application/src/POS Core/_public/POSLineSaleType.Enum.al
  - Application/src/POS Core/POSLocalizedCaption.Table.al
  - Application/src/POS Core/POSLocalizedTableData.Page.al
  - Application/src/POS Core/_public/POSManagePOSUnit.Codeunit.al
  - Application/src/POS Core/Menus/POSMenu.Codeunit.al
  - Application/src/POS Core/Menus/POSMenuButton.Codeunit.al
  - Application/src/POS Core/POSMethodKiosk.Codeunit.al
  - Application/src/POS Core/POSMethodSetDragonglass.Codeunit.al
  - Application/src/POS Core/POSMethodWysiwyg.Codeunit.al
  - Application/src/POS Core/_public/POSPaymentLine.Codeunit.al
  - Application/src/POS Core/_public/POSPrintReceiptOnSale.Codeunit.al
  - Application/src/POS Core/Workflow V3/POSRefreshWorkflows.Codeunit.al
  - Application/src/POS Core/POSRounding.Codeunit.al
  - Application/src/POS Core/POSRunWorkflowCodeunit.al
  - Application/src/POS Core/_public/POSSale.Codeunit.al
  - Application/src/POS Core/_public/POSSale.Table.al
  - Application/src/POS Core/_public/POSSaleLine.Codeunit.al
  - Application/src/POS Core/_public/POSSaleLine.Table.al
  - Application/src/POS Core/POSSaleLineType.Enum.al
  - Application/src/POS Core/_public/POSSaleMediaImageFactBox.Page.al
  - Application/src/POS Core/_public/POSSaleMediaInfo.Table.al
  - Application/src/POS Core/_public/POSSaleMediaInfoList.Page.al
  - Application/src/POS Core/POSSaleOnRunType.Enum.al
  - Application/src/POS Core/POSSalesPrintMgt.Codeunit.al
  - Application/src/POS Core/_public/POSSaleType.Enum.al
  - Application/src/POS Core/Workflow V3/_public/POSSecureMetHelperPub.Codeunit.al
  - Application/src/POS Core/POSSecureMethod.Table.al
  - Application/src/POS Core/POSSecureMethodHelper.Codeunit.al
  - Application/src/POS Core/POSSecureMethods.Page.al
  - Application/src/POS Core/POSSecureMethodSvrside.Codeunit.al
  - Application/src/POS Core/POSSelectLangDialog.Page.al
  - Application/src/POS Core/_public/POSSession.Codeunit.al
  - Application/src/POS Core/POSSessionFinalizer.Codeunit.al
  - Application/src/POS Core/POSSetupSafetyCheck.Codeunit.al
  - Application/src/POS Core/POSStatDashboardFeature.Codeunit.al
  - Application/src/POS Core/POSTrackingUtils.Codeunit.al
  - Application/src/POS Core/_public/POSTrackingUtilsPublic.Codeunit.al
  - Application/src/POS Core/POSTurnover.Page.al
  - Application/src/POS Core/POSTurnover.Query.al
  - Application/src/POS Core/POSTurnoverCalcBuffer.Table.al
  - Application/src/POS Core/_public/POSUIManagement.Codeunit.al
  - Application/src/POS Core/View/_public/POSView.Codeunit.al
  - Application/src/POS Core/POSWebFont.Table.al
  - Application/src/POS Core/POSWebFonts.Page.al
  - Application/src/POS Core/POSWebserviceSessions.Codeunit.al
  - Application/src/POS Core/_public/POSWF20State.Codeunit.al
  - Application/src/POS Core/Workflow V3/_public/POSWorkflow.Enum.al
  - Application/src/POS Core/Workflow V3/POSWorkflow30.Codeunit.al
  - Application/src/POS Core/Workflow V3/_public/POSWorkflowConfig.Codeunit.al
  - Application/src/POS Core/Workflow V3/_public/POSWorkflowEvents.Codeunit.al
  - Application/src/POS Core/_public/POSWorkflows20.Codeunit.al
  - Application/src/POS Core/POSWorkflows20Require.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ProvideContext.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ReportBugAsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/RequireResponse.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ResumeWorkflow.AsyncRequest.Codeunit.al
  - Application/src/POS Core/RetailFeature.Codeunit.al
  - Application/src/POS Core/ScenarioObsoletedFeature.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetCaptions.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetFormat.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetImage.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetLoggingLevel.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetOption.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetOptions.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/SetView.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/StargatePackages.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/StartTransaction.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Menus/Actions/SubMenuAction.Codeunit.al
  - Application/src/POS Core/Workflow V3/UnknownWorkflow.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/ValidateSecureMethodPassword.AsyncRequest.Codeunit.al
  - Application/src/POS Core/View/ViewType.Enum.al
  - Application/src/POS Core/WebClientDependencies.Page.al
  - Application/src/POS Core/WebClientDependency.Table.al
  - Application/src/POS Core/Front-End Async/WebFont.Codeunit.al
  - Application/src/POS Core/Front-End Async/Async Requests/Workflow.AsyncRequest.Codeunit.al
  - Application/src/POS Core/Workflows/Workflow.Codeunit.al
  - Application/src/POS Core/Menus/Actions/WorkflowAction.Codeunit.al
  - Application/src/POS Core/Workflow V3/WorkflowCaptionBuffer.Codeunit.al
  - Application/src/POS Core/Workflows/WorkflowStep.Codeunit.al
---

# POS Core — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6150786 | "NPR Execution Order On Sale" |  | "Sequence No." | — |
| 6060087 | "NPR POS DS Exten. Field Setup" | POS Data Source Exten. Field Setup | "Entry No." | — |
| 6150702 | "NPR POS Localized Caption" | Localized Caption | "Record ID", "Field No.", "Caption ID", "Language Code" | — |
| 6014405 | "NPR POS Sale" | POS Sale | "Register No.", "Sales Ticket No." | — |
| 6014406 | "NPR POS Sale Line" | POS Sale Line | "Register No.", "Sales Ticket No.", Date, "Sale Type", "Line No." | — |
| 6014681 | "NPR POS Sale Media Info" | POS Sale Media Info | "Entry No." | — |
| 6150725 | "NPR POS Secure Method" | POS Secure Method | "Code" | — |
| 6014487 | "NPR POS Turnover Calc. Buffer" | POS Turnover Calc. Buffer | "Entry No." | — |
| 6014621 | "NPR POS Web Font" | POS Web Font | "Code", "Company Name" | — |
| 6014624 | "NPR Web Client Dependency" | Web Client Dependency | Type, "Code" | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6150768 | "NPR Front-End: AppGWResp." |  | Initialize, GetJson, GetContent | — |
| 6150881 | "NPR Base Action" |  | Content, Parameters, GetJson | — |
| 6150756 | "NPR Front-End: ConfigActSeq." |  | SetSequences, GetSequences, GetJson, GetContent | — |
| 6150758 | "NPR Front-End: ConfigFont." |  | SetFont, GetJson, GetContent | — |
| 6150760 | "NPR Front-End: ConfigKeyBind." |  | SetBindings, GetJson, GetContent | — |
| 6150777 | "NPR Front-End: CfgReusableWkf." |  | Initialize, GetJson, GetContent | — |
| 6150772 | "NPR Front-End: CfgSecureMeth." |  | AddMethod, GetJson, GetContent | — |
| 6150767 | "NPR Front-End: ConfSMPasswords" |  | Initialize, GetJson, GetContent | — |
| 6150761 | "NPR Front-End: ConfigureTheme" |  | SetTheme, GetJson, GetContent | — |
| 6150884 | "NPR Customer Action" |  | Code, SetCode, Type, Content, Parameters | — |
| 6150894 | "NPR Data Column" |  | MakeSureIsConstructed, FieldId, FieldId, DataType, Format | — |
| 6150895 | "NPR Data Row" |  | MakeSureIsConstructed, Position, Position, Negative, SetNegative | — |
| 6150893 | "NPR Data Set" |  | MakeSureIsConstructed, Rows, IsDelta, SetIsDelta, CurrentPosition | — |
| 6150892 | "NPR Data Source" |  | MakeSureIsConstructed, IsNull, Constructor, Constructor, PerSession | — |
| 6150891 | "NPR Data Store" |  | DataSources, GetDataSet, StoreAndGetDelta, Constructor | — |
| 6060079 | "NPR Dragonglass Response Queue" |  | QueueInvokeFrontendRequest, PopQueuedRequests | — |
| 6184502 | "NPR DS Ext.Field Default Impl." |  | GetSupportedDataSourceNameFilter, GetSupportedDataSourceExtensionNameList, GetSupportedExtensionFieldList, ValidateDataSourceExtensionModule, ValidateDataSourceName | — |
| 6184553 | "NPR DS Ext.Field Setup Public" |  | FilterDataSourceExtFieldSetup, OpenLocationFilterSetupPage, GetLocationFilterParams, SetLocationFilterParams, GetDSExtFldLocationFilter | OnGetDSExtFldLocationFilter |
| 6184554 | "NPR DS Ext.Fld. Loc.Setup Mgt." |  | OpenLocationFilterSetupPage, GetLocationFilterParams, SetLocationFilterParams, GetDSExtFldLocationFilter | — |
| 6150751 | "NPR Framework: Dragonglass" |  | Constructor, InvokeFrontEndAsync | — |
| 6150755 | "NPR Front-End: ApplAdminTempl." |  | GetJson, GetContent | — |
| 6014573 | "NPR Front-End: HWC" |  | GetJson, GetContent, SetContent, SetRequest, AwaitResponse | — |
| 6150781 | "NPR Front-End: RefreshData" |  | AddDataSet, SetDataSets, GetJson, GetContent | — |
| 6150770 | "NPR Front-End: WkfCallCompl." |  | SignalSuccess, SignalFailure, SignalFailureAndThrowError, SetWorkflowResponse, SetEngine20 | — |
| 6150752 | "NPR Front-End: Generic" |  | SetMethod, GetJson, GetContent, SetContent | — |
| 6014575 | "NPR HWC Response Method" |  | OnPreSearch, OnHardwareConnectorResponse | — |
| 6014561 | "NPR Image Format" |  | ByteToHex, GetSignature, GetImageExtensionFromHeader | — |
| 6150773 | "NPR Front-End: InvokeDevice" |  | Initialize, SetAction, SetMethod, SetAsync, GetJson | — |
| 6150883 | "NPR Item Action" |  | Code, SetCode, Type, Content, Parameters | — |
| 6014666 | "NPR JS Interface Error Handler" |  | InvokeOnActionThroughOnRun, InvokeOnBeforeWorkflowThroughOnRun, InvokeCustomMethodThroughOnRun, EmitResult, GetValueAsText | — |
| 6150778 | "NPR Front-End: Menu" |  | Initialize, GetJson, GetContent | — |
| 6151479 | "NPR Move Entries" |  | ItemCheckOpenEntries, UpdateItemNoInLedgerEntries, UpdateItemNoInLedgerEntries, CustCheckOpenEntries, UpdateCustNoInLedgerEntries | — |
| 6150744 | "NPR New Attraction Print Exp" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6248350 | "NPR New EFT Receipt Exp" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6184996 | "NPR New POS Editor Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6248724 | "NPR New Restaurant Print Exp." |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6248351 | "NPR New Sales Receipt Exp" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6248726 | "NPR New Voucher Reservation" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6151001 | "NPR NPEmail POS Receipt OnSale" |  | Register, RunWorkflow, SendReceiptEmailOnAfterEndSale, SendReceiptEmail, TryGetValidatedReceiptProfile | — |
| 6150774 | "NPR Front-End: PauseWorkflow" |  | Initialize, GetJson, GetContent | — |
| 6150885 | "NPR Payment Action" |  | Code, SetCode, Type, Content, Parameters | — |
| 6150887 | "NPR Popup Menu Action" |  | MenuId, SetMenuId, OpenAsPopup, SetOpenAsPopup, Type | — |
| 6150719 | "NPR POS Action Management" |  | LookupAction, IsValidActionConfiguration, ReportError, OnInvalidActionConfiguration | — |
| 6248235 | "NPR POS Action Param Buf." |  | AddTextParameter, AddIntegerParameter, AddDateParameter, AddBooleanParameter, AddDecimalParameter | — |
| 6014428 | "NPR POS After Sale Execution" |  | RecSet, PosSaleCodeunitSet, OnRunXRecSet, OnRunPOSSalesWorkflowStepSet, OnRunTypeSet | — |
| 6150720 | "NPR POS Caption Management" |  | Initialize, Finalize, FailIfNotInitialized, AddCaptionToCollection, AddCaption | — |
| 6060078 | "NPR POS Dragonglass API" |  | InvokeMethod, GetSaleKey, InitPOSDragonglassService | — |
| 6060103 | "NPR POS Dragonglass Run Method" |  | SetMethodParameters | — |
| 6184501 | "NPR POS DS Exten. Field Mgt." |  | FilterDataSourceExtFieldSetup, LookupDataSource, LookupExtensionName, LookupExtensionField, LookupRetailValue | — |
| 6150704 | "NPR POS Front End Management" |  | Initialize, IsActiveSession, GetSession, WorkflowBackEndStepBegin, WorkflowBackEndStepEnd | — |
| 6150634 | "NPR POS Give Change" |  | InsertChange, CalcAndInsertChange, InsertOutPaymentLine, GetReturnPaymentType, GetRoundingAmount | — |
| 6151063 | "NPR POS IUOM Utils" |  | CheckIfBlockingBaseUOM, CheckIfBaseUnitOfMeasureBlocked, CheckIfUnitOfMeasureBlocked | — |
| 6150701 | "NPR POS JavaScript Interface" |  | Initialize, InvokeAction, InvokeMethod, InvokeCustomMethod, InitializationComplete | OnAction, OnBeforeWorkflow, OnCustomMethod |
| 6014574 | "NPR POS JSON Helper" |  | InitializeJObjectParser, MakeSureJObjectParserIsInitialized, ToString, GetJToken, GetJToken | — |
| 6150703 | "NPR POS JSON Management" |  | InitializeJObjectParser, MakeSureJObjectParserIsInitialized, ToString, GetJToken, GetJTokenOrFail | — |
| 6150630 | "NPR POS Manage POS Unit" |  | OpenPosUnitNo, OpenPosUnitNoWithPeriodEntryNo, OpenPOSUnit, CreatePeriodRegister, ReOpenLastPeriodRegister | — |
| 6150890 | "NPR POS Menu" |  | Id, SetId, Caption, SetCaption, Tooltip | — |
| 6150889 | "NPR POS Menu Button" |  | Caption, SetCaption, Tooltip, SetTooltip, GetAction | — |
| 6150741 | "NPR POS Method - Kiosk" |  | MethodName, OnUnlockKiosk, IsValidPIN | — |
| 6150747 | "NPR POSMethod: Set Dragonglass" |  | OnSetDragonglass | — |
| 6150740 | "NPR POS Method - Wysiwyg" |  | OnWysiwygMethod, SaveConfiguration, SaveButtonConfiguration, CreateNewButton, SaveExistingButton | — |
| 6150707 | "NPR POS Payment Line" |  | Init, ToDataset, SetPosition, SetBySystemId, GetPosition | — |
| 6184650 | "NPR POS Print Receipt On Sale" |  | — | — |
| 6059798 | "NPR POS Refresh Workflows" |  | RefreshAll, RefreshSpecific, RefreshAction, BufferCaptions | — |
| 6150636 | "NPR POS Rounding" |  | InsertRounding, GetLastLineNo, InsertLine, DeleteExistingRoundingLines | — |
| 6150748 | "NPR POS Run Workflow" |  | — | — |
| 6150705 | "NPR POS Sale" |  | InitializeAtLogin, InitializeNewSale, InitializeFromWebserviceSession, InsertSale, InitGlobalState | OnAfterEndSale, OnRefresh, OnFinishSale |
| 6150706 | "NPR POS Sale Line" |  | Init, CheckInit, InitLine, GetNextLineNo, GetNewSaleLine | OnAfterDeletePOSSaleLine, OnBeforeDeletePOSSaleLine, OnUpdateLine |
| 6150729 | "NPR POS Sales Print Mgt." |  | OnBeforeInsertWorkflowStep, CurrCodeunitId, PrintPOSEntrySalesReceipt | — |
| 6059983 | "NPR POS Secure Met. Helper Pub" |  | GetSalespersonCode | — |
| 6151043 | "NPR POS Secure Method Helper" |  | AddContextId, AddSalespersonCodeToContext, ClearAll, GetSalespersonCode | — |
| 6150736 | "NPR POS Secure Method Svrside" |  | MethodName, OnCustomMethod_SecureMethod, SecureMethodValidate, SecureMethodValidateWithAuditLog, OnSecureMethodValidatePassword | — |
| 6150700 | "NPR POS Session" |  | Constructor, ConstructFromWebserviceSession, ClearAll, IsInitialized, SetPageId | OnInitializationComplete |
| 6150745 | "NPR POS Session Finalizer" |  | OnRoleCenterOpen | — |
| 6014451 | "NPR POS Setup Safety Check" |  | OnInitialize, ValidateSetup, ValidateSalesTicketNumberSeriesGapAllowed, ValidateNotAutoCostMgt, CheckPostingProfile | — |
| 6150651 | "NPR POS Stat Dashboard Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6151032 | "NPR POS Tracking Utils" |  | SerialNumberCanBeUsedByItem, SelectSerialNoFromList, SelectLotNoFromList, ValidateSerialNo, LotCanBeUsedByItem | — |
| 6248452 | "NPR POS Tracking Utils Public" |  | SerialNumberCanBeUsedByItem_OnAfterFilterILE, LotCanBeUsedByItem_OnAfterFilterILE | SerialNumberCanBeUsedByItem_OnAfterFilterILE, LotCanBeUsedByItem_OnAfterFilterILE |
| 6150702 | "NPR POS UI Management" |  | Initialize, InitializeCaptions, InitializeNumberAndDateFormat, InitializeLogo, InitializeMenus | — |
| 6150896 | "NPR POS View" |  | InstanceId, CanCache, SetCanCache, GetType, Type | — |
| 6248379 | "NPR POS Webservice Sessions" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, NPRFeatureOnBeforeValidateEnabled | — |
| 6150734 | "NPR POS WF 2.0: State" |  | Constructor, StoreActionState, RetrieveActionState, RetrieveActionStateSafe, RetrieveActionStateRecordRef | — |
| 6014665 | "NPR POS Workflow 3.0" |  | RunIfAction30, RetrieveActionContext, InvokeOnActionThroughOnRun, InvokeAction30, EmitError | — |
| 6059786 | "NPR POS Workflow Config" |  | AddJavascript, AddActionDescription, AddTextParameter, AddIntegerParameter, AddDateParameter | — |
| 6248234 | "NPR POS Workflow Events" |  | OnRefreshActionOnAfterRegister | OnRefreshActionOnAfterRegister |
| 6150733 | "NPR POS Workflows 2.0" |  | OnAction20, RetrieveActionContext, InvokeOnActionThroughOnRun, InvokeAction20, OnAction | — |
| 6150735 | "NPR POS Workflows 2.0: Require" |  | MethodName, OnRequire, RequireScript, RequireAction, RequireImage | — |
| 6150769 | "NPR Front-End: ProvideContext" |  | Initialize, StoreContext, GetJson, GetContent | — |
| 6150753 | "NPR Front-End: ReportBug" |  | Initialize, InitializeWarning, SetInvalidCustomMethod, GetJson, GetContent | — |
| 6150764 | "NPR Front-End: RequireResponse" |  | Initialize, SetValue, SetValue, GetJson, GetContent | — |
| 6150775 | "NPR Front-End: ResumeWorkflow" |  | Initialize, GetJson, GetContent | — |
| 6151432 | "NPR Retail Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6060137 | "NPR Scenario Obsoleted Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6150754 | "NPR Front-End: SetCaptions" |  | SetCaptions, GetJson, GetContent | — |
| 6150783 | "NPR Front-End: SetFormat" |  | Initialize, Ready, GetJson, GetContent | — |
| 6150757 | "NPR Front-End: SetImage" |  | SetImage, GetJson, GetContent | — |
| 6014659 | "NPR Front-End: SetLoggingLevel" |  | SetLoggingLevel, GetContent, GetJson | — |
| 6150763 | "NPR Front-End: SetOption" |  | Initialize, GetJson, GetContent | — |
| 6150776 | "NPR Front-End: SetOptions" |  | SetOptions, GetJson, GetContent | — |
| 6150782 | "NPR Front-End: SetView" |  | InitializeAsLogin, InitializeAsSale, InitializeAsPayment, InitializeAsBalanceRegister, InitializeAsLocked | — |
| 6150771 | "NPR Front-End: StargatePkg." |  | AddPackage, GetJson, GetContent | — |
| 6150762 | "NPR Front-End: StartTrans." |  | Initialize, GetJson, GetContent | — |
| 6150888 | "NPR SubMenu Action" |  | Type, Content, Parameters, GetJson, ConfigureFromMenuButton | — |
| 6014570 | "NPR Unknown Workflow" |  | Register, RunWorkflow | — |
| 6150766 | "NPR Front-End: ValSecMethPasw." |  | Initialize, GetJson, GetContent | — |
| 6150765 | "NPR Front-End: WorkflowRequest" |  | Initialize, SetExplicit, SetNested, IsEmpty, SetParameters | — |
| 6150880 | "NPR Workflow" |  | Name, SetName, RequestContext, SetRequestContext, Steps | — |
| 6150882 | "NPR Workflow Action" |  | GetWorkflow, Type, Content, Parameters, GetJson | — |
| 6014572 | "NPR Workflow Caption Buffer" |  | GetAllParameterCaptionsOnPOSSessionInit, GetParameterNameCaption, GetParameterDescriptionCaption, GetParameterOptionsCaption, GetActionDescription | — |
| 6150886 | "NPR Workflow Step" |  | Label, Code, GetJson | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6151285 | "NPR DS Ext.Field Setup FactBox" | Extension Field Additional Parameters | "NPR POS DS Exten. Field Setup" | — |
| 6151284 | "NPR DS Ext.Fld. Location Setup" | POS DS Exten.Field Parameters | — | — |
| 6150750 | "NPR POS (Dragonglass)" | POS | — | — |
| 6185112 | "NPR (Dragonglass) Tmp1" | [Testing purposes only] : AL Code removed | — | — |
| 6185113 | "NPR (Dragonglass) Tmp2" | [Testing purposes only] : Dummy ControllAddin | — | — |
| 6185114 | "NPR (Dragonglass) Tmp3" | [Testing purposes only] : Edited OnOpenPage | — | — |
| 6185120 | "NPR POS (Dragonglass) Tmp4" | [Testing purposes only] : Card | — | — |
| 6185121 | "NPR POS (Dragonglass) Tmp5" | [Testing purposes only] : UserControlHost | — | — |
| 6151279 | "NPR POS DS Exten. Field Setup" | POS Data Source Exten. Field Setup | "NPR POS DS Exten. Field Setup" | — |
| 6150724 | "NPR POS Localized Table Data" | Localized Table Data | "NPR POS Localized Caption" | — |
| 6059901 | "NPR POSSaleMediaImage FactBox" | Image Preview FactBox | "NPR POS Sale Media Info" | — |
| 6059900 | "NPR POS Sale Media Info List" | POS Sale Media Info List | "NPR POS Sale Media Info" | — |
| 6150731 | "NPR POS Secure Methods" | POS Secure Methods | "NPR POS Secure Method" | — |
| 6150725 | "NPR POS Select Lang. Dialog" | POS Select Language Dialog | — | — |
| 6014409 | "NPR POS Turnover" | POS Turnover Info | "NPR POS Turnover Calc. Buffer" | — |
| 6014622 | "NPR POS Web Fonts" | POS Web Fonts | "NPR POS Web Font" | — |
| 6014659 | "NPR Web Client Dependencies" | Web Client Dependencies | "NPR Web Client Dependency" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6150750 | "NPR Action Type" |  | SubMenu, PopupMenu, Action, Item, Customer, PaymentType |
| 6150752 | "NPR Button Enabled State" |  | Yes, Auto, No |
| 6150751 | "NPR Button Type" |  | Unspecified, Ok, Yes, No, Cancel, Abort, Retry, Back |
| 6150754 | "NPR Data Type" |  | Undefined, Boolean, Integer, DateTime, Decimal, String |
| 6014599 | "NPR Location Filter From" | No Filter | NotUsed, PosSaleHdr, PosStore, LocationFilter |
| 6014598 | "NPR POS DS Extension Module" |  | Undefined, DocImport, ClickCollect, TransferOrder |
| 6014522 | "NPR POS Line Sale Type" | Sale | Sale, Payment, Debit Sale, Gift Voucher, Credit Voucher, Deposit, Out payment, Comment |
| 6014511 | "NPR POS Sale Line Type" | Item | Item, Item Category, POS Payment, BOM List, Customer Deposit, Comment, Rounding, GL Payment |
| 6014448 | "NPR POS Sale OnRunType" |  | Undefined, RunAfterEndSale, OnFinishSale |
| 6014512 | "NPR POS Sale Type" | Open | Open, Cancelled |
| 6014470 | "NPR POS Workflow" | LEGACY | LEGACY, PAYMENT_CASH, EFT_MOCK_CLIENT, EFT_PAYMENT, EFT_GENERIC_CLOSE, EFT_GENERIC_OPEN, EFT_OPERATION_2, PAYMENT_2 |
| 6150755 | "NPR View Type" |  | Uninitialized, Login, Sale, Payment, BalanceRegister, Locked, Restaurant |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR Font Definition" | Code, Name, FontFace, Prefix, GetCssStream |
| "NPR Framework Interface" | InvokeFrontEndAsync |
| "NPR Front-End Async Request" | GetContent, GetJson |
| "NPR IAction" | Content, Parameters, Type, GetJson, CheckConfiguration |
| "NPR IJsonSerializable" | GetJson |
| "NPR IPOS Workflow" | Register, RunWorkflow |
| "NPR ISubMenu" | AddMenuButton |
| "NPR POS DS Exten. Field Setup" | GetSupportedDataSourceNameFilter, GetSupportedDataSourceExtensionNameList, GetSupportedExtensionFieldList, ValidateDataSourceExtensionModule, ValidateDataSourceName |


## Queries

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014411 | "NPR POS Credit Sales Cr. Memo" | POS Credit Sales Cr. Memo | — |
| 6014412 | "NPR POS Credit Sales Invoice" | POS Credit Sales Invoice | — |
| 6014400 | "NPR POS Turnover" | POS Turnover | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: ActionType.Enum.al, AppGatewayProtocolResponse.AsyncRequest.Codeunit.al, BaseAction.Codeunit.al, ButtonEnabledState.Enum.al, ButtonType.Enum.al, ConfigureActionSequences.AsyncRequest.Codeunit.al, ConfigureFont.AsyncRequest.Codeunit.al, ConfigureKeyboardBindings.AsyncRequest.Codeunit.al, ConfigureReusableWorkflow.AsyncRequest.Codeunit.al, ConfigureSecureMethods.AsyncRequest.Codeunit.al, ConfigureSecureMethodsClientPasswords.AsyncRequest.Codeunit.al, ConfigureTheme.AsyncRequest.Codeunit.al, CustomerAction.Codeunit.al, DataColumn.Codeunit.al, DataRow.Codeunit.al, DataSet.Codeunit.al, DataSource.Codeunit.al, DataStore.Codeunit.al, DataType.Enum.al, DragonglassResponseQueue.Codeunit.al, DSExtFieldDefaultImpl.Codeunit.al, DSExtFieldSetupFactBox.Page.al, DSExtFieldSetupPublic.Codeunit.al, DSExtFldLocationSetup.Page.al, DSExtFldLocSetupMgt.Codeunit.al, DummyControlAddIn.al, ExecutionOrderOnSale.Table.al, FontDefinition.Interface.al, FrameworkDragonglass.Codeunit.al, FrameworkInterface.Interface.al, FrontEndApplAdminTempl.Codeunit.al, FrontEndAsyncRequest.Interface.al, FrontEndHWC.Codeunit.al, FrontEndRefreshData.Codeunit.al, FrontEndWkfCallCompl.Codeunit.al, Generic.AsyncRequest.Codeunit.al, HWCResponseMethod.Codeunit.al, IAction.Interface.al, IJsonSerializable.Interface.al, ImageFormat.Codeunit.al, InvokeDevice.AsyncRequest.Codeunit.al, IPOSWorkflow.Interface.al, ISubMenu.Interface.al, ItemAction.Codeunit.al, JSInterfaceErrorHandler.Codeunit.al, LocationFilterFrom.Enum.al, Menu.AsyncRequest.Codeunit.al, MoveEntries.Codeunit.al, NewAttractionPrintExp.Codeunit.al, NewEFTReceiptExp.Codeunit.al, NewPOSEditorFeature.Codeunit.al, NewRestaurantPrintExp.Codeunit.al, NewSalesReceiptExp.Codeunit.al, NewVoucherReservation.Codeunit.al, NPEmailPOSReceiptOnSale.Codeunit.al, PauseWorkflow.AsyncRequest.Codeunit.al, PaymentAction.Codeunit.al, PopupMenuAction.Codeunit.al, POSActionManagement.Codeunit.al, POSActionParamBuf.Codeunit.al, POSAfterSaleExecution.Codeunit.al, POSCaptionManagement.Codeunit.al, POSCreditSalesCrMemo.Query.al, POSCreditSalesInvoice.Query.al, POSDragonglass.Page.al, POSDragonglass.Page.tmp1.al, POSDragonglass.Page.tmp2.al, POSDragonglass.Page.tmp3.al, POSDragonglassAPI.Codeunit.al, POSDragonglassRunMethod.Codeunit.al, POSDragonglassTmp4.Page.al, POSDragonglassTmp5.Page.al, POSDSExtenFieldMgt.Codeunit.al, POSDSExtenFieldSetup.Interface.al, POSDSExtenFieldSetup.Page.al, POSDSExtenFieldSetup.Table.al, POSDSExtensionModule.Enum.al, POSFrontEndManagement.Codeunit.al, POSGiveChange.Codeunit.al, POSIUOMUtils.Codeunit.al, POSJavaScriptInterface.Codeunit.al, POSJSONHelper.Codeunit.al, POSJSONManagement.Codeunit.al, POSLineSaleType.Enum.al, POSLocalizedCaption.Table.al, POSLocalizedTableData.Page.al, POSManagePOSUnit.Codeunit.al, POSMenu.Codeunit.al, POSMenuButton.Codeunit.al, POSMethodKiosk.Codeunit.al, POSMethodSetDragonglass.Codeunit.al, POSMethodWysiwyg.Codeunit.al, POSPaymentLine.Codeunit.al, POSPrintReceiptOnSale.Codeunit.al, POSRefreshWorkflows.Codeunit.al, POSRounding.Codeunit.al, POSRunWorkflowCodeunit.al, POSSale.Codeunit.al, POSSale.Table.al, POSSaleLine.Codeunit.al, POSSaleLine.Table.al, POSSaleLineType.Enum.al, POSSaleMediaImageFactBox.Page.al, POSSaleMediaInfo.Table.al, POSSaleMediaInfoList.Page.al, POSSaleOnRunType.Enum.al, POSSalesPrintMgt.Codeunit.al, POSSaleType.Enum.al, POSSecureMetHelperPub.Codeunit.al, POSSecureMethod.Table.al, POSSecureMethodHelper.Codeunit.al, POSSecureMethods.Page.al, POSSecureMethodSvrside.Codeunit.al, POSSelectLangDialog.Page.al, POSSession.Codeunit.al, POSSessionFinalizer.Codeunit.al, POSSetupSafetyCheck.Codeunit.al, POSStatDashboardFeature.Codeunit.al, POSTrackingUtils.Codeunit.al, POSTrackingUtilsPublic.Codeunit.al, POSTurnover.Page.al, POSTurnover.Query.al, POSTurnoverCalcBuffer.Table.al, POSUIManagement.Codeunit.al, POSView.Codeunit.al, POSWebFont.Table.al, POSWebFonts.Page.al, POSWebserviceSessions.Codeunit.al, POSWF20State.Codeunit.al, POSWorkflow.Enum.al, POSWorkflow30.Codeunit.al, POSWorkflowConfig.Codeunit.al, POSWorkflowEvents.Codeunit.al, POSWorkflows20.Codeunit.al, POSWorkflows20Require.Codeunit.al, ProvideContext.AsyncRequest.Codeunit.al, ReportBugAsyncRequest.Codeunit.al, RequireResponse.AsyncRequest.Codeunit.al, ResumeWorkflow.AsyncRequest.Codeunit.al, RetailFeature.Codeunit.al, ScenarioObsoletedFeature.Codeunit.al, SetCaptions.AsyncRequest.Codeunit.al, SetFormat.AsyncRequest.Codeunit.al, SetImage.AsyncRequest.Codeunit.al, SetLoggingLevel.AsyncRequest.Codeunit.al, SetOption.AsyncRequest.Codeunit.al, SetOptions.AsyncRequest.Codeunit.al, SetView.AsyncRequest.Codeunit.al, StargatePackages.AsyncRequest.Codeunit.al, StartTransaction.AsyncRequest.Codeunit.al, SubMenuAction.Codeunit.al, UnknownWorkflow.Codeunit.al, ValidateSecureMethodPassword.AsyncRequest.Codeunit.al, ViewType.Enum.al, WebClientDependencies.Page.al, WebClientDependency.Table.al, WebFont.Codeunit.al, Workflow.AsyncRequest.Codeunit.al, Workflow.Codeunit.al, WorkflowAction.Codeunit.al, WorkflowCaptionBuffer.Codeunit.al, WorkflowStep.Codeunit.al
