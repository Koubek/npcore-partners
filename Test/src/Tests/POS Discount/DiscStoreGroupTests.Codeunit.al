codeunit 85184 "NPR Disc. Store Group Tests"
{
    Subtype = Test;
    TestPermissions = Disabled;

    var
        _Assert: Codeunit Assert;
        _LibraryUtility: Codeunit "Library - Utility";
        _CannotDeleteDiscGroupErr: Label 'You cannot delete %1 %2 because it is assigned to one or more discounts.', Comment = '%1 = Table caption, %2 = Code value';

    #region IsStoreValidForDiscount

    [Test]
    procedure IsStoreValidEmptyCodeAppliesEverywhere()
    var
        Utils: Codeunit "NPR Disc. Store Group Utils";
    begin
        // [SCENARIO] Discount with no Disc. Store Group Code applies in every store
        _Assert.IsTrue(Utils.IsStoreValidForDiscount('', 'ANYSTORE'), 'Empty code must apply everywhere');
    end;

    [Test]
    procedure IsStoreValidCodeSetButNoLinesAppliesNowhere()
    var
        Utils: Codeunit "NPR Disc. Store Group Utils";
        DiscGroup: Record "NPR Disc. Store Group";
    begin
        // [SCENARIO] Code set but the group has no lines must NOT apply (matches CustomerDiscountFilterPassed precedent)
        // [GIVEN] A Disc. Store Group with no lines
        CreateDiscStoreGroup(DiscGroup);

        // [THEN] Discount should not apply in any store
        _Assert.IsFalse(Utils.IsStoreValidForDiscount(DiscGroup.Code, 'ANYSTORE'), 'Code set with no lines must apply nowhere');
    end;

    [Test]
    procedure IsStoreValidStoreInAssignedGroupApplies()
    var
        Utils: Codeunit "NPR Disc. Store Group Utils";
        DiscGroup: Record "NPR Disc. Store Group";
        POSGroup: Record "NPR POS Store Group";
        StoreCode: Code[10];
    begin
        // [SCENARIO] Store belongs to a POS Store Group assigned to the Disc. Store Group
        StoreCode := 'STORE1';
        CreatePOSStoreGroup(POSGroup);
        AddPOSStoreToGroup(POSGroup."No.", StoreCode);
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup."No.");

        _Assert.IsTrue(Utils.IsStoreValidForDiscount(DiscGroup.Code, StoreCode), 'Store in assigned POS group must apply');
    end;

    [Test]
    procedure IsStoreValidStoreNotInAssignedGroupDoesNotApply()
    var
        Utils: Codeunit "NPR Disc. Store Group Utils";
        DiscGroup: Record "NPR Disc. Store Group";
        POSGroup: Record "NPR POS Store Group";
    begin
        // [SCENARIO] Store is NOT in any POS Store Group assigned to the Disc. Store Group
        CreatePOSStoreGroup(POSGroup);
        AddPOSStoreToGroup(POSGroup."No.", 'STORE1');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup."No.");

        _Assert.IsFalse(Utils.IsStoreValidForDiscount(DiscGroup.Code, 'OTHER'), 'Store outside assigned groups must not apply');
    end;

    [Test]
    procedure IsStoreValidMultiplePOSGroupsUnionStoreInOneApplies()
    var
        Utils: Codeunit "NPR Disc. Store Group Utils";
        DiscGroup: Record "NPR Disc. Store Group";
        POSGroup1: Record "NPR POS Store Group";
        POSGroup2: Record "NPR POS Store Group";
    begin
        // [SCENARIO] Multiple POS Store Groups assigned → union, store in any one applies
        CreatePOSStoreGroup(POSGroup1);
        AddPOSStoreToGroup(POSGroup1."No.", 'STORE1');
        CreatePOSStoreGroup(POSGroup2);
        AddPOSStoreToGroup(POSGroup2."No.", 'STORE2');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup1."No.");
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup2."No.");

        _Assert.IsTrue(Utils.IsStoreValidForDiscount(DiscGroup.Code, 'STORE2'), 'Store in any of the assigned POS groups must apply (union)');
    end;

    #endregion

    #region Disc. Store Group OnDelete guards

    [Test]
    procedure DiscGroupDeleteBlockedByPeriodDiscountReference()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        PeriodDiscount: Record "NPR Period Discount";
    begin
        // [SCENARIO] Cannot delete Disc. Store Group while a Period Discount references it
        CreateDiscStoreGroup(DiscGroup);
        PeriodDiscount.Init();
        PeriodDiscount.Code := _LibraryUtility.GenerateRandomCode(PeriodDiscount.FieldNo(Code), Database::"NPR Period Discount");
        PeriodDiscount."Disc. Store Group Code" := DiscGroup.Code;
        PeriodDiscount.Insert();

        asserterror DiscGroup.Delete(true);
        _Assert.ExpectedError(StrSubstNo(_CannotDeleteDiscGroupErr, DiscGroup.TableCaption, DiscGroup.Code));
    end;

    [Test]
    procedure DiscGroupDeleteBlockedByMixedDiscountReference()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        MixedDiscount: Record "NPR Mixed Discount";
    begin
        // [SCENARIO] Cannot delete Disc. Store Group while a Mixed Discount references it
        CreateDiscStoreGroup(DiscGroup);
        MixedDiscount.Init();
        MixedDiscount.Code := _LibraryUtility.GenerateRandomCode(MixedDiscount.FieldNo(Code), Database::"NPR Mixed Discount");
        MixedDiscount."Disc. Store Group Code" := DiscGroup.Code;
        MixedDiscount.Insert();

        asserterror DiscGroup.Delete(true);
        _Assert.ExpectedError(StrSubstNo(_CannotDeleteDiscGroupErr, DiscGroup.TableCaption, DiscGroup.Code));
    end;

    [Test]
    procedure DiscGroupDeleteBlockedByQuantityDiscountReference()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        QuantityDiscount: Record "NPR Quantity Discount Header";
    begin
        // [SCENARIO] Cannot delete Disc. Store Group while a Quantity Discount references it
        CreateDiscStoreGroup(DiscGroup);
        QuantityDiscount.Init();
        QuantityDiscount."Main No." := _LibraryUtility.GenerateRandomCode(QuantityDiscount.FieldNo("Main No."), Database::"NPR Quantity Discount Header");
        QuantityDiscount."Item No." := _LibraryUtility.GenerateRandomCode(QuantityDiscount.FieldNo("Item No."), Database::"NPR Quantity Discount Header");
        QuantityDiscount."Disc. Store Group Code" := DiscGroup.Code;
        QuantityDiscount.Insert();

        asserterror DiscGroup.Delete(true);
        _Assert.ExpectedError(StrSubstNo(_CannotDeleteDiscGroupErr, DiscGroup.TableCaption, DiscGroup.Code));
    end;

    [Test]
    procedure DiscGroupDeleteBlockedByTotalDiscountReference()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        TotalDiscount: Record "NPR Total Discount Header";
    begin
        // [SCENARIO] Cannot delete Disc. Store Group while a Total Discount references it
        CreateDiscStoreGroup(DiscGroup);
        TotalDiscount.Init();
        TotalDiscount.Code := _LibraryUtility.GenerateRandomCode(TotalDiscount.FieldNo(Code), Database::"NPR Total Discount Header");
        TotalDiscount."Disc. Store Group Code" := DiscGroup.Code;
        TotalDiscount.Insert();

        asserterror DiscGroup.Delete(true);
        _Assert.ExpectedError(StrSubstNo(_CannotDeleteDiscGroupErr, DiscGroup.TableCaption, DiscGroup.Code));
    end;

    [Test]
    procedure DiscGroupDeleteAllowedWhenNoReferences()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        DiscGroupCheck: Record "NPR Disc. Store Group";
    begin
        // [SCENARIO] Disc. Store Group with no references can be deleted
        CreateDiscStoreGroup(DiscGroup);

        DiscGroup.Delete(true);

        _Assert.IsFalse(DiscGroupCheck.Get(DiscGroup.Code), 'Disc. Store Group should be deleted');
    end;

    #endregion

    #region Disc. Store Group Line OnDelete guards

    [Test]
    procedure DiscGroupLineDeleteBlockedWhenLastLineAndGroupReferenced()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        DiscGroupLine: Record "NPR Disc. Store Group Line";
        POSGroup: Record "NPR POS Store Group";
        PeriodDiscount: Record "NPR Period Discount";
        CannotDeleteLastLineErr: Label 'You cannot delete the last store group from %1 %2 because it is assigned to one or more discounts.', Comment = '%1 = Disc. Store Group table caption, %2 = Disc. Store Group Code';
    begin
        // [SCENARIO] Cannot remove the last POS Store Group from a Disc. Store Group that's referenced by any discount
        CreatePOSStoreGroup(POSGroup);
        AddPOSStoreToGroup(POSGroup."No.", 'STORE1');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup."No.");
        PeriodDiscount.Init();
        PeriodDiscount.Code := _LibraryUtility.GenerateRandomCode(PeriodDiscount.FieldNo(Code), Database::"NPR Period Discount");
        PeriodDiscount."Disc. Store Group Code" := DiscGroup.Code;
        PeriodDiscount.Insert();

        DiscGroupLine.Get(DiscGroup.Code, POSGroup."No.");
        asserterror DiscGroupLine.Delete(true);
        _Assert.ExpectedError(StrSubstNo(CannotDeleteLastLineErr, DiscGroup.TableCaption, DiscGroup.Code));
    end;

    [Test]
    procedure DiscGroupLineDeleteAllowedWhenNotLastLine()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        DiscGroupLine: Record "NPR Disc. Store Group Line";
        POSGroup1: Record "NPR POS Store Group";
        POSGroup2: Record "NPR POS Store Group";
        PeriodDiscount: Record "NPR Period Discount";
    begin
        // [SCENARIO] Removing one of multiple lines is fine even when the group is referenced
        CreatePOSStoreGroup(POSGroup1);
        AddPOSStoreToGroup(POSGroup1."No.", 'STORE1');
        CreatePOSStoreGroup(POSGroup2);
        AddPOSStoreToGroup(POSGroup2."No.", 'STORE2');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup1."No.");
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup2."No.");
        PeriodDiscount.Init();
        PeriodDiscount.Code := _LibraryUtility.GenerateRandomCode(PeriodDiscount.FieldNo(Code), Database::"NPR Period Discount");
        PeriodDiscount."Disc. Store Group Code" := DiscGroup.Code;
        PeriodDiscount.Insert();

        DiscGroupLine.Get(DiscGroup.Code, POSGroup1."No.");
        DiscGroupLine.Delete(true);

        _Assert.IsFalse(DiscGroupLine.Get(DiscGroup.Code, POSGroup1."No."), 'Non-last line should be removable');
    end;

    [Test]
    procedure DiscGroupLineDeleteAllowedWhenLastLineButGroupNotReferenced()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        DiscGroupLine: Record "NPR Disc. Store Group Line";
        POSGroup: Record "NPR POS Store Group";
    begin
        // [SCENARIO] Removing the last line from an unreferenced group is fine
        CreatePOSStoreGroup(POSGroup);
        AddPOSStoreToGroup(POSGroup."No.", 'STORE1');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup."No.");

        DiscGroupLine.Get(DiscGroup.Code, POSGroup."No.");
        DiscGroupLine.Delete(true);

        _Assert.IsFalse(DiscGroupLine.Get(DiscGroup.Code, POSGroup."No."), 'Last line of unreferenced group should be removable');
    end;

    #endregion

    #region POS Store Group cascade pre-check

    [Test]
    procedure POSStoreGroupDeleteBlockedWhenWouldEmptyReferencedDiscGroup()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        POSGroup: Record "NPR POS Store Group";
        PeriodDiscount: Record "NPR Period Discount";
        CannotDeletePOSGroupErr: Label 'You cannot delete %1 %2 because it is the last store in %3 %4, which is assigned to one or more discounts.', Comment = '%1 = POS Store Group caption, %2 = POS Store Group No., %3 = Disc. Store Group caption, %4 = Disc. Store Group Code';
    begin
        // [SCENARIO] Deleting a POS Store Group is blocked if it would leave a referenced Disc. Store Group with no lines
        CreatePOSStoreGroup(POSGroup);
        AddPOSStoreToGroup(POSGroup."No.", 'STORE1');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup."No.");
        PeriodDiscount.Init();
        PeriodDiscount.Code := _LibraryUtility.GenerateRandomCode(PeriodDiscount.FieldNo(Code), Database::"NPR Period Discount");
        PeriodDiscount."Disc. Store Group Code" := DiscGroup.Code;
        PeriodDiscount.Insert();

        asserterror POSGroup.Delete(true);
        _Assert.ExpectedError(StrSubstNo(CannotDeletePOSGroupErr, POSGroup.TableCaption, POSGroup."No.", DiscGroup.TableCaption, DiscGroup.Code));
    end;

    [Test]
    procedure POSStoreGroupDeleteAllowedWhenDiscGroupHasOtherLines()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        POSGroup1: Record "NPR POS Store Group";
        POSGroup2: Record "NPR POS Store Group";
        POSGroupCheck: Record "NPR POS Store Group";
        PeriodDiscount: Record "NPR Period Discount";
    begin
        // [SCENARIO] Deleting a POS Store Group is allowed when the referenced Disc. Store Group still has other lines
        CreatePOSStoreGroup(POSGroup1);
        AddPOSStoreToGroup(POSGroup1."No.", 'STORE1');
        CreatePOSStoreGroup(POSGroup2);
        AddPOSStoreToGroup(POSGroup2."No.", 'STORE2');
        CreateDiscStoreGroup(DiscGroup);
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup1."No.");
        AddPOSGroupToDiscGroup(DiscGroup.Code, POSGroup2."No.");
        PeriodDiscount.Init();
        PeriodDiscount.Code := _LibraryUtility.GenerateRandomCode(PeriodDiscount.FieldNo(Code), Database::"NPR Period Discount");
        PeriodDiscount."Disc. Store Group Code" := DiscGroup.Code;
        PeriodDiscount.Insert();

        POSGroup1.Delete(true);

        _Assert.IsFalse(POSGroupCheck.Get(POSGroup1."No."), 'POS Store Group should be deleted');
    end;

    #endregion

    #region OnRename

    [Test]
    procedure DiscGroupRenameBlocked()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        NewCode: Code[20];
        CannotRenameErr: Label 'You cannot rename a %1.', Comment = '%1 = Table caption';
    begin
        // [SCENARIO] Renaming a Disc. Store Group is blocked (parity with NPR POS Store Group)
        CreateDiscStoreGroup(DiscGroup);
        NewCode := _LibraryUtility.GenerateRandomCode(DiscGroup.FieldNo(Code), Database::"NPR Disc. Store Group");

        asserterror DiscGroup.Rename(NewCode);
        _Assert.ExpectedError(StrSubstNo(CannotRenameErr, DiscGroup.TableCaption));
    end;

    #endregion

    #region OnValidate on Disc. Store Group Line

    [Test]
    procedure DiscGroupLineValidateBlocksPOSGroupWithNoStores()
    var
        DiscGroup: Record "NPR Disc. Store Group";
        DiscGroupLine: Record "NPR Disc. Store Group Line";
        POSGroup: Record "NPR POS Store Group";
        NoStoresAssignedErr: Label '%1 has no stores assigned. Please add stores to the %1 before selecting it.', Comment = '%1 = POS Store Group table caption';
    begin
        // [SCENARIO] Selecting a POS Store Group that has no stores assigned is blocked
        CreatePOSStoreGroup(POSGroup);
        // Note: not adding any POS Store Group Line here on purpose
        CreateDiscStoreGroup(DiscGroup);
        DiscGroupLine.Init();
        DiscGroupLine."Disc. Store Group Code" := DiscGroup.Code;

        asserterror DiscGroupLine.Validate("POS Store Group Code", POSGroup."No.");
        _Assert.ExpectedError(StrSubstNo(NoStoresAssignedErr, POSGroup.TableCaption));
    end;

    #endregion

    #region Helpers

    local procedure CreatePOSStoreGroup(var POSStoreGroup: Record "NPR POS Store Group")
    begin
        POSStoreGroup.Init();
        POSStoreGroup."No." := _LibraryUtility.GenerateRandomCode(POSStoreGroup.FieldNo("No."), Database::"NPR POS Store Group");
        POSStoreGroup.Description := POSStoreGroup."No.";
        POSStoreGroup.Insert();
    end;

    local procedure AddPOSStoreToGroup(POSStoreGroupNo: Code[20]; POSStoreCode: Code[10])
    var
        POSStoreGroupLine: Record "NPR POS Store Group Line";
    begin
        POSStoreGroupLine.Init();
        POSStoreGroupLine."No." := POSStoreGroupNo;
        POSStoreGroupLine."POS Store" := POSStoreCode;
        POSStoreGroupLine.Insert();
    end;

    local procedure CreateDiscStoreGroup(var DiscStoreGroup: Record "NPR Disc. Store Group")
    begin
        DiscStoreGroup.Init();
        DiscStoreGroup.Code := _LibraryUtility.GenerateRandomCode(DiscStoreGroup.FieldNo(Code), Database::"NPR Disc. Store Group");
        DiscStoreGroup.Description := DiscStoreGroup.Code;
        DiscStoreGroup.Insert();
    end;

    local procedure AddPOSGroupToDiscGroup(DiscGroupCode: Code[20]; POSGroupCode: Code[20])
    var
        DiscStoreGroupLine: Record "NPR Disc. Store Group Line";
    begin
        DiscStoreGroupLine.Init();
        DiscStoreGroupLine."Disc. Store Group Code" := DiscGroupCode;
        DiscStoreGroupLine."POS Store Group Code" := POSGroupCode;
        DiscStoreGroupLine.Insert();
    end;

    #endregion
}
