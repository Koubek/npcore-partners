#if not (BC17 or BC18 or BC19 or BC20 or BC21 or BC22)
codeunit 6248643 "NPR API Restaurant Seating"
{
    Access = Internal;

    var
        _CachedSeatingLocations: Dictionary of [Code[10], Guid];

    procedure GetSeatings(var Request: Codeunit "NPR API Request") Response: Codeunit "NPR API Response"
    var
        Restaurant: Record "NPR NPRE Restaurant";
        Seating: Record "NPR NPRE Seating";
        SeatingFilters: Record "NPR NPRE Seating";
        SeatingLocation: Record "NPR NPRE Seating Location";
        JsonArray: Codeunit "NPR JSON Builder";
        SeatingMgt: Codeunit "NPR NPRE Seating Mgt.";
        RecRef: RecordRef;
        DataFound: Boolean;
        MoreRecords: Boolean;
        PageContinuation: Boolean;
        Params: Dictionary of [Text, Text];
        LocationId: Guid;
        RestaurantId: Guid;
        Itt: Integer;
        PageSize: Integer;
        LocationFilter: Text;
        PageKey: Text;
        NoLocationsResourceLbl: Label 'Seating locations for the restaurant';
    begin
        Request.SkipCacheIfNonStickyRequest(GetTableIds());
        Params := Request.QueryParams();

        if not Evaluate(RestaurantId, Request.Paths().Get(2)) then
            exit(Response.RespondBadRequest('Invalid restaurantId format'));

        Restaurant.ReadIsolation := IsolationLevel::ReadCommitted;
        if not Restaurant.GetBySystemId(RestaurantId) then
            exit(Response.RespondResourceNotFound());

        Seating.ReadIsolation := IsolationLevel::ReadCommitted;

        if Params.ContainsKey('locationId') then begin
            if not Evaluate(LocationId, Params.Get('locationId')) then
                exit(Response.RespondBadRequest('Invalid locationId format'));

            SeatingLocation.ReadIsolation := IsolationLevel::ReadCommitted;
            if not SeatingLocation.GetBySystemId(LocationId) then
                exit(Response.RespondResourceNotFound());

            if SeatingLocation."Restaurant Code" <> Restaurant.Code then
                exit(Response.RespondResourceNotFound());

            SeatingFilters.SetRange("Seating Location", SeatingLocation."Code");
        end else begin
            LocationFilter := SeatingMgt.RestaurantSeatingLocationFilter(Restaurant.Code);
            if LocationFilter = '' then
                exit(Response.RespondResourceNotFound(NoLocationsResourceLbl));
            SeatingFilters.SetFilter("Seating Location", LocationFilter);
        end;

        if Params.ContainsKey('pageSize') then begin
            if not Evaluate(PageSize, Params.Get('pageSize')) then
                exit(Response.RespondBadRequest('Invalid pageSize format'));
        end else
            PageSize := 50;

        if PageSize > 100 then
            PageSize := 100;
        if PageSize < 1 then
            PageSize := 1;

        if Params.ContainsKey('pageKey') then begin
            RecRef.GetTable(Seating);
            Request.ApplyPageKey(Params.Get('pageKey'), RecRef);
            RecRef.SetTable(Seating);
            PageContinuation := true;
        end;

        SeatingFilters.CopyFilter("Seating Location", Seating."Seating Location");
        Seating.SetLoadFields(
            "Code",
            "Seating Location",
            "Seating No.",
            Description,
            "Fixed Capasity",
            Capacity,
            "Min Party Size",
            "Max Party Size",
            Status,
            "Global Dimension 1 Code",
            "Global Dimension 2 Code",
            Blocked,
            "Blocking Reason"
        );
        Seating.SetCurrentKey("Seating Location", "Seating No.");
        Seating.SetAutoCalcFields("Status Description FF");

        JsonArray.StartArray();

        if PageContinuation then
            DataFound := Seating.Find('>')
        else
            DataFound := Seating.Find('-');

        if DataFound then
            repeat
                BuildSeatingObject(Seating, JsonArray);
                Itt += 1;
                if Itt = PageSize then begin
                    RecRef.GetTable(Seating);
                    PageKey := Request.GetPageKey(RecRef);
                end;
                MoreRecords := Seating.Next() <> 0;
            until (not MoreRecords) or (Itt = PageSize);
        if not MoreRecords then
            PageKey := '';

        JsonArray.EndArray();

        exit(Response.RespondOK(BuildResponseEnvelope(Request, MoreRecords, PageKey, JsonArray.BuildAsArray())));
    end;

    procedure GetSeating(var Request: Codeunit "NPR API Request") Response: Codeunit "NPR API Response"
    var
        Restaurant: Record "NPR NPRE Restaurant";
        Seating: Record "NPR NPRE Seating";
        Json: Codeunit "NPR JSON Builder";
        RestaurantId: Guid;
        SeatingId: Guid;
    begin
        Request.SkipCacheIfNonStickyRequest(GetTableIds());

        if not Evaluate(RestaurantId, Request.Paths().Get(2)) then
            exit(Response.RespondBadRequest('Invalid restaurantId format'));

        if not Evaluate(SeatingId, Request.Paths().Get(4)) then
            exit(Response.RespondBadRequest('Invalid seatingId format'));

        Restaurant.ReadIsolation := IsolationLevel::ReadCommitted;
        if not Restaurant.GetBySystemId(RestaurantId) then
            exit(Response.RespondResourceNotFound());

        Seating.ReadIsolation := IsolationLevel::ReadCommitted;
        Seating.SetAutoCalcFields("Status Description FF");
        if not Seating.GetBySystemId(SeatingId) then
            exit(Response.RespondResourceNotFound());

        if Seating.GetSeatingRestaurant() <> Restaurant.Code then
            exit(Response.RespondResourceNotFound());

        BuildSeatingObject(Seating, Json);

        exit(Response.RespondOK(Json.Build()));
    end;

    local procedure BuildResponseEnvelope(var Request: Codeunit "NPR API Request"; MorePages: Boolean; NextPageKey: Text; DataJArray: JsonArray) JObject: JsonObject
    begin
        JObject.Add('morePages', MorePages);
        JObject.Add('nextPageKey', NextPageKey);
        JObject.Add('nextPageURL', Request.GetNextPageUrl(NextPageKey));
        JObject.Add('data', DataJArray);
    end;

    local procedure BuildSeatingObject(var Seating: Record "NPR NPRE Seating"; var Json: Codeunit "NPR JSON Builder")
    var
        SeatingLocationSystemID: Guid;
    begin
        Json.StartObject('')
            .AddProperty('id', Format(Seating.SystemId, 0, 4).ToLower())
            .AddProperty('code', Seating."Code")
            .AddProperty('seatingNo', Seating."Seating No.")
            .AddProperty('description', Seating.Description)
            .AddProperty('locationCode', Seating."Seating Location");

        if GetSeatingLocationSystemID(Seating."Seating Location", SeatingLocationSystemID) then
            Json.AddProperty('locationId', Format(SeatingLocationSystemID, 0, 4).ToLower());

        Json.AddProperty('fixedCapacity', Seating."Fixed Capasity")
            .AddProperty('capacity', Seating.Capacity)
            .AddProperty('minPartySize', Seating."Min Party Size")
            .AddProperty('maxPartySize', Seating."Max Party Size")
            .AddProperty('status', Seating.Status)
            .AddProperty('statusDescription', Seating."Status Description FF")
            .AddProperty('globalDimension1Code', Seating."Global Dimension 1 Code")
            .AddProperty('globalDimension2Code', Seating."Global Dimension 2 Code")
            .AddProperty('blocked', Seating.Blocked)
            .AddProperty('blockingReason', Seating."Blocking Reason")
        .EndObject();
    end;

    local procedure GetSeatingLocationSystemID(SeatingLocationCode: Code[10]; var SeatingLocationSystemID: Guid): Boolean
    var
        SeatingLocation: Record "NPR NPRE Seating Location";
    begin
        Clear(SeatingLocationSystemID);
        if SeatingLocationCode = '' then
            exit(false);
        if _CachedSeatingLocations.ContainsKey(SeatingLocationCode) then begin
            SeatingLocationSystemID := _CachedSeatingLocations.Get(SeatingLocationCode);
            exit(true);
        end;
        if not SeatingLocation.Get(SeatingLocationCode) then
            exit(false);
        _CachedSeatingLocations.Add(SeatingLocationCode, SeatingLocation.SystemId);
        SeatingLocationSystemID := SeatingLocation.SystemId;
        exit(true);
    end;

    local procedure GetTableIds() TableIds: List of [Integer]
    begin
        TableIds.Add(Database::"NPR NPRE Seating");
        TableIds.Add(Database::"NPR NPRE Seating Location");
        TableIds.Add(Database::"NPR NPRE Flow Status");
        TableIds.Add(Database::"NPR NPRE Seat.: WaiterPadLink");
    end;
}

#endif
