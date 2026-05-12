codeunit 85244 "NPR POS Layout Persist. Tests"
{
    // [Feature] POS Layout save persistence
    // Regression coverage for CEST-261 - reports of POS layout edits
    // intermittently not being persisted (silently truncated/corrupted
    // when a shorter JSON overwrote a longer one without clearing the BLOB).
    Subtype = Test;
    Access = Internal;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure SaveShorterLayoutDoesNotLeaveStaleBytes()
    var
        POSLayout: Record "NPR POS Layout";
        Assert: Codeunit Assert;
        LayoutCode: Code[20];
        StoredText: Text;
        LongLayoutTok: Label '{"items":[{"id":"vegan-margherita","caption":"Vegan Margherita Pizza","x":1,"y":2,"w":3,"h":4,"description":"Lots of toppings, classic dough, regional variant XYZ for Anarkist POS"}]}', Locked = true;
        ShortLayoutTok: Label '{"items":[]}', Locked = true;
    begin
        // [SCENARIO] Saving a shorter JSON layout after a longer one must replace
        // the BLOB cleanly, not append/leave stale bytes from the previous save.
        LayoutCode := CreateLayoutCode();

        // [GIVEN] A layout previously saved with a long JSON blob
        POSLayout.Init();
        POSLayout.Code := LayoutCode;
        POSLayout.SetLayout(LongLayoutTok);
        POSLayout.Insert(true);

        // [WHEN] The same layout is overwritten with a shorter JSON blob
        POSLayout.Get(LayoutCode);
        POSLayout.SetLayout(ShortLayoutTok);
        POSLayout.Modify(true);

        // [THEN] The stored layout exactly equals the new short JSON
        POSLayout.Get(LayoutCode);
        StoredText := POSLayout.GetLayout(true);
        Assert.AreEqual(ShortLayoutTok, StoredText, 'POS Layout BLOB was not replaced cleanly when overwriting with a shorter value.');
    end;

    local procedure CreateLayoutCode(): Code[20]
    var
        POSLayout: Record "NPR POS Layout";
        Candidate: Code[20];
        Suffix: Integer;
    begin
        Suffix := 0;
        repeat
            Suffix += 1;
            Candidate := CopyStr('CEST261-' + Format(Suffix), 1, MaxStrLen(Candidate));
        until not POSLayout.Get(Candidate);
        exit(Candidate);
    end;
}
