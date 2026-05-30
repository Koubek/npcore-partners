---
type: reference
tags: [inventory, item-worksheet, np-retail, tables, codeunits, pages, enums, xmlports]
relates:
  - inventory/item-worksheet/overview.md
updated: 2026-05-30
source_files:
  - Application/src/Item Worksheet/ItemWkshtDocExch.Codeunit.al
  - Application/src/Item Worksheet/ItemWkshtPriceHandling.Enum.al
  - Application/src/Item Worksheet/ItemWkshtTaskQueueMgt.Codeunit.al
  - Application/src/Item Worksheet/ItemWkshtValidation.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWkshtWebService.Codeunit.al
  - Application/src/Item Worksheet/ItemWkshtWebServiceMgr.Codeunit.al
  - Application/src/Item Worksheet/ItemWkshtWfEvents.Codeunit.al
  - Application/src/Item Worksheet/ItemWkshtWfResponses.Codeunit.al
  - Application/src/Item Worksheet/ItemWorksExcelColumn.Page.al
  - Application/src/Item Worksheet/ItemWorkshAttrFactBox.Page.al
  - Application/src/Item Worksheet/_public/ItemWorksheet.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWorksheet.Table.al
  - Application/src/Item Worksheet/_public/ItemWorksheetFactBox.Page.al
  - Application/src/Item Worksheet/ItemWorksheetItemMgt.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWorksheetLine.Table.al
  - Application/src/Item Worksheet/_public/ItemWorksheetMgt.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWorksheetPage.Page.al
  - Application/src/Item Worksheet/_public/ItemWorksheets.Page.al
  - Application/src/Item Worksheet/ItemWorksheetTemplates.Page.al
  - Application/src/Item Worksheet/_public/ItemWorkshExcelColumn.Table.al
  - Application/src/Item Worksheet/ItemWorkshFieldChange.Table.al
  - Application/src/Item Worksheet/ItemWorkshFieldChanges.Page.al
  - Application/src/Item Worksheet/ItemWorkshFieldMapping.Page.al
  - Application/src/Item Worksheet/ItemWorkshFieldMapping.Table.al
  - Application/src/Item Worksheet/ItemWorkshFieldSetup.Page.al
  - Application/src/Item Worksheet/ItemWorkshFieldSetup.Table.al
  - Application/src/Item Worksheet/ItemWorkshImportExport.XmlPort.al
  - Application/src/Item Worksheet/ItemWorkshLineWebImp.XmlPort.al
  - Application/src/Item Worksheet/ItemWorkshMissingSetup.Page.al
  - Application/src/Item Worksheet/ItemWorkshSetupSubpage.Page.al
  - Application/src/Item Worksheet/ItemWorkshTemplate.Page.al
  - Application/src/Item Worksheet/_public/ItemWorkshTemplate.Table.al
  - Application/src/Item Worksheet/_public/ItemWorkshVariantLine.Table.al
  - Application/src/Item Worksheet/ItemWorkshVarietyValue.Table.al
  - Application/src/Item Worksheet/ItemWorkshVrtyMapping.Page.al
  - Application/src/Item Worksheet/ItemWorkshVrtyMapping.Table.al
  - Application/src/Item Worksheet/ItemWorkshVrtySubpage.Page.al
  - Application/src/Item Worksheet/ItemWorkshVrtyValues.Page.al
  - Application/src/Item Worksheet/ItemWorksPurchIntegr.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWrkshCombineLine.Codeunit.al
  - Application/src/Item Worksheet/ItemWshtCheckLine.Codeunit.al
  - Application/src/Item Worksheet/ItemWshtImpExp.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWshtRegistBatch.Codeunit.al
  - Application/src/Item Worksheet/ItemWshtRegisterLine.Codeunit.al
  - Application/src/Item Worksheet/_public/ItemWshtRegistYesNo.Codeunit.al
  - Application/src/Item Worksheet/MissingSetupRecord.Table.al
  - Application/src/Item Worksheet/MissingSetupTable.Table.al
  - Application/src/Item Worksheet/RegisteredItemWorks.Table.al
  - Application/src/Item Worksheet/RegisteredItemWorksh.Page.al
  - Application/src/Item Worksheet/_public/RegistItemWorkshLine.Table.al
  - Application/src/Item Worksheet/RegistItemWorkshPage.Page.al
  - Application/src/Item Worksheet/RegItemWshtVarLine.Table.al
  - Application/src/Item Worksheet/RegItemWshtVarSubpage.Page.al
  - Application/src/Item Worksheet/RegItemWshtVarValue.Table.al
