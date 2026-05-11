codeunit 85236 "NPR Library-TicketXmlApiPublic"
{
    var
        _Impl: Codeunit "NPR Library - Ticket XML API";

    procedure MakeReservation(OrderCount: Integer; ItemNumber: Code[20]; Quantity: Integer; MemberReference: Code[20]; ScannerStation: Code[10]; var Token: Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.MakeReservation(OrderCount, ItemNumber, Quantity, MemberReference, ScannerStation, Token, ResponseMessage));
    end;

    procedure MakeReservation(OrderCount: Integer; ItemNumber: Code[20]; Quantity: Integer; AdmissionScheduleEntryNo: Integer; MemberReference: Code[20]; ScannerStation: Code[10]; var Token: Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.MakeReservation(OrderCount, ItemNumber, Quantity, AdmissionScheduleEntryNo, MemberReference, ScannerStation, Token, ResponseMessage));
    end;

    procedure MakeReservation(OrderCount: Integer; ItemNumber: Code[20]; Quantity: Integer; AdmissionScheduleEntryNo: Integer; MemberReference: Code[20]; ScannerStation: Code[10]; UnitAmount: Decimal; UnitAmountInclVat: Decimal; var Token: Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.MakeReservation(OrderCount, ItemNumber, Quantity, AdmissionScheduleEntryNo, MemberReference, ScannerStation, UnitAmount, UnitAmountInclVat, Token, ResponseMessage));
    end;

    procedure MakeDynamicReservation(OrderCount: Integer; ItemNumber: Code[20]; Quantity: Integer; MemberReference: Code[20]; ScannerStation: Code[10]; var Token: Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.MakeDynamicReservation(OrderCount, ItemNumber, Quantity, MemberReference, ScannerStation, Token, ResponseMessage));
    end;

    procedure MakeDynamicReservation2(OrderCount: Integer; ItemNumber: Code[20]; Quantity: Integer; MemberReference: Code[20]; ScannerStation: Code[10]; OptionalIncludeCount: Integer; var Token: Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.MakeDynamicReservation2(OrderCount, ItemNumber, Quantity, MemberReference, ScannerStation, OptionalIncludeCount, Token, ResponseMessage));
    end;

    procedure PreConfirmTicketReservation(Token: Text[100]; ScannerStation: Code[10]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.PreConfirmTicketReservation(Token, ScannerStation, ResponseMessage));
    end;

    procedure ConfirmTicketReservation(Token: Text[100]; SendNotificationTo: Text; ExternalOrderNo: Text; ScannerStation: Code[20]; var TmpResultingTickets: Record "NPR TM Ticket" temporary; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.ConfirmTicketReservation(Token, SendNotificationTo, ExternalOrderNo, ScannerStation, TmpResultingTickets, ResponseMessage));
    end;

    procedure ConfirmTicketReservation(Token: Text[100]; SendNotificationTo: Text; ExternalOrderNo: Text; TicketHolderName: Text[100]; ScannerStation: Code[20]; var TmpResultingTickets: Record "NPR TM Ticket" temporary; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.ConfirmTicketReservation(Token, SendNotificationTo, ExternalOrderNo, TicketHolderName, ScannerStation, TmpResultingTickets, ResponseMessage));
    end;

    procedure CancelTicketReservation(Token: Text[100]; ScannerStation: Code[20]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.CancelTicketReservation(Token, ScannerStation, ResponseMessage));
    end;

    procedure GetTicketsPrintURL(var TmpTickets: Record "NPR TM Ticket" temporary; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.GetTicketsPrintURL(TmpTickets, ResponseMessage));
    end;

    procedure OfflineTicketValidation(var TmpTickets: Record "NPR TM Ticket" temporary; ImportRefName: Text[20]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.OfflineTicketValidation(TmpTickets, ImportRefName, ResponseMessage));
    end;

    procedure ListTicketItems(var TmpTicketItems: Record "Item Variant" temporary): Boolean
    begin
        exit(_Impl.ListTicketItems(TmpTicketItems));
    end;

    procedure AdmissionCapacityCheck(AdmissionCode: Code[20]; ReferenceDate: Date; ReferenceItemNo: Code[20]; var TmpAdmScheduleEntryResponseOut: Record "NPR TM Admis. Schedule Entry" temporary): Boolean
    begin
        exit(_Impl.AdmissionCapacityCheck(AdmissionCode, ReferenceDate, ReferenceItemNo, TmpAdmScheduleEntryResponseOut));
    end;

    procedure ValidateTicketArrival(ExternalTicketNo: Code[30]; AdmissionCode: Code[20]; ScannerStation: Code[20]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.ValidateTicketArrival(ExternalTicketNo, AdmissionCode, ScannerStation, ResponseMessage));
    end;

    procedure ValidateTicketDeparture(ExternalTicketNo: Code[30]; AdmissionCode: Code[20]; ScannerStation: Code[20]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.ValidateTicketDeparture(ExternalTicketNo, AdmissionCode, ScannerStation, ResponseMessage));
    end;

    procedure ListDetails_Ticket(ExternalTicketNo: Code[30]; var TmpTicketsOut: Record "NPR TM Ticket" temporary): Boolean
    begin
        exit(_Impl.ListDetails_Ticket(ExternalTicketNo, TmpTicketsOut));
    end;

    procedure ListDetails_Token(Token: Text[100]; var TmpTicketsOut: Record "NPR TM Ticket" temporary): Boolean
    begin
        exit(_Impl.ListDetails_Token(Token, TmpTicketsOut));
    end;

    procedure GetTicketChangeRequest(ExternalTicketNo: Code[20]; PinCode: Code[10]; var TokenOut: Text[100]; var TmpTicketReservationRequest: Record "NPR TM Ticket Reservation Req." temporary; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.GetTicketChangeRequest(ExternalTicketNo, PinCode, TokenOut, TmpTicketReservationRequest, ResponseMessage));
    end;

    procedure ConfirmChangeTicketReservation(ChangeToken: Text[100]; var TmpCurrentRequest: Record "NPR TM Ticket Reservation Req." temporary; var TmpTargetRequest: Record "NPR TM Ticket Reservation Req." temporary; var TmpTicketReservationResponse: Record "NPR TM Ticket Reserv. Resp." temporary; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.ConfirmChangeTicketReservation(ChangeToken, TmpCurrentRequest, TmpTargetRequest, TmpTicketReservationResponse, ResponseMessage));
    end;

    procedure ConfirmChangeDynamicTicketReservation(ChangeToken: Text[100]; var TmpTargetRequest: Record "NPR TM Ticket Reservation Req." temporary; var TmpTicketReservationResponse: Record "NPR TM Ticket Reserv. Resp." temporary; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.ConfirmChangeDynamicTicketReservation(ChangeToken, TmpTargetRequest, TmpTicketReservationResponse, ResponseMessage));
    end;

    procedure SetTicketAttribute(Token: Text[100]; AdmissionCodeArray: array[10] of Code[20]; AttributeCodeArray: array[10] of Code[10]; ValueArray: array[10] of Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.SetTicketAttribute(Token, AdmissionCodeArray, AttributeCodeArray, ValueArray, ResponseMessage));
    end;

    procedure SendETicket(Token: Text[100]; var ResponseMessage: Text): Boolean
    begin
        exit(_Impl.SendETicket(Token, ResponseMessage));
    end;
}
