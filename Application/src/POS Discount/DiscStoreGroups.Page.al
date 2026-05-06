page 6150961 "NPR Disc. Store Groups"
{
    Extensible = false;
    Caption = 'Discount Store Groups';
    PageType = List;
    SourceTable = "NPR Disc. Store Group";
    UsageCategory = Lists;
    ApplicationArea = NPRRetail;
    CardPageId = "NPR Disc. Store Group Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
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
        }
    }
}
