#if not (BC17 or BC18 or BC19 or BC20 or BC21 or BC22 or BC23 or BC24)
codeunit 85173 "NPR TMGeneralLibraryTest"
{
    Subtype = Test;

    var
        _TicketLibrary: Codeunit "NPR Library - Ticket Module";


    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateTicketIssuedToday()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateTicketIssuedToday(true);
        Assert.AreEqual(Today(), Ticket."Document Date", 'Document Date should be today.');
        Assert.AreEqual(Today(), Ticket."Valid From Date", 'Valid From Date should be today.');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateTicketIssuedTomorrow()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateTicketIssuedTomorrow(false);
        Assert.AreEqual(CalcDate('<+1D>'), Ticket."Document Date", 'Document Date should be tomorrow.');
        Assert.AreEqual(CalcDate('<+1D>'), Ticket."Valid From Date", 'Valid From Date should be tomorrow.');

        asserterror _TicketLibrary.CreateTicketIssuedTomorrow(true);
        Assert.ExpectedError('Expected failure message:');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateTicketIssuedYesterday()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateTicketIssuedYesterday(true);
        Assert.AreEqual(CalcDate('<-1D>'), Ticket."Document Date", 'Document Date should be yesterday.');
        Assert.AreEqual(CalcDate('<-1D>'), Ticket."Valid From Date", 'Valid From Date should be yesterday.');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateReservationTicketIssuedTodayValidToday()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateReservationTicketIssuedTodayValidToday(true);
        Assert.AreEqual(Today(), Ticket."Document Date", 'Document Date should be today.');
        Assert.AreEqual(Today(), _TicketLibrary.GetReservationAdmissionDate(Ticket."No."), 'Reservation admission should be today.');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateReservationTicketIssuedTodayValidTomorrow()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateReservationTicketIssuedTodayValidTomorrow(false);
        Assert.AreEqual(Today(), Ticket."Document Date", 'Document Date should be today.');
        Assert.AreEqual(CalcDate('<+1D>'), _TicketLibrary.GetReservationAdmissionDate(Ticket."No."), 'Reservation admission should be tomorrow.');

        asserterror _TicketLibrary.CreateReservationTicketIssuedTodayValidTomorrow(true);
        Assert.ExpectedError('Expected failure message:');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateReservationTicketIssuedYesterdayValidToday()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateReservationTicketIssuedYesterdayValidToday(true);
        Assert.AreEqual(CalcDate('<-1D>'), Ticket."Document Date", 'Document Date should be yesterday.');
        Assert.AreEqual(Today(), _TicketLibrary.GetReservationAdmissionDate(Ticket."No."), 'Reservation admission should be today.');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateReservationTicketIssuedYesterdayValidTomorrow()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateReservationTicketIssuedYesterdayValidTomorrow(false);
        Assert.AreEqual(CalcDate('<-1D>'), Ticket."Document Date", 'Document Date should be yesterday.');
        Assert.AreEqual(CalcDate('<+1D>'), _TicketLibrary.GetReservationAdmissionDate(Ticket."No."), 'Reservation admission should be tomorrow.');

        asserterror _TicketLibrary.CreateReservationTicketIssuedYesterdayValidTomorrow(true);
        Assert.ExpectedError('Expected failure message:');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure Test_CreateReservationTicketIssuedYesterdayValidYesterday()
    var
        Ticket: Record "NPR TM Ticket";
        Assert: Codeunit "Assert";
    begin
        Ticket := _TicketLibrary.CreateReservationTicketIssuedYesterdayValidYesterday(false);
        Assert.AreEqual(CalcDate('<-1D>'), Ticket."Document Date", 'Document Date should be yesterday.');
        Assert.AreEqual(CalcDate('<-1D>'), _TicketLibrary.GetReservationAdmissionDate(Ticket."No."), 'Reservation admission should be yesterday.');

        asserterror _TicketLibrary.CreateReservationTicketIssuedYesterdayValidYesterday(true);
        Assert.ExpectedError('Expected failure message:');
    end;
}
#endif