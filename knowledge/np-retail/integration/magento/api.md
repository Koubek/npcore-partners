---
type: reference
tags: [integration, magento, np-retail, tables, codeunits, pages, enums, interfaces, xmlports]
relates:
  - integration/magento/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Magento/Payment Gateways/Adyen/AdyenPayByLink.Codeunit.al
  - Application/src/Magento/Payment Gateways/Adyen/AdyenPayByLinkCancelJQ.Codeunit.al
  - Application/src/Magento/Payment Gateways/Adyen/AdyenPayByLinkStatusJQ.Codeunit.al
  - Application/src/Magento/Payment Gateways/Adyen/AdyenPostPaymentLines.Codeunit.al
  - Application/src/Magento/Payment Gateways/Adyen/AdyenRecurringContractJQ.Codeunit.al
  - Application/src/Magento/Payment Gateways/Adyen/AdyenRefundStatusJQ.Codeunit.al
  - Application/src/Magento/PayByLink/DefaultPayByLink.Codeunit.al
  - Application/src/Magento/EmailRetailVouchersto.Enum.al
  - Application/src/Magento/ExternalPaymentTypeID.Table.al
  - Application/src/Magento/ExternalPaymentTypeIDs.Page.al
  - Application/src/Magento/ImportMagentoDescription.XmlPort.al
  - Application/src/Magento/Payment Gateways/_public/IPaymentGateway.Interface.al
  - Application/src/Magento/MagCustOptPriceType.Enum.al
  - Application/src/Magento/MagDisConfSalesType.Enum.al
  - Application/src/Magento/MagDisplayConfigType.Enum.al
  - Application/src/Magento/MagentoApiUsernameType.Enum.al
  - Application/src/Magento/MagentoAttrGroupList.Page.al
  - Application/src/Magento/MagentoAttribute.Table.al
  - Application/src/Magento/MagentoAttributeGroup.Page.al
  - Application/src/Magento/MagentoAttributeGroup.Table.al
  - Application/src/Magento/MagentoAttributes.Page.al
  - Application/src/Magento/MagentoAttributeSet.Table.al
  - Application/src/Magento/MagentoAttributeSetList.Page.al
  - Application/src/Magento/MagentoAttributeSets.Page.al
  - Application/src/Magento/MagentoAttrLabel.Table.al
  - Application/src/Magento/MagentoAttrLabels.Page.al
  - Application/src/Magento/MagentoAttrList.Page.al
  - Application/src/Magento/_public/MagentoAttrSetMgt.Codeunit.al
  - Application/src/Magento/MagentoAttrSetValue.Table.al
  - Application/src/Magento/MagentoAttrSetValues.Page.al
  - Application/src/Magento/MagentoAvailInvExp.XmlPort.al
  - Application/src/Magento/_public/MagentoBrand.Table.al
  - Application/src/Magento/_public/MagentoBrandCard.Page.al
  - Application/src/Magento/_public/MagentoBrands.Page.al
  - Application/src/Magento/MagentoCategories.Page.al
  - Application/src/Magento/_public/MagentoCategory.Table.al
  - Application/src/Magento/MagentoCategoryCard.Page.al
  - Application/src/Magento/_public/MagentoCategoryLink.Table.al
  - Application/src/Magento/MagentoCategoryLinks.Page.al
  - Application/src/Magento/MagentoCategoryList.Page.al
  - Application/src/Magento/MagentoCategoryMgt.Codeunit.al
  - Application/src/Magento/MagentoChartMgt.Codeunit.al
  - Application/src/Magento/MagentoChildCategories.Page.al
  - Application/src/Magento/MagentoContactPmtMeth.Table.al
  - Application/src/Magento/MagentoContactShipToAdr.Enum.al
  - Application/src/Magento/MagentoContactShipToAdr.Table.al
  - Application/src/Magento/MagentoContactShptMeth.Table.al
  - Application/src/Magento/MagentoContPmtMethods.Page.al
  - Application/src/Magento/MagentoContShipToList.Page.al
  - Application/src/Magento/MagentoContShptMethods.Page.al
  - Application/src/Magento/MagentoCustomerGroup.Table.al
  - Application/src/Magento/MagentoCustomerGroups.Page.al
  - Application/src/Magento/MagentoCustomerMapping.Enum.al
  - Application/src/Magento/MagentoCustomerMapping.Page.al
  - Application/src/Magento/MagentoCustomerMapping.Table.al
  - Application/src/Magento/_public/MagentoCustomOption.Table.al
  - Application/src/Magento/_public/MagentoCustomOptionCard.Page.al
  - Application/src/Magento/_public/MagentoCustomOptionList.Page.al
  - Application/src/Magento/_public/MagentoCustomOptnValue.Table.al
  - Application/src/Magento/_public/MagentoCustomOptSubform.Page.al
  - Application/src/Magento/MagentoCustUpdateMode.Enum.al
  - Application/src/Magento/MagentoDisplayConfig.Page.al
  - Application/src/Magento/_public/MagentoDisplayConfig.Table.al
  - Application/src/Magento/MagentoDisplayGroup.Table.al
  - Application/src/Magento/MagentoDisplayGroups.Page.al
  - Application/src/Magento/MagentoDocumentExport.XmlPort.al
  - Application/src/Magento/MagentoDragDropPicAddin.Page.al
  - Application/src/Magento/MagentoFeature.Codeunit.al
  - Application/src/Magento/_public/MagentoFunctions.Codeunit.al
  - Application/src/Magento/MagentoGenSetupBuffer.Page.al
  - Application/src/Magento/MagentoGenSetupBuffer.Table.al
  - Application/src/Magento/_public/MagentoGenSetupMgt.Codeunit.al
  - Application/src/Magento/MagentoImpRetOrder.Codeunit.al
  - Application/src/Magento/MagentoInvCompanies.Page.al
  - Application/src/Magento/_public/MagentoInvCompany.Table.al
  - Application/src/Magento/MagentoInvNpXmlValue.Codeunit.al
  - Application/src/Magento/MagentoInvSetApi.XmlPort.al
  - Application/src/Magento/MagentoItemAttr.Page.al
  - Application/src/Magento/_public/MagentoItemAttr.Table.al
  - Application/src/Magento/MagentoItemAttrValue.Enum.al
  - Application/src/Magento/_public/MagentoItemAttrValue.Table.al
  - Application/src/Magento/MagentoItemAttrValues.Page.al
  - Application/src/Magento/MagentoItemCOPreview.Page.al
  - Application/src/Magento/_public/MagentoItemCstmOptions.Page.al
  - Application/src/Magento/_public/MagentoItemCustomOption.Table.al
  - Application/src/Magento/MagentoItemCustomType.Enum.al
  - Application/src/Magento/_public/MagentoItemMgt.Codeunit.al
  - Application/src/Magento/MagentoItemPictFactbox.Page.al
  - Application/src/Magento/MagentoItemPictList.Page.al
  - Application/src/Magento/_public/MagentoItmCstmOptValue.Page.al
  - Application/src/Magento/_public/MagentoItmCstmOptValue.Table.al
  - Application/src/Magento/MagentoLookupRetOrder.Codeunit.al
  - Application/src/Magento/MagentoLookupSalesOrder.Codeunit.al
  - Application/src/Magento/_public/MagentoMgt.Codeunit.al
  - Application/src/Magento/MagentoMiniaturePicture.Enum.al
  - Application/src/Magento/MagentoNcTaskCardMgt.Codeunit.al
  - Application/src/Magento/MagentoNpXmlExclVat.Codeunit.al
  - Application/src/Magento/MagentoNpXmlExtItem.Codeunit.al
  - Application/src/Magento/MagentoNpXmlFIK.Codeunit.al
  - Application/src/Magento/MagentoNpXmlFirstname.Codeunit.al
  - Application/src/Magento/MagentoNpXmlGenChildMgt.Codeunit.al
  - Application/src/Magento/MagentoNpxmlItemCrossRef.Codeunit.al
  - Application/src/Magento/MagentoNpXmlLastname.Codeunit.al
  - Application/src/Magento/MagentoNpXmlQtyIncr.Codeunit.al
  - Application/src/Magento/MagentoNpXmlSetupMgt.Codeunit.al
  - Application/src/Magento/MagentoNpXmlStockQty.Codeunit.al
  - Application/src/Magento/MagentoNpXmlStockStatus.Codeunit.al
  - Application/src/Magento/MagentoNpXmlTriggerMgt.Codeunit.al
  - Application/src/Magento/MagentoNpXmlValueMgt.Codeunit.al
  - Application/src/Magento/MagentoOrderStatus.Enum.al
  - Application/src/Magento/MagentoOrderStatus.Page.al
  - Application/src/Magento/MagentoOrderStatus.Table.al
  - Application/src/Magento/MagentoOrderStatusMgt.Codeunit.al
  - Application/src/Magento/_public/MagentoPaymentGateway.Table.al
  - Application/src/Magento/MagentoPaymentGateways.Page.al
  - Application/src/Magento/_public/MagentoPaymentLine.Table.al
  - Application/src/Magento/_public/MagentoPaymentLineList.Page.al
  - Application/src/Magento/_public/MagentoPaymentMapping.Page.al
  - Application/src/Magento/_public/MagentoPaymentMapping.Table.al
  - Application/src/Magento/MagentoPaymentType.Enum.al
  - Application/src/Magento/_public/MagentoPictLinkSubform.Page.al
  - Application/src/Magento/_public/MagentoPicture.Table.al
  - Application/src/Magento/_public/MagentoPictureLink.Table.al
  - Application/src/Magento/MagentoPictureMgt.Codeunit.al
  - Application/src/Magento/MagentoPictures.Page.al
  - Application/src/Magento/MagentoPictureType.Enum.al
  - Application/src/Magento/MagentoPicVarietyType.Enum.al
  - Application/src/Magento/Payment Gateways/Adyen/MagentoPmtAdyenMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Bambora/MagentoPmtBamboraMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Dibs/MagentoPmtDibsMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Nets Easy/MagentoPmtEasyNetsMgt.Codeunit.al
  - Application/src/Magento/_public/MagentoPmtMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Netaxept/MagentoPmtNetaxeptMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Quickpay/MagentoPmtQuickpayMgt.Codeunit.al
  - Application/src/Magento/_public/MagentoPostOnImportSetup.Table.al
  - Application/src/Magento/MagentoPostPaymentLine.Codeunit.al
  - Application/src/Magento/MagentoProductRelation.Table.al
  - Application/src/Magento/MagentoProductRelations.Page.al
  - Application/src/Magento/MagentoProjAvailBalan.Codeunit.al
  - Application/src/Magento/MagentoRetailActivities.Page.al
  - Application/src/Magento/MagentoRetailCmnMgt.Codeunit.al
  - Application/src/Magento/MagentoRetOrderImport.XmlPort.al
  - Application/src/Magento/MagentoSalesChart.Page.al
  - Application/src/Magento/MagentoSalesOrderImport.XmlPort.al
  - Application/src/Magento/_public/MagentoSalesOrderMgt.Codeunit.al
  - Application/src/Magento/_public/MagentoSelectFiltMgt.Codeunit.al
  - Application/src/Magento/_public/MagentoSetup.Page.al
  - Application/src/Magento/_public/MagentoSetup.Table.al
  - Application/src/Magento/MagentoSetupEventSub.Table.al
  - Application/src/Magento/MagentoSetupEventSubs.Page.al
  - Application/src/Magento/_public/MagentoSetupMgt.Codeunit.al
  - Application/src/Magento/MagentoSetupPostOnImport.Page.al
  - Application/src/Magento/_public/MagentoShipmentMapping.Page.al
  - Application/src/Magento/_public/MagentoShipmentMapping.Table.al
  - Application/src/Magento/_public/MagentoStore.Table.al
  - Application/src/Magento/MagentoStoreInv.XmlPort.al
  - Application/src/Magento/_public/MagentoStoreItem.Table.al
  - Application/src/Magento/MagentoStoreItemList.Page.al
  - Application/src/Magento/_public/MagentoStoreItems.Page.al
  - Application/src/Magento/_public/MagentoStoreItemsCard.Page.al
  - Application/src/Magento/MagentoStoreList.Page.al
  - Application/src/Magento/MagentoStores.Page.al
  - Application/src/Magento/MagentoStoreSubform.Page.al
  - Application/src/Magento/MagentoTaxClass.Table.al
  - Application/src/Magento/MagentoTaxClasses.Page.al
  - Application/src/Magento/MagentoTaxClassType.Enum.al
  - Application/src/Magento/MagentoTop10Customers.Page.al
  - Application/src/Magento/MagentoTop10ItemsbyQty.Page.al
  - Application/src/Magento/MagentoUpgrade.Codeunit.al
  - Application/src/Magento/MagentoVariantSystem.Enum.al
  - Application/src/Magento/MagentoVATBusGroup.Table.al
  - Application/src/Magento/MagentoVATBusGroups.Page.al
  - Application/src/Magento/MagentoVATProdGroup.Table.al
  - Application/src/Magento/MagentoVATProdGroups.Page.al
  - Application/src/Magento/MagentoVersion.Enum.al
  - Application/src/Magento/MagentoVideoLink.Table.al
  - Application/src/Magento/MagentoVideoLinks.Page.al
  - Application/src/Magento/_public/MagentoWebservice.Codeunit.al
  - Application/src/Magento/_public/MagentoWebsite.Table.al
  - Application/src/Magento/MagentoWebsiteLink.Table.al
  - Application/src/Magento/MagentoWebsiteLinks.Page.al
  - Application/src/Magento/MagentoWebsiteList.Page.al
  - Application/src/Magento/_public/MagentoWebsites.Page.al
  - Application/src/Magento/MagGiftVoucherActiv.Enum.al
  - Application/src/Magento/MagProdRelationType.Enum.al
  - Application/src/Magento/MagSetupEventSubType.Enum.al
  - Application/src/Magento/MagShipmentFeeType.Enum.al
  - Application/src/Magento/MagStoreItemVisibility.Enum.al
  - Application/src/Magento/Payment Gateways/NPLoyalty_Discount/NPLoyaltyDiscountHandler.Codeunit.al
  - Application/src/Magento/Payment Gateways/NPLoyalty_Discount/NPLoyaltyDiscountMgt.Codeunit.al
  - Application/src/Magento/_public/PayByLink.Interface.al
  - Application/src/Magento/PayByLink/PayByLinkDialog.Page.al
  - Application/src/Magento/PayByLink/PayByLinkSetup.Table.al
  - Application/src/Magento/PayByLink/PayByLinkSetupCard.Page.al
  - Application/src/Magento/_public/PaymentLineMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Adyen/PGAdyenSetup.Table.al
  - Application/src/Magento/Payment Gateways/Adyen/PGAdyenSetupCard.Page.al
  - Application/src/Magento/Payment Gateways/Bambora/PGBamboraSetup.Table.al
  - Application/src/Magento/Payment Gateways/Bambora/PGBamboraSetupCard.Page.al
  - Application/src/Magento/Payment Gateways/Dibs/PGDibsSetup.Table.al
  - Application/src/Magento/Payment Gateways/Dibs/PGDibsSetupCard.Page.al
  - Application/src/Magento/Payment Gateways/_public/PGIntegrations.Enum.al
  - Application/src/Magento/Payment Gateways/PGInteractionLogEntries.Page.al
  - Application/src/Magento/Payment Gateways/PGInteractionLogEntry.Table.al
  - Application/src/Magento/Payment Gateways/PGInteractionsLogMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Netaxept/PGNetaxeptSetup.Table.al
  - Application/src/Magento/Payment Gateways/Netaxept/PGNetaxeptSetupCard.Page.al
  - Application/src/Magento/Payment Gateways/Nets Easy/PGNetsEasySetup.Table.al
  - Application/src/Magento/Payment Gateways/Nets Easy/PGNetsEasySetupCard.Page.al
  - Application/src/Magento/Payment Gateways/_public/PGOperationStatus.Enum.al
  - Application/src/Magento/Payment Gateways/_public/PGPaymentRequest.Table.al
  - Application/src/Magento/Payment Gateways/_public/PGPaymentResponse.Table.al
  - Application/src/Magento/PGPostingLogEntries.Page.al
  - Application/src/Magento/PGPostingLogEntry.Table.al
  - Application/src/Magento/Payment Gateways/Quickpay/PGQuickpaySetup.Table.al
  - Application/src/Magento/Payment Gateways/Quickpay/PGQuickpaySetupCard.Page.al
  - Application/src/Magento/Payment Gateways/Stripe/PGStripeIntegrationMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Stripe/PGStripeSetup.Table.al
  - Application/src/Magento/Payment Gateways/Stripe/PGStripeSetupCard.Page.al
  - Application/src/Magento/Payment Gateways/PGTryCancelPayment.Codeunit.al
  - Application/src/Magento/Payment Gateways/PGTryCapturePayment.Codeunit.al
  - Application/src/Magento/Payment Gateways/PGTryRefundPayment.Codeunit.al
  - Application/src/Magento/Payment Gateways/Vipps/PGVippsIntegrationMgt.Codeunit.al
  - Application/src/Magento/Payment Gateways/Vipps/PGVippsSetup.Table.al
  - Application/src/Magento/Payment Gateways/Vipps/PGVippsSetupCard.Page.al
  - Application/src/Magento/StockCalculationMethod.Enum.al
  - Application/src/Magento/PayByLink/UnknownPayByLink.Codeunit.al
