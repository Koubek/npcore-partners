#if not BC17 and not BC18 and not BC19 and not BC20 and not BC21 and not BC22
codeunit 85215 "NPR APIRest BackgroundUrl"
{
    // [FEATURE] GET /restaurant response shape includes optional backgroundUrl (emitted only when set)

    Subtype = Test;

    var
        _Initialized: Boolean;
        _Restaurant: Record "NPR NPRE Restaurant";

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure RestaurantAPIOmitsBackgroundUrlWhenNotSet()
    var
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        Base64Convert: Codeunit "Base64 Convert";
        Assert: Codeunit Assert;
        Response: JsonObject;
        Body: JsonObject;
        QueryParams: Dictionary of [Text, Text];
        Headers: Dictionary of [Text, Text];
        ResponseArray: JsonArray;
        RestaurantToken: JsonToken;
        RestaurantObj: JsonObject;
        JToken: JsonToken;
        i: Integer;
        FoundRestaurant: Boolean;
    begin
        // [SCENARIO] Restaurant with no uploaded background image does not expose a backgroundUrl in GET /restaurant.
        Initialize();

        Response := LibraryNPRetailAPI.CallApi('GET', '/restaurant', Body, QueryParams, Headers);
        Assert.IsTrue(LibraryNPRetailAPI.IsSuccessStatusCode(Response), 'GET /restaurant should succeed');

        Response.Get('body', JToken);
        if JToken.IsValue() then begin
            ResponseArray.ReadFrom(Base64Convert.FromBase64(JToken.AsValue().AsText()));
        end else
            ResponseArray := JToken.AsArray();

        for i := 0 to ResponseArray.Count() - 1 do begin
            ResponseArray.Get(i, RestaurantToken);
            RestaurantObj := RestaurantToken.AsObject();
            RestaurantObj.Get('code', JToken);
            if JToken.AsValue().AsText() = _Restaurant.Code then begin
                FoundRestaurant := true;
                Assert.IsFalse(RestaurantObj.Contains('backgroundUrl'), 'Restaurant without uploaded background should not emit backgroundUrl');
            end;
        end;
        Assert.IsTrue(FoundRestaurant, 'Test restaurant should be present in API response');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure BackgroundHandler_HaveBackground_ReturnsTrueWhenMediaLinkExists()
    var
        BackgroundHandler: Codeunit "NPR NPRERestBackgroundHandler";
        Assert: Codeunit Assert;
        MediaLink: Record "NPR CloudflareMediaLink";
    begin
        // [SCENARIO] Exercises the happy path of the MediaLink → HaveBackground → GetMediaDetails branch without
        //             requiring a live Cloudflare upload. Seeds a CloudflareMediaLink row for the test restaurant,
        //             then asserts HaveBackground returns true — protects against regressions where the handler
        //             branch is wired incorrectly (e.g. wrong selector enum, swapped TableNumber, etc.) and
        //             would otherwise silently no-op under the negative test alone.
        Initialize();

        MediaLink.SetRange(TableNumber, Database::"NPR NPRE Restaurant");
        MediaLink.SetRange(RecordId, _Restaurant.SystemId);
        MediaLink.SetRange(MediaSelector, Enum::"NPR CloudflareMediaSelector"::RESTAURANT_BACKGROUND);
        MediaLink.DeleteAll();

        MediaLink.Init();
        MediaLink.TableNumber := Database::"NPR NPRE Restaurant";
        MediaLink.RecordId := _Restaurant.SystemId;
        MediaLink.MediaSelector := Enum::"NPR CloudflareMediaSelector"::RESTAURANT_BACKGROUND;
        MediaLink.MediaKey := 'test-media-key-for-background';
        MediaLink.PublicId := CopyStr(Format(_Restaurant.SystemId, 0, 4).ToLower(), 1, MaxStrLen(MediaLink.PublicId));
        MediaLink.Insert();
        Commit();

        Assert.IsTrue(BackgroundHandler.HaveBackground(_Restaurant.SystemId), 'HaveBackground should return true when a CloudflareMediaLink row exists for the restaurant');
    end;

    local procedure Initialize()
    var
        LibraryRestaurant: Codeunit "NPR Library - Restaurant";
        LibraryNPRetailAPI: Codeunit "NPR Library - NPRetail API";
        ServFlowProfile: Record "NPR NPRE Serv.Flow Profile";
        RestaurantSetup: Record "NPR NPRE Restaurant Setup";
    begin
        if _Initialized then
            exit;

        LibraryNPRetailAPI.CreateAPIPermission(UserSecurityId(), CompanyName(), 'NPR API Restaurant');

        LibraryRestaurant.CreateRestaurantSetup(RestaurantSetup);
        LibraryRestaurant.CreateServiceFlowProfile(ServFlowProfile);
        LibraryRestaurant.CreateRestaurant(_Restaurant, ServFlowProfile.Code);

        _Initialized := true;
        Commit();
    end;
}
#endif