---

# Item Worksheet — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
| --- | --- | --- | --- | --- |
| 6060041 | "NPR Item Worksheet" | Item Worksheet Batch | "Item Template Name", Name | — |
| 6060042 | "NPR Item Worksheet Line" | Item Worksheet Line | "Worksheet Template Name", "Worksheet Name", "Line No." | — |
| 6060051 | "NPR Item Worksh. Excel Column" | Item Worksheet Excel Column | "Worksheet Template Name", "Worksheet Name", "Excel Column No." | — |
| 6060053 | "NPR Item Worksh. Field Change" | Item Worksheet Field Change | "Worksheet Template Name", "Worksheet Name", "Worksheet Line No.", "Worksheet Variant Line No.", "Table No.", "Field Number" | — |
| 6060055 | "NPR Item Worksh. Field Mapping" | Item Worksheet Field Mapping | "Worksheet Template Name", "Worksheet Name", "Table No.", "Field Number", "Source Value" | — |
| 6060052 | "NPR Item Worksh. Field Setup" | Item Worksheet Field Setup | "Worksheet Template Name", "Worksheet Name", "Table No.", "Field Number" | — |
| 6060040 | "NPR Item Worksh. Template" | Item Worksheet Template | Name | — |
| 6060043 | "NPR Item Worksh. Variant Line" | Item Worksheet Variant Line | ItemWorksheetVariantLine2.SetRange("Variety 1 Value", xRec."Variety 1 Value" | — |
| 6060044 | "NPR Item Worksh. Variety Value" | Item Worksheet Variety Value | "Worksheet Template Name", "Worksheet Name", "Worksheet Line No.", Type, "Table", Value | — |
| 6060057 | "NPR Item Worksh. Vrty Mapping" | Item Worksheet Variety Mapping | "Worksheet Template Name", "Worksheet Name", "Vendor No.", Variety, "Variety Table", "Vendor Variety Value", "Item Wksh. Maping Field", "Item Wksh. Maping Field Value" | — |
| 6060050 | "NPR Missing Setup Record" | Missing Setup Record | "Table ID", "Field No.", Value | — |
| 6060049 | "NPR Missing Setup Table" | Missing Setup Table | "Table ID", "Field No." | — |
| 6060045 | "NPR Registered Item Works." | Item Worksheet Batch | "No." | — |
| 6060046 | "NPR Regist. Item Worksh Line" | Registered Item Worksheet Line | "Registered Worksheet No.", "Line No." | — |
| 6060047 | "NPR Reg. Item Wsht Var. Line" | Reg. Item Wsht Variant Line | "Registered Worksheet No.", "Registered Worksheet Line No.", "Line No." | — |
| 6060048 | "NPR Reg. Item Wsht Var. Value" | Reg. Item Wsht Variety Value | "Registered Worksheet No.", "Registered Worksheet Line No.", Type, "Table", Value | — |


## Codeunits

| ID | Name | Caption | Key Procedures | Events Raised |
| --- | --- | --- | --- | --- |
| 6060056 | "NPR Item Wksht. Doc. Exch." |  | InsertItemWorksheetLine, ItemWorksheetExists, OnCheckIncomingDocCreateDocRestrictionsCheckReopen, OnAfterInsertItemWorksheetLine | OnAfterInsertItemWorksheetLine |
| 6060058 | "NPR Item Wksht. TaskQueue Mgt." |  | ParamTemplateName, ParamBatchName, ParamRegisterItemWksht, RegisterItemWkshtBatch | — |
| 6060052 | "NPR Item Wksht. Validation" |  | ValidateItemWorksheetLineProcessing | — |
| 6060048 | "NPR Item Wksht. WebService" |  | CreateItemWorksheetLine, InsertImportEntry, GetDocumentSequence, TicketIntegrationSetup, CreateImportType | — |
| 6060049 | "NPR Item Wksht. WebService Mgr" |  | RunProcessImportEntry, Initialize, CreateItemWorksheetLine, CreateItemWorksheetLines, FindWorksheetLine | — |
| 6060053 | "NPR Item Wksht. Wf Events" |  | ItemStatusChanged, NewItemWorksheetLineInserted, AddItemWorksheetEventsToLibrary, RunWorkflowOnAfterInsertWorksheeLine, RunWorkflowOnAfterModifyItemStatus | — |
| 6060054 | "NPR Item Wksht. Wf Responses" |  | SetItemField, SetItemFieldCode, SetItemStatus, SetItemStatusCode, AddResponseCombinations | — |
| 6014440 | "NPR Item Worksheet" |  | OnBeforeExportWorksheetLine, OnBeforeExportWorksheetVariantLine, OnAfterImportWorksheetLine, OnAfterImportWorksheetVariantLine, OnAfterRegisterLine | OnBeforeExportWorksheetLine, OnBeforeExportWorksheetVariantLine, OnAfterImportWorksheetLine |
| 6060041 | "NPR Item Worksheet Item Mgt." |  | MatchItemNo, GetVariantCode, UpdateItemNo, FindItemNo, CheckDuplicateLine | — |
| 6060040 | "NPR Item Worksheet Mgt." |  | TemplateSelection, TemplateSelectionFromBatch, OpenJnl, OpenJnlBatch, CheckTemplateName | — |
| 6060057 | "NPR Item Works. Purch. Integr." |  | CreateItemFromWorksheet, SelectItemtoCreate, CreateItem, SelectItemWorksheet, MatchToItemWorksheetLine | — |
| 6059791 | "NPR Item Wrksh. Combine Line" |  | CombineLine, CanCreateTask | — |
| 6060045 | "NPR Item Wsht.-Check Line" |  | RunCheck, CheckItemWorksheetVariantLine, CheckItemWorksheetVarietyLine, CheckWorkSheetLinePrices, CheckWorkSheetLineDirectUnitCost | — |
| 6060047 | "NPR Item Wsht. Imp. Exp." |  | Export, Import, ExportToExcel, ImportFromExcel, SelectExcelToMap | — |
| 6060044 | "NPR Item Wsht.-Regist. Batch" |  | CreateWindow, CreateRegisteredWorksheet, CheckLines, RegisterLines, DeleteWorksheetLine | — |
| 6060046 | "NPR Item Wsht.Register Line" |  | RunWithCheck, CreateItem, UpdateItem, UpdateAndCopyVarieties, FindNewVarietyNames | — |
| 6060043 | "NPR Item Wsht.-Regist.(Yes/No)" |  | — | — |


## Pages

| ID | Name | Caption | Source Table | Description |
| --- | --- | --- | --- | --- |
| 6060053 | "NPR Item Works. Excel Column" | Item Worksheet Excel Column | "NPR Item Worksh. Excel Column" | — |
| 6060052 | "NPR Item Worksh. Attr. FactBox" | NP Attributes FactBox | "NPR Item Worksheet Line" | — |
| 6060051 | "NPR Item Worksheet FactBox" | Item Worksheet FactBox | "NPR Item Worksheet Line" | — |
| 6060042 | "NPR Item Worksheet Page" | Item Worksheet Page | "NPR Item Worksheet Line" | — |
| 6060041 | "NPR Item Worksheets" | Item Worksheets | "NPR Item Worksheet" | — |
| 6060040 | "NPR Item Worksheet Templates" | Item Worksheet Templates | "NPR Item Worksh. Template" | — |
| 6060055 | "NPR Item Worksh. Field Changes" | Item Worksheet Field Changes | "NPR Item Worksh. Field Change" | — |
| 6060057 | "NPR Item Worksh. Field Mapping" | Item Worksheet Field Mapping | "NPR Item Worksh. Field Mapping" | — |
| 6060054 | "NPR Item Worksh. Field Setup" | Item Worksheet Field Setup | "NPR Item Worksh. Field Setup" | — |
| 6060049 | "NPR Item Worksh. Missing Setup" | Item Worksheet Missing Setup | "NPR Missing Setup Table" | — |
| 6060050 | "NPR Item Worksh. Setup Subpage" | Item Worksheet Setup Subpage | "NPR Missing Setup Record" | — |
| 6060058 | "NPR Item Worksh. Template" | Item Worksheet Template | "NPR Item Worksh. Template" | — |
| 6060060 | "NPR Item Worksh. Vrty. Mapping" | Item Worksheet Variety Mapping | "NPR Item Worksh. Vrty Mapping" | — |
| 6060043 | "NPR Item Worksh. Vrty. Subpage" | Item Worksheet Variety Subpage | "NPR Item Worksh. Variant Line" | — |
| 6060044 | "NPR Item Worksh.Vrty. Values" | Item Worksheet Variety Values | "NPR Item Worksh. Variety Value" | — |
| 6060046 | "NPR Registered Item Worksh." | Registered Item Worksheets | "NPR Registered Item Works." | — |
| 6060047 | "NPR Regist. Item Worksh. Page" | Registered Item Worksheet Page | "NPR Regist. Item Worksh Line" | — |
| 6060048 | "NPR Reg. ItemWsht Var.Subpage" | Reg. Item Wsht Variety Subpage | "NPR Reg. Item Wsht Var. Line" | — |


## Enums

| ID | Name | Caption | Values |
| --- | --- | --- | --- |
| 6014564 | "NPR Item Wksht. Price Handling" | Item | Item, PriceList |


## XmlPorts

| ID | Name | Caption | Description |
| --- | --- | --- | --- |
| 6060040 | "NPR Item Worksh. Import/Export" | Item Worksheet Import/Export | — |
| 6060041 | "NPR Item Worksh. Line Web Imp." | Item Worksheet Line Web Import | — |

> Auto-generated by np-retail-kb-update.ps1 on 2026-05-30. Descriptions are placeholders — review manually.
> Source files: ItemWkshtDocExch.Codeunit.al, ItemWkshtPriceHandling.Enum.al, ItemWkshtTaskQueueMgt.Codeunit.al, ItemWkshtValidation.Codeunit.al, ItemWkshtWebService.Codeunit.al, ItemWkshtWebServiceMgr.Codeunit.al, ItemWkshtWfEvents.Codeunit.al, ItemWkshtWfResponses.Codeunit.al, ItemWorksExcelColumn.Page.al, ItemWorkshAttrFactBox.Page.al, ItemWorksheet.Codeunit.al, ItemWorksheet.Table.al, ItemWorksheetFactBox.Page.al, ItemWorksheetItemMgt.Codeunit.al, ItemWorksheetLine.Table.al, ItemWorksheetMgt.Codeunit.al, ItemWorksheetPage.Page.al, ItemWorksheets.Page.al, ItemWorksheetTemplates.Page.al, ItemWorkshExcelColumn.Table.al, ItemWorkshFieldChange.Table.al, ItemWorkshFieldChanges.Page.al, ItemWorkshFieldMapping.Page.al, ItemWorkshFieldMapping.Table.al, ItemWorkshFieldSetup.Page.al, ItemWorkshFieldSetup.Table.al, ItemWorkshImportExport.XmlPort.al, ItemWorkshLineWebImp.XmlPort.al, ItemWorkshMissingSetup.Page.al, ItemWorkshSetupSubpage.Page.al, ItemWorkshTemplate.Page.al, ItemWorkshTemplate.Table.al, ItemWorkshVariantLine.Table.al, ItemWorkshVarietyValue.Table.al, ItemWorkshVrtyMapping.Page.al, ItemWorkshVrtyMapping.Table.al, ItemWorkshVrtySubpage.Page.al, ItemWorkshVrtyValues.Page.al, ItemWorksPurchIntegr.Codeunit.al, ItemWrkshCombineLine.Codeunit.al, ItemWshtCheckLine.Codeunit.al, ItemWshtImpExp.Codeunit.al, ItemWshtRegistBatch.Codeunit.al, ItemWshtRegisterLine.Codeunit.al, ItemWshtRegistYesNo.Codeunit.al, MissingSetupRecord.Table.al, MissingSetupTable.Table.al, RegisteredItemWorks.Table.al, RegisteredItemWorksh.Page.al, RegistItemWorkshLine.Table.al, RegistItemWorkshPage.Page.al, RegItemWshtVarLine.Table.al, RegItemWshtVarSubpage.Page.al, RegItemWshtVarValue.Table.al
