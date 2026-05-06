page 6150901 "NPR APIV1 - Disc. Store Grp Ln"
{
    APIGroup = 'core';
    APIPublisher = 'navipartner';
    APIVersion = 'v1.0';
    Caption = 'Discount Store Group Line';
    DelayedInsert = true;
    EntityName = 'discountStoreGroupLine';
    EntitySetName = 'discountStoreGroupLines';
    Extensible = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "NPR Disc. Store Group Line";

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
                field(discStoreGroupCode; Rec."Disc. Store Group Code")
                {
                    Caption = 'discStoreGroupCode', Locked = true;
                }
                field(posStoreGroupCode; Rec."POS Store Group Code")
                {
                    Caption = 'posStoreGroupCode', Locked = true;
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
