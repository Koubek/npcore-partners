page 6150958 "NPR Disc. Store Group Card"
{
    Extensible = false;
    Caption = 'Discount Store Group';
    PageType = Card;
    SourceTable = "NPR Disc. Store Group";
    UsageCategory = None;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the code of the Discount Store Group.';
                    ApplicationArea = NPRRetail;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the description of the Discount Store Group.';
                    ApplicationArea = NPRRetail;
                }
            }
            part(Lines; "NPR Disc. Store Group Lines")
            {
                Caption = 'POS Store Groups';
                SubPageLink = "Disc. Store Group Code" = field("Code");
                ApplicationArea = NPRRetail;
            }
        }
    }
}
