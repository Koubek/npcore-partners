page 6150922 "NPR APIV1 - POS Store Groups"
{
    APIGroup = 'core';
    APIPublisher = 'navipartner';
    APIVersion = 'v1.0';
    Caption = 'POS Store Group';
    DelayedInsert = true;
    EntityName = 'posStoreGroup';
    EntitySetName = 'posStoreGroups';
    Extensible = false;
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "NPR POS Store Group";

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
                field(no; Rec."No.")
                {
                    Caption = 'no', Locked = true;
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
                part(posStoreGroupLines; "NPR APIV1 - POS Store Grp Ln")
                {
                    Caption = 'POS Store Group Lines', Locked = true;
                    EntityName = 'posStoreGroupLine';
                    EntitySetName = 'posStoreGroupLines';
                    SubPageLink = "No." = field("No.");
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
