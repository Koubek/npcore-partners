#if not (BC17 or BC18 or BC19 or BC20 or BC21 or BC22)
codeunit 6248639 "NPR API Restaurant Location"
{
    Access = Internal;

    procedure GetLocations(var Request: Codeunit "NPR API Request") Response: Codeunit "NPR API Response"
    var
        Restaurant: Record "NPR NPRE Restaurant";
        SeatingLocation: Record "NPR NPRE Seating Location";
        Json: Codeunit "NPR JSON Builder";
        RestaurantId: Guid;
    begin
        Request.SkipCacheIfNonStickyRequest(GetTableIds());

        if not Evaluate(RestaurantId, Request.Paths().Get(2)) then
            exit(Response.RespondBadRequest('Invalid restaurantId format'));

        Restaurant.ReadIsolation := IsolationLevel::ReadCommitted;
        if not Restaurant.GetBySystemId(RestaurantId) then
            exit(Response.RespondResourceNotFound());

        SeatingLocation.ReadIsolation := IsolationLevel::ReadCommitted;
        SeatingLocation.SetRange("Restaurant Code", Restaurant.Code);
        SeatingLocation.SetLoadFields(
            "Code",
            Description,
            "Restaurant Code",
            "POS Store",
            "Auto Send Kitchen Order"
        );
        SeatingLocation.SetCurrentKey("Restaurant Code");
        SeatingLocation.SetAutoCalcFields(Seatings, Seats);

        Json.StartArray();
        if SeatingLocation.FindSet() then
            repeat
                BuildLocationObject(SeatingLocation, Restaurant.SystemId, Json);
            until SeatingLocation.Next() = 0;
        Json.EndArray();

        exit(Response.RespondOK(Json.BuildAsArray()));
    end;

    procedure GetLocation(var Request: Codeunit "NPR API Request") Response: Codeunit "NPR API Response"
    var
        Restaurant: Record "NPR NPRE Restaurant";
        SeatingLocation: Record "NPR NPRE Seating Location";
        Json: Codeunit "NPR JSON Builder";
        LocationId: Guid;
        RestaurantId: Guid;
    begin
        Request.SkipCacheIfNonStickyRequest(GetTableIds());

        if not Evaluate(RestaurantId, Request.Paths().Get(2)) then
            exit(Response.RespondBadRequest('Invalid restaurantId format'));

        if not Evaluate(LocationId, Request.Paths().Get(4)) then
            exit(Response.RespondBadRequest('Invalid locationId format'));

        Restaurant.ReadIsolation := IsolationLevel::ReadCommitted;
        if not Restaurant.GetBySystemId(RestaurantId) then
            exit(Response.RespondResourceNotFound());

        SeatingLocation.ReadIsolation := IsolationLevel::ReadCommitted;
        if not SeatingLocation.GetBySystemId(LocationId) then
            exit(Response.RespondResourceNotFound());

        if SeatingLocation."Restaurant Code" <> Restaurant.Code then
            exit(Response.RespondResourceNotFound());

        SeatingLocation.CalcFields(Seatings, Seats);
        BuildLocationObject(SeatingLocation, Restaurant.SystemId, Json);

        exit(Response.RespondOK(Json.Build()));
    end;

    local procedure BuildLocationObject(var SeatingLocation: Record "NPR NPRE Seating Location"; RestaurantSystemId: Guid; var Json: Codeunit "NPR JSON Builder")
    begin
        Json.StartObject('')
            .AddProperty('id', Format(SeatingLocation.SystemId, 0, 4).ToLower())
            .AddProperty('code', SeatingLocation."Code")
            .AddProperty('description', SeatingLocation.Description)
            .AddProperty('restaurantCode', SeatingLocation."Restaurant Code")
            .AddProperty('restaurantId', Format(RestaurantSystemId, 0, 4).ToLower())
            .AddProperty('posStoreCode', SeatingLocation."POS Store")
            .AddProperty('autoSendKitchenOrder',
                SeatingLocation."Auto Send Kitchen Order".Names.Get(
                    SeatingLocation."Auto Send Kitchen Order".Ordinals.IndexOf(
                        SeatingLocation."Auto Send Kitchen Order".AsInteger())))
            .AddProperty('seatings', SeatingLocation.Seatings)
            .AddProperty('seats', SeatingLocation.Seats)
        .EndObject();
    end;

    local procedure GetTableIds() TableIds: List of [Integer]
    begin
        TableIds.Add(Database::"NPR NPRE Seating Location");
        TableIds.Add(Database::"NPR NPRE Restaurant");
        TableIds.Add(Database::"NPR NPRE Seating");
    end;
}

#endif