---

# Magento — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6151189 | "NPR External Payment Type ID" | External Payment Type Identifier | "External Payment Type ID" | — |
| 6151426 | "NPR Magento Attribute" | Magento Attribute | "Attribute ID" | — |
| 6151440 | "NPR Magento Attribute Group" | Magento Attribute Group | "Attribute Group ID" | — |
| 6151428 | "NPR Magento Attribute Set" | Magento Attribute Set | "Attribute Set ID" | — |
| 6151427 | "NPR Magento Attr. Label" | Magento Attribute Label | "Attribute ID", "Line No." | — |
| 6151429 | "NPR Magento Attr. Set Value" | Magento Attribute Set Value | "Attribute Set ID", "Attribute ID", "Attribute Group ID" | — |
| 6151416 | "NPR Magento Brand" | Magento Brand | Id | — |
| 6151414 | "NPR Magento Category" | Magento Category | Id | — |
| 6151415 | "NPR Magento Category Link" | Magento Category Link | "Item No.", "Category Id" | — |
| 6151433 | "NPR Magento Contact Pmt.Meth." | Magento Contact Payment Method | "Contact No.", "External Payment Method Code" | — |
| 6151442 | "NPR Magento Contact ShipToAdr." | Magento Contact Ship-to Adrs. | "Customer No.", "Ship-to Code", "Created By Contact No." | — |
| 6151434 | "NPR Magento Contact Shpt.Meth." | Magento Contact Shipment Method | "Contact No.", "External Shipment Method Code" | — |
| 6151432 | "NPR Magento Customer Group" | Magento Customer Group | "Code" | — |
| 6151445 | "NPR Magento Customer Mapping" | Magento Customer Mapping | "Country/Region Code", "Post Code" | — |
| 6151422 | "NPR Magento Custom Option" | Magento Custom Option | "No." | — |
| 6151423 | "NPR Magento Custom Optn. Value" | Magento Custom Option Value | "Custom Option No.", "Line No." | — |
| 6151435 | "NPR Magento Display Config" | Magento Display Config | "No.", Type, "Sales Code", "Sales Type", "Starting Date", "Starting Time", "Ending Date", "Ending Time" | — |
| 6151436 | "NPR Magento Display Group" | Magento Display Group | "Code" | — |
| 6151400 | "NPR Magento Gen. Setup Buffer" | Magento Generic Setup Buffer | "Line No." | — |
| 6151410 | "NPR Magento Inv. Company" | Magento Inventory Company | "Company Name" | — |
| 6151430 | "NPR Magento Item Attr." | Magento Item Attribute | "Attribute Set ID", "Attribute ID", "Item No.", "Variant Code" | — |
| 6151431 | "NPR Magento Item Attr. Value" | Magento Item Attribute Value | "Attribute ID", "Item No.", "Variant Code", "Attribute Label Line No." | — |
| 6151424 | "NPR Magento Item Custom Option" | Item Custom Option | "Item No.", "Custom Option No." | — |
| 6151425 | "NPR Magento Itm Cstm Opt.Value" | Item Custom Option Value | "Item No.", "Custom Option No.", "Custom Option Value Line No." | — |
| 6151407 | "NPR Magento Order Status" | Magento Order Status | "Order No." | — |
| 6151413 | "NPR Magento Payment Gateway" | Magento Payment Gateway | "Code" | — |
| 6151409 | "NPR Magento Payment Line" | Payment Line | "Document Table No.", "Document Type", "Document No.", "Line No." | — |
| 6151437 | "NPR Magento Payment Mapping" | Magento Payment Mapping | "External Payment Method Code", "External Payment Type" | — |
| 6151411 | "NPR Magento Picture" | Magento Picture | Type, Name | — |
| 6151412 | "NPR Magento Picture Link" | Magento Picture Link | "Item No.", "Line No." | — |
| 6151462 | "NPR Magento PostOnImport Setup" | Magento Post on Import Setup | Type, "No." | — |
| 6151417 | "NPR Magento Product Relation" | Magento Product Relation | "Relation Type", "From Item No.", "To Item No." | — |
| 6151401 | "NPR Magento Setup" | Magento Setup | "Primary Key" | — |
| 6151418 | "NPR Magento Setup Event Sub." | Magento Setup Event Subscription | Type, "Codeunit ID", "Function Name" | — |
| 6151438 | "NPR Magento Shipment Mapping" | Magento Shipment Mapping | "External Shipment Method Code" | — |
| 6151404 | "NPR Magento Store" | Magento Store | "Code" | — |
| 6151420 | "NPR Magento Store Item" | Magento Store Item | "Item No.", "Store Code" | — |
| 6151408 | "NPR Magento Tax Class" | Magento Tax Class | Name, Type | — |
| 6151405 | "NPR Magento VAT Bus. Group" | Magento VAT Business Group | "VAT Business Posting Group" | — |
| 6151406 | "NPR Magento VAT Prod. Group" | Magento VAT Product Group | "VAT Product Posting Group" | — |
| 6151439 | "NPR Magento Video Link" | Magento Video Link | "Item No.", "Line No." | — |
| 6151402 | "NPR Magento Website" | Magento Website | "Code" | — |
| 6151403 | "NPR Magento Website Link" | Magento Website Link | "Website Code", "Item No.", "Variant Code" | — |
| 6150892 | "NPR Pay by Link Setup" | NP Pay By Link Setup | "Primary Key" | — |
| 6151466 | "NPR PG Adyen Setup" | Payment Gateway Adyen Setup | "Code" | — |
| 6151472 | "NPR PG Bambora Setup" | Magento Payment Gateway Bambora Setup | "Code" | — |
| 6151467 | "NPR PG Dibs Setup" | Magento Payment Gateway Dibs Setup | "Code" | — |
| 6151473 | "NPR PG Interaction Log Entry" | Payment Gateways Interactions Log | "Entry No." | — |
| 6151469 | "NPR PG Netaxept Setup" | Magento Payment Gateway Netaxept Setup | "Code" | — |
| 6151470 | "NPR PG Nets Easy Setup" | Payment Gateway EasyNets Setup | "Code" | — |
| 6059813 | "NPR PG Payment Request" | Payment Gateway Request | — | — |
| 6059836 | "NPR PG Payment Response" | Payment Gateway Response | — | — |
| 6150885 | "NPR PG Posting Log Entry" | Payment Gateways Posting Log  | "Entry No." | — |
| 6151471 | "NPR PG Quickpay Setup" | Quickpay Setup | "Code" | — |
| 6150693 | "NPR PG Stripe Setup" | Stripe Setup | "Code" | — |
| 6059841 | "NPR PG Vipps Setup" | Vipps Setup | "Code" | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6184956 | "NPR Adyen Pay By Link" |  | SetDocument, SetShowDialog, IssuePayByLink, CancelPayByLink | — |
| 6248237 | "NPR Adyen PayByLink Cancel JQ" |  | SetCancelRequest | — |
| 6184933 | "NPR Adyen PayByLink Status JQ" |  | IsSetupEnabled | — |
| 6184929 | "NPR Adyen Post Payment Lines" |  | UpdateMagentoPaymentLine, ProcessPaymentLine | — |
| 6185118 | "NPR Adyen Recurring ContractJQ" |  | — | — |
| 6248227 | "NPR Adyen Refund Status JQ" |  | — | — |
| 6184959 | "NPR Default PayByLink" |  | SetDocument, SetShowDialog, IssuePayByLink, CancelPayByLink | — |
| 6151412 | "NPR Magento Attr. Set Mgt." |  | EditItemAttributes, CreateMagentoAttribute, CreateMagentoAttribute, FindLastAttributeId, GetMagentoAttribute | — |
| 6151406 | "NPR Magento Category Mgt." |  | ItemCountDrillDown | — |
| 6151480 | "NPR Magento Chart Mgt." |  | TurnOver_Revenue, Setdate | — |
| 6248453 | "NPR Magento Feature" |  | AddFeature, IsFeatureEnabled, SetFeatureEnabled, GetFeatureId, GetFeatureDescription | — |
| 6151404 | "NPR Magento Functions" |  | LookupPicture, NaviEditorEditBlob, NaviEditorEditTempBlob, ReplaceSpecialChar, SeoFormat | — |
| 6151400 | "NPR Magento Gen. Setup Mgt." |  | AddGenericBufferElement, ValidateValue | — |
| 6151420 | "NPR Magento Imp. Ret. Order" |  | RunProcessImportEntry, ImportSalesReturnOrders, ImportSalesReturnOrder, InsertCommentLine, InsertComments | — |
| 6151408 | "NPR Magento Inv. NpXml Value" |  | CalcMagentoInventory, CalcMagentoInventoryCompany, SetRecInfo | — |
| 6151407 | "NPR Magento Item Mgt." |  | DeleteMagentoData, SetupMagentoData, AutoUpdateSeoLink, SetupMultiStoreData, ResetStoresVisibility | — |
| 6151421 | "NPR Magento Lookup Ret.Order" |  | RunLookupImportEntry, GetReturnOrderDocuments, RunPageReturnOrder, RunPageSalesCrMemo | — |
| 6151414 | "NPR Magento Lookup SalesOrder" |  | RunLookupImportEntry, GetOrderDocuments, RunPageSalesOrder, RunPageSalesInvoice | — |
| 6151402 | "NPR Magento Mgt." |  | GetCustTemplate, GetCustConfigTemplate, GetCustomerConfigTemplate, GetVATBusPostingGroup, GetFixedCustomerNo | — |
| 6151415 | "NPR Magento Nc Task Card Mgt." |  | RunSourceCardEvent, GetRelatedRecRef | — |
| 6151454 | "NPR Magento NpXml ExclVat" |  | GetExclVat, GetMagentoStore | — |
| 6151457 | "NPR Magento NpXml Ext. Item" |  | GetVariantCode | — |
| 6151453 | "NPR Magento NpXml FIK" |  | GetFIK | — |
| 6151455 | "NPR Magento NpXml Firstname" |  | GetFirstname, SetRecRefCalcFieldFilter | — |
| 6151448 | "NPR Magento NpXml Gen.ChildMgt" |  | SetupVariantTranslation, FilterVariantsForStockUpdate, IsElementSubscriber, CurrCodeunitId | — |
| 6151458 | "NPR Magento Npxml ItemCrossRef" |  | GetItemReferenceNo | — |
| 6151456 | "NPR Magento NpXml Lastname" |  | GetLastname, SetRecRefCalcFieldFilter | — |
| 6151459 | "NPR Magento NpXml Qty. Incr." |  | CalcQtyIncrement, SetRecInfo | — |
| 6151450 | "NPR Magento NpXml Setup Mgt" |  | SetupExistingTemplate | — |
| 6151451 | "NPR Magento NpXml Stock Qty" |  | — | — |
| 6151452 | "NPR Magento NpXml Stock Status" |  | — | — |
| 6151447 | "NPR Magento NpXml Trigger Mgt." |  | MagentoStore, NonMagentoStore, IsMagentoStore, IsSubscriber, CurrCodeunitId | — |
| 6151449 | "NPR Magento NpXml Value Mgt." |  | ConvertSpecialChars, ReplaceSpecialChar, GetStockQty, GetStockStatus, IsSubscriber | — |
| 6151405 | "NPR Magento Order Status Mgt." |  | Cu80OnAfterPostSalesDoc, SalesHeaderOnInsert, SalesHeaderOnDelete, IsTemporary | — |
| 6151419 | "NPR Magento Picture Mgt." |  | DragDropPicture, SendMagentoPicture, OnDragDropPicture, UploadMagentoPicture, CurrCodeunitId | — |
| 6151422 | "NPR Magento Pmt. Adyen Mgt." |  | CaptureInternal, CancelInternal, RefundInternal, CancelOutstandingPaymentLines, CalculatePSPAmount | — |
| 6151472 | "NPR Magento Pmt. Bambora Mgt." |  | CaptureInternal, RefundInternal, CancelInternal, GetBamboraAmount, GetHttpClient | — |
| 6151418 | "NPR Magento Pmt. Dibs Mgt." |  | CaptureInternal, AppendText, CalcMD5Key, ConvertToDIBSAmount, SetupWebRequest | — |
| 6151427 | "NPR Magento Pmt. EasyNets Mgt" |  | CapturePayment, RefundPayment, CancelPayment, GetJsonText, GetChargeId | — |
| 6151416 | "NPR Magento Pmt. Mgt." |  | UpdatePaymentLineWithEventResponse, SetProcessingOptions, CopySalesDoc, SalesHeaderOnDelete, CheckPayment | — |
| 6151424 | "NPR Magento Pmt. Netaxept Mgt." |  | CancelInternal, CaptureInternal, RefundInternal, RequestProcessing, GetApiUrl | — |
| 6151417 | "NPR Magento Pmt. Quickpay Mgt." |  | CaptureInternal, RefundInternal, CancelInternal, TestConnection, SetHeader | — |
| 6248374 | "NPR Magento Post Payment Line" |  | — | — |
| 6151425 | "NPR Magento Proj.Avail.Balan." |  | CalcProjectedAvailableInventory, RecRef2TempSalesLine, RecRef2TempPurchLine, RecRef2TempReqLine, RecRef2TempAssemblyHeader | — |
| 6151426 | "NPR Magento Retail Cmn. Mgt." |  | OnInsertRetailCampaignLine, OnModifyRetailCampaignLine, OnDeleteRetailCampaignLine, RetailCampaignLine2MagentoCategory, OnInsertPeriodDiscountLine | — |
| 6151413 | "NPR Magento Sales Order Mgt." |  | RunProcessImportEntry, ImportSalesOrders, ImportSalesOrder, InsertSalesOrder, InsertCollectDocument | — |
| 6151411 | "NPR Magento Select. Filt. Mgt." |  | AddQuotes, GetSelectionFilter, GetSelectionFilterForItemGroup, GetSelectionFilterForBrand | — |
| 6151401 | "NPR Magento Setup Mgt." |  | CreateStores, CreateRootItemGroup, SetDefaultItemGroupRoots, SetupImportTypeOrder, SetupImportTypeReturnOrder | — |
| 6248468 | "NPR Magento Upgrade" |  | EnableMagentoFeature | — |
| 6151403 | "NPR Magento Webservice" |  | GeneratePdfCreditMemo, GeneratePdfOrder, GeneratePdfInvoice, GeneratePdfCustomerStatement, GeneratePdfShipment | — |
| 6248662 | "NPR NPLoyalty Discount Handler" |  | CaptureInternal, RefundInternal, CancelInternal, AddPaymentLinetoBuffer, GetReservationEntryFromAuthorization | — |
| 6248623 | "NPR NP Loyalty Discount Mgt" |  | CreateDiscountSalesLine, GetMembershipId, OnAfterCreateSalesDiscountLine | OnAfterCreateSalesDiscountLine |
| 6150650 | "NPR Payment Line Mgt." |  | MagentoPmtMgt_CaptureSalesInvoice, CaptureSalesInvoice, CaptureSalesHeader, RefundSalesCreditMemo, RefundSalesHeader | — |
| 6151473 | "NPR PG Interactions Log Mgt." |  | LogCaptureStart, LogRefundStart, LogCancelStart, LogPayByLinkStart, LogPayByLinkCancelStart | — |
| 6184578 | "NPR PG Stripe Integration Mgt." |  | CancelInternal, CaptureInternal, RefundInternal, InitWebHeader, InitUrlAndTransactionText | — |
| 6060068 | "NPR PG Try Cancel Payment" |  | CancelPayment, SetParameters, GetParameters | — |
| 6060066 | "NPR PG Try Capture Payment" |  | CapturePayment, SetParameters, GetParameters | — |
| 6060067 | "NPR PG Try Refund Payment" |  | RefundPayment, SetParameters, GetParameters | — |
| 6150920 | "NPR PG Vipps Integration Mgt." |  | CancelInternal, CaptureInternal, RefundInternal, InitWebRequest, InitUrlAndTransactionText | — |
| 6184957 | "NPR Unknown PayByLink" |  | SetDocument, SetShowDialog, IssuePayByLink, CancelPayByLink | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6185064 | "NPR External Payment Type IDs" | External Payment Type Identifiers | "NPR External Payment Type ID" | — |
| 6151458 | "NPR Magento Attr. Group List" | Attribute Groups | "NPR Magento Attribute Group" | — |
| 6151457 | "NPR Magento Attribute Group" | Attribute Group | "NPR Magento Attribute Group" | — |
| 6151431 | "NPR Magento Attributes" | Attributes | "NPR Magento Attribute" | — |
| 6151433 | "NPR Magento Attribute Set List" | Attribute Sets | "NPR Magento Attribute Set" | — |
| 6151434 | "NPR Magento Attribute Sets" | Attribute Sets | "NPR Magento Attribute Set" | — |
| 6151432 | "NPR Magento Attr. Labels" | Attribute Labels | "NPR Magento Attr. Label" | — |
| 6151430 | "NPR Magento Attr. List" | Attributes | "NPR Magento Attribute" | — |
| 6151435 | "NPR Magento Attr. Set Values" | Attribute Set Values | "NPR Magento Attr. Set Value" | — |
| 6151419 | "NPR Magento Brand Card" | Brand Card | "NPR Magento Brand" | — |
| 6151420 | "NPR Magento Brands" | Brands | "NPR Magento Brand" | — |
| 6151416 | "NPR Magento Categories" | Magento Categories | "NPR Magento Category" | — |
| 6151414 | "NPR Magento Category Card" | Magento Category Card | "NPR Magento Category" | — |
| 6151418 | "NPR Magento Category Links" | Magento Category Links | "NPR Magento Category Link" | — |
| 6151415 | "NPR Magento Category List" | Magento Category List | "NPR Magento Category" | — |
| 6151417 | "NPR Magento Child Categories" | Magento Child Categories | "NPR Magento Category" | — |
| 6151441 | "NPR Magento Cont.Pmt.Methods" | Contact Payment Methods | "NPR Magento Contact Pmt.Meth." | — |
| 6151459 | "NPR Magento Cont. ShipTo List" | Magento Contact Ship-to List | "NPR Magento Contact ShipToAdr." | — |
| 6151442 | "NPR Magento Cont.Shpt.Methods" | Contact Shipment Methods | "NPR Magento Contact Shpt.Meth." | — |
| 6151440 | "NPR Magento Customer Groups" | Customer Groups | "NPR Magento Customer Group" | — |
| 6151461 | "NPR Magento Customer Mapping" | Magento Customer Mapping | "NPR Magento Customer Mapping" | — |
| 6151425 | "NPR Magento Custom Option Card" | Custom Option Card | "NPR Magento Custom Option" | — |
| 6151426 | "NPR Magento Custom Option List" | Custom Options | "NPR Magento Custom Option" | — |
| 6151427 | "NPR Magento Custom Opt.Subform" | Magento Custom Option Subform | "NPR Magento Custom Optn. Value" | — |
| 6151443 | "NPR Magento Display Config" | Display Config | "NPR Magento Display Config" | — |
| 6151444 | "NPR Magento Display Groups" | Magento Display Groups | "NPR Magento Display Group" | — |
| 6151451 | "NPR Magento DragDropPic. Addin" |   | "NPR Magento Picture" | — |
| 6151400 | "NPR Magento Gen. Setup Buffer" | Generic Setup | "NPR Magento Gen. Setup Buffer" | — |
| 6151402 | "NPR Magento Inv. Companies" | Inventory Companies | "NPR Magento Inv. Company" | — |
| 6151436 | "NPR Magento Item Attr." | Item Attributes | "NPR Magento Item Attr." | — |
| 6151437 | "NPR Magento Item Attr. Values" | Item Attribute Values | "NPR Magento Item Attr. Value" | — |
| 6150803 | "NPR Magento Item CO Preview" | Items with Magento Custom Option | "NPR Magento Item Custom Option" | — |
| 6151428 | "NPR Magento Item Cstm Options" | Magento Item Custom Options | "NPR Magento Item Custom Option" | — |
| 6151447 | "NPR Magento Item Pict. Factbox" | Webshop picture | "Item" | — |
| 6151413 | "NPR Magento Item Pict. List" | Item Pictures | "Name/Value Buffer" | — |
| 6151429 | "NPR Magento Itm Cstm Opt.Value" | Magento Item Custom Option Value | "NPR Magento Itm Cstm Opt.Value" | — |
| 6151452 | "NPR Magento Order Status" | Order Status | "NPR Magento Order Status" | — |
| 6151453 | "NPR Magento Payment Gateways" | Payment Gateways | "NPR Magento Payment Gateway" | — |
| 6151454 | "NPR Magento Payment Line List" | Payment Line List | "NPR Magento Payment Line" | — |
| 6151448 | "NPR Magento Payment Mapping" | Payment Method Mapping | "NPR Magento Payment Mapping" | — |
| 6151412 | "NPR Magento Pict. Link Subform" | Magento Picture Link Subform | "NPR Magento Picture Link" | — |
| 6151411 | "NPR Magento Pictures" | Magento Pictures | "NPR Magento Picture" | — |
| 6151421 | "NPR Magento Product Relations" | Product Relations | "NPR Magento Product Relation" | — |
| 6151481 | "NPR Magento Retail Activities" | NaviConnect Activities | "NPR Magento Cue" | — |
| 6151482 | "NPR Magento Sales Chart" | Margin/Turnover by Period | "Business Chart Buffer" | — |
| 6151401 | "NPR Magento Setup" | Magento Setup | "NPR Magento Setup" | — |
| 6151422 | "NPR Magento Setup Event Subs." | Magento Setup Event Subscriptions | "NPR Magento Setup Event Sub." | — |
| 6151462 | "NPR Magento Setup PostOnImport" | Post on Import Setup | "NPR Magento PostOnImport Setup" | — |
| 6151449 | "NPR Magento Shipment Mapping" | Shipment Method Mapping | "NPR Magento Shipment Mapping" | — |
| 6151439 | "NPR Magento Store Item List" | Magento Store Item List | "NPR Magento Store Item" | — |
| 6151445 | "NPR Magento Store Items" | Magento Webshop Items | "NPR Magento Store Item" | — |
| 6014425 | "NPR Magento Store Items Card" | Magento Store Items Card | "NPR Magento Store Item" | — |
| 6151438 | "NPR Magento Store List" | Magento Store List | "NPR Magento Store" | — |
| 6151406 | "NPR Magento Stores" | Stores | "NPR Magento Store" | — |
| 6151408 | "NPR Magento Store Subform" | Magento Store Subform | "NPR Magento Store" | — |
| 6151407 | "NPR Magento Tax Classes" | Tax Classes | "NPR Magento Tax Class" | — |
| 6151483 | "NPR Magento Top 10 Customers" | Top 10 Customers | "Customer" | — |
| 6151484 | "NPR Magento Top10 Items by Qty" | Top 10 Items by Quantity | "Item" | — |
| 6151409 | "NPR Magento VAT Bus. Groups" | Magento VAT Business Posting Groups | "NPR Magento VAT Bus. Group" | — |
| 6151410 | "NPR Magento VAT Prod. Groups" | Magento VAT Product Posting Groups | "NPR Magento VAT Prod. Group" | — |
| 6151455 | "NPR Magento Video Links" | Magento Video Links | "NPR Magento Video Link" | — |
| 6151405 | "NPR Magento Website Links" | Website Links | "NPR Magento Website Link" | — |
| 6151404 | "NPR Magento Website List" | Magento Website List | "NPR Magento Website" | — |
| 6151403 | "NPR Magento Websites" | Magento Websites | "NPR Magento Website" | — |
| 6184597 | "NPR Pay by Link Dialog" | Pay by Link | — | — |
| 6184709 | "NPR Pay By Link Setup Card" | Pay By Link Setup | "NPR Pay By Link Setup" | — |
| 6151466 | "NPR PG Adyen Setup Card" | Payment Integration Adyen Setup | "NPR PG Adyen Setup" | — |
| 6151472 | "NPR PG Bambora Setup Card" | Payment Integration Bambora Setup | "NPR PG Bambora Setup" | — |
| 6151467 | "NPR PG Dibs Setup Card" | Payment Integration Dibs Setup | "NPR PG Dibs Setup" | — |
| 6151473 | "NPR PG Interaction Log Entries" | Payment Gateways Interactions Log Entries | "NPR PG Interaction Log Entry" | — |
| 6151469 | "NPR PG Netaxept Setup Card" | Payment Integration Netaxept Setup Card | "NPR PG Netaxept Setup" | — |
| 6151470 | "NPR PG Nets Easy Setup Card" | Payment Integration Nets Easy Setup Card | "NPR PG Nets Easy Setup" | — |
| 6184701 | "NPR PG Posting Log Entries" | Payment Gateways Posting Log Entries | "NPR PG Posting Log Entry" | — |
| 6151471 | "NPR PG Quickpay Setup Card" | Quickpay Setup Card | "NPR PG Quickpay Setup" | — |
| 6151298 | "NPR PG Stripe Setup Card" | Stipe Setup Card | "NPR PG Stripe Setup" | — |
| 6150804 | "NPR PG Vipps Setup Card" | Vipps Setup Card | "NPR PG Vipps Setup" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014437 | "NPR E-mail Retail Vouchers to" |   |  , Bill-to Customer |
| 6014417 | "NPR Mag. Cust. Opt. Price Type" | Fixed | Fixed, Percent |
| 6014420 | "NPR Mag. Dis. Conf. Sales Type" | Customer | Customer, Display Group, All Customers |
| 6014419 | "NPR Mag. Display Config Type" | Item | Item, Item Group, Brand, None |
| 6014433 | "NPR Magento Api Username Type" | Automatic | Automatic, Custom |
| 6014415 | "NPR Mag. Contact ShToAdr. Vis." | Private | Private, Public |
| 6014436 | "NPR Magento Customer Mapping" | E-mail | E-mail, Phone No., E-mail AND Phone No., E-mail OR Phone No., Customer No., Phone No. to Customer No. |
| 6014435 | "NPR Magento Cust. Update Mode" | Create and Update | Create and Update, Create, Update, None, Fixed |
| 6014414 | "NPR Magento Item Attr. Value" |  | , Single, Multiple, Text Area (single) |
| 6014410 | "NPR Magento Item Custom Type" | Text Field | TextField, TextArea, File, SelectDropDown, SelectRadioButtons, SelectCheckbox, SelectMultiple, Date |
| 6014432 | "NPR Magento Miniature Picture" | None | None, SinglePicutre, LinePicture, SinglePicture+LinePicture |
| 6014421 | "NPR Magento Order Status" | Processing | Processing, Complete, Cancelled |
| 6014425 | "NPR Magento Payment Type" |   |  , Voucher, Payment Method |
| 6014426 | "NPR Magento Picture Type" | Item | Item, Brand, Item Group, Customer |
| 6014431 | "NPR Magento Pic. Variety Type" | Fixed | Fixed, Select on Item, Variety 1, Variety 2, Variety 3, Variety 4 |
| 6014422 | "NPR Magento Tax Class Type" | Item | Item, Customer |
| 6014430 | "NPR Magento Variant System" | None | None, Variety |
| 6014429 | "NPR Magento Version" | 1 | 1, 2 |
| 6014434 | "NPR Mag. Gift Voucher Activ." | On Posting | OnPosting, OnInsert |
| 6014427 | "NPR Mag. Prod. Relation Type" |  |  , Relation, Bundle, Super, Up-Sell, Cross-Sell |
| 6014428 | "NPR Mag. Setup Event Sub. Type" | DragDrop Picture | DragDrop Picture, Magento Picture Url, Setup NpXml Templates, Setup Magento Tax Classes, Setup Magento Api Credentials, Setup Magento Websites, Setup Magento Customer Groups, Setup Payment Method Mapping |
| 6014424 | "NPR Mag. Shipment Fee Type" | G/L Account | G/L Account, Item, Resource, Fixed Asset, Charge (Item) |
| 6014423 | "NPR Mag. Store Item Visibility" | Visible for catalog and search | Visible, Hidden, VisibleCatalogOnly, VisibleSearchOnly |
| 6151416 | "NPR PG Integrations" | Adyen | Adyen, Bambora, Dibs, Netaxept, EasyNets, Quickpay, Vipps, Stripe |
| 6059929 | "NPR PG Operation Status" | Unknown | Unknown, Pending, Success, Failure |
| 6014438 | "NPR Stock Calculation Method" | Standard | Standard, Function |


