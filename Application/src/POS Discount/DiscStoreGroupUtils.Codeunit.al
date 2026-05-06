codeunit 6151124 "NPR Disc. Store Group Utils"
{
    Access = Internal;

    internal procedure IsStoreValidForDiscount(DiscStoreGroupCode: Code[20]; POSStoreCode: Code[10]): Boolean
    var
        DiscStoreGroupLine: Record "NPR Disc. Store Group Line";
        POSStoreGroupLine: Record "NPR POS Store Group Line";
    begin
        if DiscStoreGroupCode = '' then
            exit(true);

        DiscStoreGroupLine.SetRange("Disc. Store Group Code", DiscStoreGroupCode);
        if DiscStoreGroupLine.IsEmpty() then
            exit(false);

        POSStoreGroupLine.SetRange("POS Store", POSStoreCode);
        DiscStoreGroupLine.FindSet();
        repeat
            POSStoreGroupLine.SetRange("No.", DiscStoreGroupLine."POS Store Group Code");
            if not POSStoreGroupLine.IsEmpty() then
                exit(true);
        until DiscStoreGroupLine.Next() = 0;

        exit(false);
    end;
}
