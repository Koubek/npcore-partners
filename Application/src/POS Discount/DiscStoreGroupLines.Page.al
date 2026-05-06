page 6150960 "NPR Disc. Store Group Lines"
{
    Extensible = false;
    Caption = 'Discount Store Group Lines';
    PageType = ListPart;
    SourceTable = "NPR Disc. Store Group Line";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("POS Store Group Code"; Rec."POS Store Group Code")
                {
                    ToolTip = 'Specifies the POS Store Group.';
                    ApplicationArea = NPRRetail;
                }
                field("POS Store Group Description"; Rec."POS Store Group Description")
                {
                    ToolTip = 'Specifies the description of the POS Store Group.';
                    ApplicationArea = NPRRetail;
                }
            }
        }
    }
}
