page 6150917 "NPR APIV1 - Disc. Store Groups"
{
    APIGroup = 'core';
    APIPublisher = 'navipartner';
    APIVersion = 'v1.0';
    Caption = 'Discount Store Group';
    DelayedInsert = true;
    EntityName = 'discountStoreGroup';
    EntitySetName = 'discountStoreGroups';
    Extensible = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "NPR Disc. Store Group";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'systemId', Locked = true;
                }
                field("code"; Rec."Code")
                {
                    Caption = 'code', Locked = true;
                }
                field(description; Rec.Description)
                {
                    Caption = 'description', Locked = true;
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'systemModifiedAt', Locked = true;
                }
#IF NOT (BC17 or BC18 or BC19 or BC20)
                field(systemRowVersion; Rec.SystemRowVersion)
                {
                    Caption = 'systemRowVersion', Locked = true;
                }
#ENDIF
                part(discountStoreGroupLines; "NPR APIV1 - Disc. Store Grp Ln")
                {
                    Caption = 'Discount Store Group Lines', Locked = true;
                    EntityName = 'discountStoreGroupLine';
                    EntitySetName = 'discountStoreGroupLines';
                    SubPageLink = "Disc. Store Group Code" = field(Code);
                }
            }
        }
    }

    trigger OnInit()
    begin
#IF (BC17 OR BC18 OR BC19 OR BC20 OR BC21)
        CurrentTransactionType := TransactionType::Update;
#ELSE
        Rec.ReadIsolation := IsolationLevel::ReadCommitted;
#ENDIF
    end;
}
