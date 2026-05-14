#if not (BC17 or BC18 or BC19 or BC20 or BC21 or BC22)
codeunit 85230 "NPR APIRest Location Tests"
{
    // [FEATURE] GET /restaurant/:restaurantId/location and GET /restaurant/:restaurantId/location/:locationId

    Subtype = Test;

    var
        _OtherRestaurant: Record "NPR NPRE Restaurant";
        _Restaurant: Record "NPR NPRE Restaurant";
        _OtherSeatingLocation: Record "NPR NPRE Seating Location";
        _SeatingLocation: Record "NPR NPRE Seating Location";
        _Initialized: Boolean;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocations_ForRestaurant_ReturnsOnlyMatching()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        AllMatch: Boolean;
        FoundExpected: Boolean;
        FoundOther: Boolean;
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        i: Integer;
        ResponseArray: JsonArray;
        Body: JsonObject;
        LocationObj: JsonObject;
        Response: JsonObject;
        JToken: JsonToken;
    begin
        // [SCENARIO] GET /restaurant/{restaurantId}/location returns only locations belonging to that restaurant
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/' + FormatGuid(_Restaurant.SystemId) + '/location', Body, QueryParams, Headers);

        Assert.IsTrue(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'GET /restaurant/{id}/location should succeed');

        ResponseArray := ReadResponseBodyAsArray(Response);
        Assert.IsTrue(ResponseArray.Count() >= 1, 'Result should include the matching location');

        AllMatch := true;
        for i := 0 to ResponseArray.Count() - 1 do begin
            ResponseArray.Get(i, JToken);
            LocationObj := JToken.AsObject();
            LocationObj.Get('restaurantCode', JToken);
            if JToken.AsValue().AsText() <> _Restaurant.Code then
                AllMatch := false;
            LocationObj.Get('code', JToken);
            if JToken.AsValue().AsText() = _SeatingLocation.Code then
                FoundExpected := true;
            if JToken.AsValue().AsText() = _OtherSeatingLocation.Code then
                FoundOther := true;
        end;

        Assert.IsTrue(AllMatch, 'All returned locations must belong to the path restaurant');
        Assert.IsTrue(FoundExpected, 'Result should contain the primary test location');
        Assert.IsFalse(FoundOther, 'Result must not contain other-restaurant location');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocations_UnknownRestaurantId_ReturnsNotFound()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        Body: JsonObject;
        Response: JsonObject;
    begin
        // [SCENARIO] GET /restaurant/{unknown-guid}/location returns not found
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/' + FormatGuid(CreateGuid()) + '/location', Body, QueryParams, Headers);

        Assert.IsFalse(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Unknown restaurantId should not succeed');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocations_MalformedRestaurantId_ReturnsBadRequest()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        Body: JsonObject;
        Response: JsonObject;
        JToken: JsonToken;
    begin
        // [SCENARIO] Malformed restaurantId in path returns 400 Bad Request
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/not-a-guid/location', Body, QueryParams, Headers);

        Assert.IsFalse(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Malformed restaurantId should not succeed');
        Response.Get('statusCode', JToken);
        Assert.AreEqual(400, JToken.AsValue().AsInteger(), 'Should return 400 for malformed Guid');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocation_BySystemId_ReturnsLocation()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        Body: JsonObject;
        Response: JsonObject;
        ResponseBody: JsonObject;
        JToken: JsonToken;
    begin
        // [SCENARIO] GET /restaurant/{restaurantId}/location/{locationId} returns the matching location with expected fields
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/' + FormatGuid(_Restaurant.SystemId) + '/location/' + FormatGuid(_SeatingLocation.SystemId), Body, QueryParams, Headers);

        Assert.IsTrue(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'GET /restaurant/{id}/location/{id} should succeed');

        ResponseBody := LibraryNPRetailAPI.GetResponseBody(Response);

        ResponseBody.Get('id', JToken);
        Assert.AreEqual(FormatGuid(_SeatingLocation.SystemId), JToken.AsValue().AsText(), 'id should match SystemId');

        ResponseBody.Get('code', JToken);
        Assert.AreEqual(_SeatingLocation.Code, JToken.AsValue().AsText(), 'code should match');

        ResponseBody.Get('restaurantCode', JToken);
        Assert.AreEqual(_Restaurant.Code, JToken.AsValue().AsText(), 'restaurantCode should match');

        ResponseBody.Get('restaurantId', JToken);
        Assert.AreEqual(FormatGuid(_Restaurant.SystemId), JToken.AsValue().AsText(), 'restaurantId should resolve to restaurant SystemId');

        Assert.IsTrue(ResponseBody.Contains('description'), 'Response should contain description');
        Assert.IsTrue(ResponseBody.Contains('posStoreCode'), 'Response should contain posStoreCode');
        Assert.IsTrue(ResponseBody.Contains('autoSendKitchenOrder'), 'Response should contain autoSendKitchenOrder');
        Assert.IsTrue(ResponseBody.Contains('seatings'), 'Response should contain seatings count');
        Assert.IsTrue(ResponseBody.Contains('seats'), 'Response should contain seats count');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocation_WrongRestaurant_ReturnsNotFound()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        Body: JsonObject;
        Response: JsonObject;
    begin
        // [SCENARIO] Looking up a location under a restaurant it does not belong to returns 404
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/' + FormatGuid(_OtherRestaurant.SystemId) + '/location/' + FormatGuid(_SeatingLocation.SystemId), Body, QueryParams, Headers);

        Assert.IsFalse(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Cross-restaurant location lookup should not succeed');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocation_UnknownLocationId_ReturnsNotFound()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        Body: JsonObject;
        Response: JsonObject;
    begin
        // [SCENARIO] GET /restaurant/{id}/location/{unknown-guid} returns not found
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/' + FormatGuid(_Restaurant.SystemId) + '/location/' + FormatGuid(CreateGuid()), Body, QueryParams, Headers);

        Assert.IsFalse(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Unknown locationId should not succeed');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure GetLocation_MalformedLocationId_ReturnsBadRequest()
    var
        Assert: Codeunit Assert;
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Headers: Dictionary of [Text, Text];
        QueryParams: Dictionary of [Text, Text];
        Body: JsonObject;
        Response: JsonObject;
        JToken: JsonToken;
    begin
        // [SCENARIO] GET /restaurant/{id}/location/{not-a-guid} returns 400 Bad Request
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant/' + FormatGuid(_Restaurant.SystemId) + '/location/not-a-guid', Body, QueryParams, Headers);

        Assert.IsFalse(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'Malformed locationId should not succeed');
        Response.Get('statusCode', JToken);
        Assert.AreEqual(400, JToken.AsValue().AsInteger(), 'Should return 400 for malformed Guid');
    end;

    local procedure Initialize()
    var
        RestaurantSetup: Record "NPR NPRE Restaurant Setup";
        ServFlowProfile: Record "NPR NPRE Serv.Flow Profile";
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        LibraryRestaurant: Codeunit "NPR Library - Restaurant";
    begin
        if _Initialized then
            exit;

        LibraryNPRetailAPI.CreateAPIPermission(UserSecurityId(), CompanyName(), 'NPR API Restaurant');

        LibraryRestaurant.CreateRestaurantSetup(RestaurantSetup);
        LibraryRestaurant.CreateServiceFlowProfile(ServFlowProfile);

        LibraryRestaurant.CreateRestaurant(_Restaurant, ServFlowProfile.Code);
        LibraryRestaurant.CreateSeatingLocation(_SeatingLocation, _Restaurant.Code);

        LibraryRestaurant.CreateRestaurant(_OtherRestaurant, ServFlowProfile.Code);
        LibraryRestaurant.CreateSeatingLocation(_OtherSeatingLocation, _OtherRestaurant.Code);

        _Initialized := true;
        Commit();
    end;

    local procedure ReadResponseBodyAsArray(Response: JsonObject) ResponseArray: JsonArray
    var
        Base64Convert: Codeunit "Base64 Convert";
        JToken: JsonToken;
    begin
        Response.Get('body', JToken);
        if JToken.IsValue() then
            ResponseArray.ReadFrom(Base64Convert.FromBase64(JToken.AsValue().AsText()))
        else
            ResponseArray := JToken.AsArray();
    end;

    local procedure FormatGuid(Id: Guid): Text
    begin
        exit(Format(Id, 0, 4).ToLower());
    end;
}
#endif
