codeunit 85183 "NPR TM TicketDeferRevenueTest"
{
    Subtype = Test;

    var
        _Initialized: Boolean;
        _POSSession: Codeunit "NPR POS Session";
        _POSSetup: Record "NPR POS Setup";
        _POSStore: Record "NPR POS Store";
        _POSUnit: Record "NPR POS Unit";
        _POSPaymentMethodCash: Record "NPR POS Payment Method";

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure IndividualTicket_Qty1_DefersFullAmount()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        ExpectedAmountExVat: Decimal;
        ActualSumExVat: Decimal;
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        SalesReceiptNo := SellAndPostTicket(Item, 1);
        TriggerDeferral();

        ExpectedAmountExVat := SalesAmountForSalesReceipt(SalesReceiptNo);
        ActualSumExVat := SumAmountToDeferForSalesReceipt(SalesReceiptNo);

        AssertDeferralForReceipt(SalesReceiptNo, 1, ExpectedAmountExVat, 'INDIVIDUAL qty=1');
        Assert.AreNearlyEqual(ExpectedAmountExVat, ActualSumExVat, 0.01, 'Deferred amount should equal full sale amount for INDIVIDUAL ticket (qty=1).');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure IndividualTicket_QtyN_DefersFullAmount()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        ExpectedAmountExVat: Decimal;
        ActualSumExVat: Decimal;
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        SalesReceiptNo := SellAndPostTicket(Item, 5);
        TriggerDeferral();

        ExpectedAmountExVat := SalesAmountForSalesReceipt(SalesReceiptNo);
        ActualSumExVat := SumAmountToDeferForSalesReceipt(SalesReceiptNo);

        AssertDeferralForReceipt(SalesReceiptNo, 5, ExpectedAmountExVat, 'INDIVIDUAL qty=5');
        Assert.AreNearlyEqual(ExpectedAmountExVat, ActualSumExVat, 0.01, 'Deferred amount should equal full sale amount for INDIVIDUAL ticket (qty>1).');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GroupTicket_Qty1_DefersFullAmount()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        ExpectedAmountExVat: Decimal;
        ActualSumExVat: Decimal;
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        PatchToGroupTicket(Item, 7);

        SalesReceiptNo := SellAndPostTicket(Item, 1);
        TriggerDeferral();

        ExpectedAmountExVat := SalesAmountForSalesReceipt(SalesReceiptNo);
        ActualSumExVat := SumAmountToDeferForSalesReceipt(SalesReceiptNo);

        AssertDeferralForReceipt(SalesReceiptNo, 1, ExpectedAmountExVat, 'GROUP qty=1');
        Assert.AreNearlyEqual(ExpectedAmountExVat, ActualSumExVat, 0.01, 'Deferred amount should equal full sale amount for GROUP ticket (qty=1).');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GroupTicket_QtyN_DefersFullAmount()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        ExpectedAmountExVat: Decimal;
        ActualSumExVat: Decimal;
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        PatchToGroupTicket(Item, 7);
        SalesReceiptNo := SellAndPostTicket(Item, 5);
        TriggerDeferral();

        ExpectedAmountExVat := SalesAmountForSalesReceipt(SalesReceiptNo);
        ActualSumExVat := SumAmountToDeferForSalesReceipt(SalesReceiptNo);

        AssertDeferralForReceipt(SalesReceiptNo, 1, ExpectedAmountExVat, 'GROUP qty=5');
        Assert.AreNearlyEqual(ExpectedAmountExVat, ActualSumExVat, 0.01, 'Deferred amount should equal full sale amount for GROUP ticket (qty>1).');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GroupTicket_QtyN_AdmitAndDefer()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        ExpectedAmountExVat: Decimal;
        PostedAmount: Decimal;
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        PatchToGroupTicket(Item, 7);
        SalesReceiptNo := SellAndPostTicket(Item, 5);
        TriggerDeferral();

        Assert.AreEqual(1, AdmitTicketsForSalesReceipt(SalesReceiptNo), 'Should have admitted 1 group ticket only.');
        TriggerDeferral();

        ExpectedAmountExVat := SalesAmountForSalesReceipt(SalesReceiptNo);
        PostedAmount := DeferralPostedAmountForSalesReceipt(SalesReceiptNo);

        AssertDeferralForReceipt(SalesReceiptNo, 1, ExpectedAmountExVat, 'GROUP qty=5 (admitted)');
        Assert.AreNearlyEqual(ExpectedAmountExVat, Abs(PostedAmount), 0.01, 'Posted deferral amount on achieved revenue account should equal full sale amount.');
    end;


    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure AdmittedTicket_StatusReachesDeferred()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        SalesReceiptNo := SellAndPostTicket(Item, 7);
        TriggerDeferral();

        Assert.AreEqual(7, AdmitTicketsForSalesReceipt(SalesReceiptNo), 'Should have admitted 7 tickets.');
        TriggerDeferral();

        DeferRevenueRequest.SetFilter(SourceDocumentNo, '=%1', SalesReceiptNo);
        Assert.IsTrue(DeferRevenueRequest.FindFirst(), 'Deferral request should exist after sale.');

        Assert.AreEqual(DeferRevenueRequest.Status::DEFERRED, DeferRevenueRequest.Status, 'Status should be DEFERRED after admission and second batch run.');
        Assert.AreNotEqual(0D, DeferRevenueRequest.AchievedDate, 'AchievedDate should be set once admission has happened.');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure DeferredRequest_HasAllFieldsPopulated()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
        SalesReceiptNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        SalesReceiptNo := SellAndPostTicket(Item, 1);
        TriggerDeferral();

        AdmitTicketsForSalesReceipt(SalesReceiptNo);
        TriggerDeferral();

        DeferRevenueRequest.SetFilter(SourceDocumentNo, '=%1', SalesReceiptNo);
        Assert.IsTrue(DeferRevenueRequest.FindFirst(), 'Deferral request should exist after sale.');

        Assert.AreNotEqual('', DeferRevenueRequest.TicketNo, 'TicketNo should be populated.');
        Assert.AreNotEqual('', DeferRevenueRequest.ItemNo, 'ItemNo should be populated.');
        Assert.AreNotEqual('', DeferRevenueRequest.AdmissionCode, 'AdmissionCode should be populated.');
        Assert.AreNotEqual('', DeferRevenueRequest.DeferRevenueProfileCode, 'DeferRevenueProfileCode should be populated.');
        Assert.AreNotEqual(0D, DeferRevenueRequest.SalesDate, 'SalesDate should be populated.');
        Assert.AreNotEqual(0D, DeferRevenueRequest.AchievedDate, 'AchievedDate should be populated after admission.');

        Assert.AreNotEqual('', DeferRevenueRequest.SourceDocumentNo, 'SourceDocumentNo should be populated.');
        Assert.AreNotEqual(0D, DeferRevenueRequest.SourcePostingDate, 'SourcePostingDate should be populated.');
        Assert.AreNotEqual(0, DeferRevenueRequest.ValueEntryNo, 'ValueEntryNo should be populated.');

        Assert.AreNotEqual('', DeferRevenueRequest.OriginalSalesAccount, 'OriginalSalesAccount should be populated.');
        Assert.AreNotEqual('', DeferRevenueRequest.AchievedRevenueAccount, 'AchievedRevenueAccount should be populated.');
        Assert.AreNotEqual('', DeferRevenueRequest.InterimAdjustmentAccount, 'InterimAdjustmentAccount should be populated.');

        Assert.AreNotEqual(0, DeferRevenueRequest.AmountToDefer, 'AmountToDefer should be non-zero.');
        Assert.AreNotEqual('', DeferRevenueRequest.DeferralDocumentNo, 'DeferralDocumentNo should be populated after posting.');
        Assert.AreNotEqual(0D, DeferRevenueRequest.DeferralPostingDate, 'DeferralPostingDate should be populated after posting.');
        Assert.AreNotEqual(0D, DeferRevenueRequest.DeferralDocumentDate, 'DeferralDocumentDate should be populated after posting.');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure NonDeferringTicketType_NoRequestCreated()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        DisableDeferralForItem(Item);
        SellAndPostTicket(Item, 1);
        TriggerDeferral();

        DeferRevenueRequest.SetFilter(ItemNo, '=%1', Item."No.");
        Assert.RecordIsEmpty(DeferRevenueRequest);
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure CancelledTicket_DeferralIsAborted()
    var
        Assert: Codeunit Assert;
        Item: Record Item;
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
        TicketDeferral: Codeunit "NPR TM RevenueDeferral";
        TicketNo: Code[20];
    begin
        Initialize();

        Item.Get(SelectSmokeTestScenario());
        ConfigureItem(Item, true, 148.22);
        SellAndPostTicket(Item, 1);
        TriggerDeferral();

        DeferRevenueRequest.SetFilter(ItemNo, '=%1', Item."No.");
        Assert.IsTrue(DeferRevenueRequest.FindFirst(), 'Deferral request should exist after sale.');
        TicketNo := DeferRevenueRequest.TicketNo;

        TicketDeferral.AbortDeferral(TicketNo);

        DeferRevenueRequest.Find();
        Assert.AreEqual(DeferRevenueRequest.Status::DEFERRAL_ABORTED, DeferRevenueRequest.Status, 'Status should be DEFERRAL_ABORTED after cancellation.');
    end;

    local procedure Initialize()
    var
        POSPostingProfile: Record "NPR POS Posting Profile";
        LibraryPOSMasterData: Codeunit "NPR Library - POS Master Data";
        TicketRequestMgr: Codeunit "NPR TM Ticket Request Manager";
        PeriodRegister: Record "NPR POS Period Register";
    begin
        _POSSession.ClearAll();
        Clear(_POSSession);

        if (not _Initialized) then begin
            LibraryPOSMasterData.CreatePOSSetup(_POSSetup);
            LibraryPOSMasterData.CreateDefaultPostingSetup(POSPostingProfile);
            LibraryPOSMasterData.CreatePOSStore(_POSStore, POSPostingProfile.Code);
            LibraryPOSMasterData.CreatePOSUnit(_POSUnit, _POSStore.Code, POSPostingProfile.Code);
            LibraryPOSMasterData.CreatePOSPaymentMethod(_POSPaymentMethodCash, _POSPaymentMethodCash."Processing Type"::CASH, '', false);

            PeriodRegister.SetFilter("POS Unit No.", '=%1', _POSUnit."No.");
            PeriodRegister.SetFilter("POS Store Code", '=%1', _POSStore."Code");
            PeriodRegister.FindFirst();
            PeriodRegister."Document No." := '';
            PeriodRegister."Posting Compression" := PeriodRegister."Posting Compression"::"Per POS Entry";
            PeriodRegister.Modify();

            TicketRequestMgr.ExpireReservationRequests();
            _Initialized := true;
        end;

        Commit();
    end;

    local procedure ConfigureItem(var Item: Record Item; IncludesVat: Boolean; UnitPrice: Decimal)
    var
        TicketType: Record "NPR TM Ticket Type";
        TicketBOM: Record "NPR TM Ticket Admission BOM";
        POSMasterData: Codeunit "NPR Library - POS Master Data";
        POSPostingProfile: Record "NPR POS Posting Profile";
        LibraryRandom: Codeunit "Library - Random";
    begin
        _POSStore.GetProfile(POSPostingProfile);
        Item."VAT Bus. Posting Gr. (Price)" := POSPostingProfile."VAT Bus. Posting Group";
        Item."Price Includes VAT" := IncludesVat;
        Item."Unit Price" := UnitPrice;
        Item."Unit Cost" := LibraryRandom.RandDecInDecimalRange(0.01, UnitPrice, 1);
        Item.Modify();

        POSMasterData.CreatePostingSetupForSaleItem(Item, _POSUnit, _POSStore);

        TicketType.Get(Item."NPR Ticket Type");
        TicketType."Defer Revenue" := true;
        TicketType.DeferRevenueProfileCode := GetDeferralProfile();
        TicketType.Modify();

        TicketBOM.SetFilter("Item No.", '=%1', Item."No.");
        if (TicketBOM.FindSet(true)) then
            repeat
                TicketBOM.DeferRevenue := true;
                TicketBOM.Modify();
            until (TicketBOM.Next() = 0);
    end;

    local procedure PatchToGroupTicket(var Item: Record Item; GroupSize: Integer)
    var
        TicketType: Record "NPR TM Ticket Type";
        TicketBOM: Record "NPR TM Ticket Admission BOM";
    begin
        TicketType.Get(Item."NPR Ticket Type");
        TicketType."Admission Registration" := TicketType."Admission Registration"::GROUP;
        TicketType.Modify();

        TicketBOM.SetFilter("Item No.", '=%1', Item."No.");
        if (TicketBOM.FindSet(true)) then
            repeat
                TicketBOM.Quantity := GroupSize;
                TicketBOM.Modify();
            until (TicketBOM.Next() = 0);
    end;

    local procedure GetDeferralProfile() ProfileCode: Code[10]
    var
        Profile: Record "NPR TM DeferRevenueProfile";
        LibraryERM: Codeunit "Library - ERM";
        GenJournalTemplate: Record "Gen. Journal Template";
        SourceCode: Record "Source Code";
    begin
        ProfileCode := 'TMDEFER';
        if (Profile.Get(ProfileCode)) then
            exit(ProfileCode);

        Profile.Init();
        Profile.DeferRevenueProfileCode := ProfileCode;
        Profile.AchievedRevenueAccount := LibraryERM.CreateGLAccountWithSalesSetup();
        Profile.InterimAdjustmentAccount := LibraryERM.CreateGLAccountWithSalesSetup();
        Profile.PostingMode := Profile.PostingMode::INLINE;
        Profile.MaxAttempts := 5;
        if (GenJournalTemplate.FindFirst()) then
            Profile.JournalTemplateName := GenJournalTemplate.Name;
        if (SourceCode.FindFirst()) then
            Profile.SourceCode := SourceCode.Code;
        Profile.Insert();
    end;

    local procedure SellAndPostTicket(Item: Record Item; Quantity: Integer) SalesReceiptNo: Code[20]
    var
        Salesperson: Record "Salesperson/Purchaser";
        POSSaleLine: Record "NPR POS Sale Line";
        POSSale: Codeunit "NPR POS Sale";
        SaleLine: Codeunit "NPR POS Sale Line";
        LibraryPOSMock: Codeunit "NPR Library - POS Mock";
        Amount: Decimal;
    begin
        LibraryPOSMock.InitializePOSSessionAndStartSale(_POSSession, _POSUnit, Salesperson, POSSale);
        LibraryPOSMock.CreateItemLine(_POSSession, Item."No.", Quantity);

        _POSSession.GetSaleLine(SaleLine);
        SaleLine.GetCurrentSaleLine(POSSaleLine);
        SalesReceiptNo := POSSaleLine."Sales Ticket No.";
        Amount := POSSaleLine."Amount Including VAT";

        if (not LibraryPOSMock.PayAndTryEndSaleAndStartNew(_POSSession, _POSPaymentMethodCash.Code, Amount, '', true)) then
            Error('Failed to complete POS sale in test setup.');
    end;

    local procedure TriggerDeferral()
    var
        DeferRevenue: Codeunit "NPR TM RevenueDeferral";
    begin
        DeferRevenue.ProcessBatch();
    end;

    local procedure AdmitTicketsForSalesReceipt(SalesReceiptNo: Code[20]) TicketCount: Integer
    var
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
        ReservationRequest: Record "NPR TM Ticket Reservation Req.";
        Ticket: Record "NPR TM Ticket";
        TicketMgt: Codeunit "NPR TM Ticket Management";
    begin
        ReservationRequest.SetCurrentKey("Receipt No.");
        ReservationRequest.SetFilter("Receipt No.", '=%1', SalesReceiptNo);
        ReservationRequest.SetFilter("Primary Request Line", '=%1', true);
        if (not ReservationRequest.FindFirst()) then
            exit;

        DeferRevenueRequest.SetFilter(ReservationRequestEntryNo, '=%1', ReservationRequest."Entry No.");

        if (DeferRevenueRequest.FindSet()) then
            repeat
                TicketCount += 1;
                if (Ticket.Get(DeferRevenueRequest.TicketNo)) then
                    TicketMgt.ValidateTicketForArrival(Ticket, DeferRevenueRequest.AdmissionCode, '');
            until (DeferRevenueRequest.Next() = 0);
    end;

    local procedure DisableDeferralForItem(Item: Record Item)
    var
        TicketType: Record "NPR TM Ticket Type";
        TicketBOM: Record "NPR TM Ticket Admission BOM";
    begin
        TicketType.Get(Item."NPR Ticket Type");
        TicketType."Defer Revenue" := false;
        TicketType.Modify();

        TicketBOM.SetFilter("Item No.", '=%1', Item."No.");
        if (TicketBOM.FindSet(true)) then
            repeat
                TicketBOM.DeferRevenue := false;
                TicketBOM.Modify();
            until (TicketBOM.Next() = 0);
    end;

    local procedure SumAmountToDeferForSalesReceipt(SalesReceiptNo: Code[20]) Total: Decimal
    var
        ReservationRequest: Record "NPR TM Ticket Reservation Req.";
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
    begin
        ReservationRequest.SetCurrentKey("Receipt No.");
        ReservationRequest.SetFilter("Receipt No.", '=%1', SalesReceiptNo);
        ReservationRequest.SetFilter("Primary Request Line", '=%1', true);
        if (not ReservationRequest.FindFirst()) then
            exit;

        DeferRevenueRequest.SetFilter(ReservationRequestEntryNo, '=%1', ReservationRequest."Entry No.");
        if (DeferRevenueRequest.FindSet()) then
            repeat
                Total += DeferRevenueRequest.AmountToDefer;
            until (DeferRevenueRequest.Next() = 0);
    end;

    local procedure SalesAmountForSalesReceipt(SalesReceiptNo: Code[20]) Total: Decimal
    var
        ValueEntry: Record "Value Entry";
    begin
        ValueEntry.SetFilter("Document No.", '=%1', SalesReceiptNo);
        ValueEntry.SetFilter("Item Ledger Entry Type", '=%1', ValueEntry."Item Ledger Entry Type"::Sale);
        ValueEntry.SetFilter("Entry Type", '=%1', ValueEntry."Entry Type"::"Direct Cost");
        if (ValueEntry.FindSet()) then
            repeat
                Total += ValueEntry."Sales Amount (Actual)";
            until (ValueEntry.Next() = 0);
    end;


    local procedure DeferralPostedAmountForSalesReceipt(SalesReceiptNo: Code[20]) Total: Decimal
    var
        ReservationRequest: Record "NPR TM Ticket Reservation Req.";
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
        Profile: Record "NPR TM DeferRevenueProfile";
        GLEntry: Record "G/L Entry";
    begin
        ReservationRequest.SetCurrentKey("Receipt No.");
        ReservationRequest.SetFilter("Receipt No.", '=%1', SalesReceiptNo);
        ReservationRequest.SetFilter("Primary Request Line", '=%1', true);
        if (not ReservationRequest.FindFirst()) then
            exit;

        DeferRevenueRequest.SetFilter(ReservationRequestEntryNo, '=%1', ReservationRequest."Entry No.");
        DeferRevenueRequest.SetFilter(DeferralDocumentNo, '<>%1', '');
        if (not DeferRevenueRequest.FindFirst()) then
            exit;

        Profile.Get(DeferRevenueRequest.DeferRevenueProfileCode);

        GLEntry.SetFilter("G/L Account No.", '=%1', Profile.AchievedRevenueAccount);
        GLEntry.SetFilter("Document No.", '=%1', DeferRevenueRequest.DeferralDocumentNo);
        if (GLEntry.FindSet()) then
            repeat
                Total += GLEntry.Amount;
            until (GLEntry.Next() = 0);
    end;

    local procedure AssertDeferralForReceipt(SalesReceiptNo: Code[20]; ExpectedCount: Integer; ExpectedSumAmount: Decimal; Tag: Text)
    var
        Assert: Codeunit Assert;
        ReservationRequest: Record "NPR TM Ticket Reservation Req.";
        DeferRevenueRequest: Record "NPR TM DeferRevenueRequest";
        ExpectedPerRecord: Decimal;
    begin
        ReservationRequest.SetCurrentKey("Receipt No.");
        ReservationRequest.SetFilter("Receipt No.", '=%1', SalesReceiptNo);
        ReservationRequest.SetFilter("Primary Request Line", '=%1', true);
        Assert.IsTrue(ReservationRequest.FindFirst(), Tag + ': primary reservation request should exist.');

        DeferRevenueRequest.SetFilter(ReservationRequestEntryNo, '=%1', ReservationRequest."Entry No.");
        Assert.AreEqual(ExpectedCount, DeferRevenueRequest.Count(), Tag + ': deferral request count.');

        ExpectedPerRecord := ExpectedSumAmount / ExpectedCount;
        DeferRevenueRequest.FindSet();
        repeat
            Assert.AreNearlyEqual(ExpectedPerRecord, DeferRevenueRequest.AmountToDefer, 0.01, Tag + ': per-record AmountToDefer.');
        until (DeferRevenueRequest.Next() = 0);
    end;

    local procedure SelectSmokeTestScenario() ItemNo: Code[20]
    var
        TicketLibrary: Codeunit "NPR Library - Ticket Module";
    begin
        ItemNo := TicketLibrary.CreateScenario_SmokeTest();
    end;

}