## Interfaces

| Name | Procedures |
| --- | --- |
| "NPR IPaymentGateway" | Capture, Refund, Cancel, RunSetupCard |
| "NPR Pay by Link" | SetDocument, SetShowDialog, IssuePayByLink, CancelPayByLink |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6014404 | "NPR ImportMagentoDescription" | ImportItemDescription | — |
| 6151400 | "NPR Magento Avail. Inv. Exp." | Magento Avail. InventoryExport | — |
| 6151402 | "NPR Magento Document Export" | Magento Document Export | — |
| 6151404 | "NPR Magento Inv. Set Api" | Magento Avail. InventoryExport | — |
| 6151403 | "NPR Magento Ret. Order Import" | Magento Sales Order Import | — |
| 6151401 | "NPR Magento Sales Order Import" | Magento Sales Order Import | — |
| 6151405 | "NPR Magento Store Inv." | Collect Store Inventory | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: AdyenPayByLink.Codeunit.al, AdyenPayByLinkCancelJQ.Codeunit.al, AdyenPayByLinkStatusJQ.Codeunit.al, AdyenPostPaymentLines.Codeunit.al, AdyenRecurringContractJQ.Codeunit.al, AdyenRefundStatusJQ.Codeunit.al, DefaultPayByLink.Codeunit.al, EmailRetailVouchersto.Enum.al, ExternalPaymentTypeID.Table.al, ExternalPaymentTypeIDs.Page.al, ImportMagentoDescription.XmlPort.al, IPaymentGateway.Interface.al, MagCustOptPriceType.Enum.al, MagDisConfSalesType.Enum.al, MagDisplayConfigType.Enum.al, MagentoApiUsernameType.Enum.al, MagentoAttrGroupList.Page.al, MagentoAttribute.Table.al, MagentoAttributeGroup.Page.al, MagentoAttributeGroup.Table.al, MagentoAttributes.Page.al, MagentoAttributeSet.Table.al, MagentoAttributeSetList.Page.al, MagentoAttributeSets.Page.al, MagentoAttrLabel.Table.al, MagentoAttrLabels.Page.al, MagentoAttrList.Page.al, MagentoAttrSetMgt.Codeunit.al, MagentoAttrSetValue.Table.al, MagentoAttrSetValues.Page.al, MagentoAvailInvExp.XmlPort.al, MagentoBrand.Table.al, MagentoBrandCard.Page.al, MagentoBrands.Page.al, MagentoCategories.Page.al, MagentoCategory.Table.al, MagentoCategoryCard.Page.al, MagentoCategoryLink.Table.al, MagentoCategoryLinks.Page.al, MagentoCategoryList.Page.al, MagentoCategoryMgt.Codeunit.al, MagentoChartMgt.Codeunit.al, MagentoChildCategories.Page.al, MagentoContactPmtMeth.Table.al, MagentoContactShipToAdr.Enum.al, MagentoContactShipToAdr.Table.al, MagentoContactShptMeth.Table.al, MagentoContPmtMethods.Page.al, MagentoContShipToList.Page.al, MagentoContShptMethods.Page.al, MagentoCustomerGroup.Table.al, MagentoCustomerGroups.Page.al, MagentoCustomerMapping.Enum.al, MagentoCustomerMapping.Page.al, MagentoCustomerMapping.Table.al, MagentoCustomOption.Table.al, MagentoCustomOptionCard.Page.al, MagentoCustomOptionList.Page.al, MagentoCustomOptnValue.Table.al, MagentoCustomOptSubform.Page.al, MagentoCustUpdateMode.Enum.al, MagentoDisplayConfig.Page.al, MagentoDisplayConfig.Table.al, MagentoDisplayGroup.Table.al, MagentoDisplayGroups.Page.al, MagentoDocumentExport.XmlPort.al, MagentoDragDropPicAddin.Page.al, MagentoFeature.Codeunit.al, MagentoFunctions.Codeunit.al, MagentoGenSetupBuffer.Page.al, MagentoGenSetupBuffer.Table.al, MagentoGenSetupMgt.Codeunit.al, MagentoImpRetOrder.Codeunit.al, MagentoInvCompanies.Page.al, MagentoInvCompany.Table.al, MagentoInvNpXmlValue.Codeunit.al, MagentoInvSetApi.XmlPort.al, MagentoItemAttr.Page.al, MagentoItemAttr.Table.al, MagentoItemAttrValue.Enum.al, MagentoItemAttrValue.Table.al, MagentoItemAttrValues.Page.al, MagentoItemCOPreview.Page.al, MagentoItemCstmOptions.Page.al, MagentoItemCustomOption.Table.al, MagentoItemCustomType.Enum.al, MagentoItemMgt.Codeunit.al, MagentoItemPictFactbox.Page.al, MagentoItemPictList.Page.al, MagentoItmCstmOptValue.Page.al, MagentoItmCstmOptValue.Table.al, MagentoLookupRetOrder.Codeunit.al, MagentoLookupSalesOrder.Codeunit.al, MagentoMgt.Codeunit.al, MagentoMiniaturePicture.Enum.al, MagentoNcTaskCardMgt.Codeunit.al, MagentoNpXmlExclVat.Codeunit.al, MagentoNpXmlExtItem.Codeunit.al, MagentoNpXmlFIK.Codeunit.al, MagentoNpXmlFirstname.Codeunit.al, MagentoNpXmlGenChildMgt.Codeunit.al, MagentoNpxmlItemCrossRef.Codeunit.al, MagentoNpXmlLastname.Codeunit.al, MagentoNpXmlQtyIncr.Codeunit.al, MagentoNpXmlSetupMgt.Codeunit.al, MagentoNpXmlStockQty.Codeunit.al, MagentoNpXmlStockStatus.Codeunit.al, MagentoNpXmlTriggerMgt.Codeunit.al, MagentoNpXmlValueMgt.Codeunit.al, MagentoOrderStatus.Enum.al, MagentoOrderStatus.Page.al, MagentoOrderStatus.Table.al, MagentoOrderStatusMgt.Codeunit.al, MagentoPaymentGateway.Table.al, MagentoPaymentGateways.Page.al, MagentoPaymentLine.Table.al, MagentoPaymentLineList.Page.al, MagentoPaymentMapping.Page.al, MagentoPaymentMapping.Table.al, MagentoPaymentType.Enum.al, MagentoPictLinkSubform.Page.al, MagentoPicture.Table.al, MagentoPictureLink.Table.al, MagentoPictureMgt.Codeunit.al, MagentoPictures.Page.al, MagentoPictureType.Enum.al, MagentoPicVarietyType.Enum.al, MagentoPmtAdyenMgt.Codeunit.al, MagentoPmtBamboraMgt.Codeunit.al, MagentoPmtDibsMgt.Codeunit.al, MagentoPmtEasyNetsMgt.Codeunit.al, MagentoPmtMgt.Codeunit.al, MagentoPmtNetaxeptMgt.Codeunit.al, MagentoPmtQuickpayMgt.Codeunit.al, MagentoPostOnImportSetup.Table.al, MagentoPostPaymentLine.Codeunit.al, MagentoProductRelation.Table.al, MagentoProductRelations.Page.al, MagentoProjAvailBalan.Codeunit.al, MagentoRetailActivities.Page.al, MagentoRetailCmnMgt.Codeunit.al, MagentoRetOrderImport.XmlPort.al, MagentoSalesChart.Page.al, MagentoSalesOrderImport.XmlPort.al, MagentoSalesOrderMgt.Codeunit.al, MagentoSelectFiltMgt.Codeunit.al, MagentoSetup.Page.al, MagentoSetup.Table.al, MagentoSetupEventSub.Table.al, MagentoSetupEventSubs.Page.al, MagentoSetupMgt.Codeunit.al, MagentoSetupPostOnImport.Page.al, MagentoShipmentMapping.Page.al, MagentoShipmentMapping.Table.al, MagentoStore.Table.al, MagentoStoreInv.XmlPort.al, MagentoStoreItem.Table.al, MagentoStoreItemList.Page.al, MagentoStoreItems.Page.al, MagentoStoreItemsCard.Page.al, MagentoStoreList.Page.al, MagentoStores.Page.al, MagentoStoreSubform.Page.al, MagentoTaxClass.Table.al, MagentoTaxClasses.Page.al, MagentoTaxClassType.Enum.al, MagentoTop10Customers.Page.al, MagentoTop10ItemsbyQty.Page.al, MagentoUpgrade.Codeunit.al, MagentoVariantSystem.Enum.al, MagentoVATBusGroup.Table.al, MagentoVATBusGroups.Page.al, MagentoVATProdGroup.Table.al, MagentoVATProdGroups.Page.al, MagentoVersion.Enum.al, MagentoVideoLink.Table.al, MagentoVideoLinks.Page.al, MagentoWebservice.Codeunit.al, MagentoWebsite.Table.al, MagentoWebsiteLink.Table.al, MagentoWebsiteLinks.Page.al, MagentoWebsiteList.Page.al, MagentoWebsites.Page.al, MagGiftVoucherActiv.Enum.al, MagProdRelationType.Enum.al, MagSetupEventSubType.Enum.al, MagShipmentFeeType.Enum.al, MagStoreItemVisibility.Enum.al, NPLoyaltyDiscountHandler.Codeunit.al, NPLoyaltyDiscountMgt.Codeunit.al, PayByLink.Interface.al, PayByLinkDialog.Page.al, PayByLinkSetup.Table.al, PayByLinkSetupCard.Page.al, PaymentLineMgt.Codeunit.al, PGAdyenSetup.Table.al, PGAdyenSetupCard.Page.al, PGBamboraSetup.Table.al, PGBamboraSetupCard.Page.al, PGDibsSetup.Table.al, PGDibsSetupCard.Page.al, PGIntegrations.Enum.al, PGInteractionLogEntries.Page.al, PGInteractionLogEntry.Table.al, PGInteractionsLogMgt.Codeunit.al, PGNetaxeptSetup.Table.al, PGNetaxeptSetupCard.Page.al, PGNetsEasySetup.Table.al, PGNetsEasySetupCard.Page.al, PGOperationStatus.Enum.al, PGPaymentRequest.Table.al, PGPaymentResponse.Table.al, PGPostingLogEntries.Page.al, PGPostingLogEntry.Table.al, PGQuickpaySetup.Table.al, PGQuickpaySetupCard.Page.al, PGStripeIntegrationMgt.Codeunit.al, PGStripeSetup.Table.al, PGStripeSetupCard.Page.al, PGTryCancelPayment.Codeunit.al, PGTryCapturePayment.Codeunit.al, PGTryRefundPayment.Codeunit.al, PGVippsIntegrationMgt.Codeunit.al, PGVippsSetup.Table.al, PGVippsSetupCard.Page.al, StockCalculationMethod.Enum.al, UnknownPayByLink.Codeunit.al
