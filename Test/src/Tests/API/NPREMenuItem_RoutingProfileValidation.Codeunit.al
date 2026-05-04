#if not BC17 and not BC18 and not BC19 and not BC20 and not BC21 and not BC22
codeunit 85206 "NPR NPREMenuItem Validation"
{
    // [FEATURE] NPR NPRE Menu Item — an item without a routing profile cannot be added to a restaurant menu

    Subtype = Test;

    var
        _Initialized: Boolean;
        _Restaurant: Record "NPR NPRE Restaurant";
        _Menu: Record "NPR NPRE Menu";
        _MenuCategory: Record "NPR NPRE Menu Category";
        _ItemWithProfile: Record Item;
        _ItemWithoutProfile: Record Item;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure InsertMenuItem_FailsWhenItemHasBlankRoutingProfile()
    var
        MenuItem: Record "NPR NPRE Menu Item";
        Assert: Codeunit Assert;
    begin
        // [SCENARIO] Inserting a menu item for an item without a routing profile raises an error.
        Initialize();
        MenuItem.DeleteAll();

        asserterror BeginInsertMenuItem(_ItemWithoutProfile."No.");
        Assert.ExpectedError('cannot be added to a restaurant menu');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure InsertMenuItem_SucceedsWhenItemHasRoutingProfile()
    var
        MenuItem: Record "NPR NPRE Menu Item";
        Assert: Codeunit Assert;
    begin
        // [SCENARIO] Inserting a menu item for an item with a routing profile succeeds.
        Initialize();
        MenuItem.DeleteAll();

        BeginInsertMenuItem(_ItemWithProfile."No.");

        Assert.RecordIsNotEmpty(MenuItem);
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure ValidateItemNo_FiresCheckOnItemChange()
    var
        MenuItem: Record "NPR NPRE Menu Item";
        Assert: Codeunit Assert;
    begin
        // [SCENARIO] Re-validating Item No. on an existing menu item to a non-restaurant item raises the error.
        Initialize();
        MenuItem.DeleteAll();

        BeginInsertMenuItem(_ItemWithProfile."No.");
        MenuItem.FindFirst();

        asserterror MenuItem.Validate("Item No.", _ItemWithoutProfile."No.");
        Assert.ExpectedError('cannot be added to a restaurant menu');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure ModifyUnrelatedField_OnOrphanMenuItem_DoesNotFire()
    var
        MenuItem: Record "NPR NPRE Menu Item";
        Assert: Codeunit Assert;
    begin
        // [SCENARIO] Legacy orphan (menu item pre-existing with blank routing profile on its item).
        // User modifies an unrelated field; must NOT fire the validation.
        Initialize();
        MenuItem.DeleteAll();

        BeginInsertMenuItem(_ItemWithProfile."No.");
        MenuItem.FindFirst();
        // Now simulate the "legacy orphan" scenario: clear the routing profile on the item AFTER the menu item was created.
        _ItemWithProfile."NPR NPRE Item Routing Profile" := '';
        _ItemWithProfile.Modify();

        MenuItem."Sort Key" := 99999;
        MenuItem.Modify();

        Assert.AreEqual(99999, MenuItem."Sort Key", 'Modify on unrelated field should succeed');
    end;

    [Test]
    [TestPermissions(TestPermissions::Disabled)]
    procedure ValidateSameItemNo_DoesNotFire()
    var
        MenuItem: Record "NPR NPRE Menu Item";
    begin
        // [SCENARIO] Validating "Item No." with the SAME value as before must not fire the check (xRec = Rec gate).
        Initialize();
        MenuItem.DeleteAll();

        BeginInsertMenuItem(_ItemWithProfile."No.");
        MenuItem.FindFirst();

        // Clear the routing profile afterwards — the item is now an "orphan"
        _ItemWithProfile."NPR NPRE Item Routing Profile" := '';
        _ItemWithProfile.Modify();

        // Re-validating with the same value is a no-op and must not error
        MenuItem.Validate("Item No.", MenuItem."Item No.");
    end;

    local procedure Initialize()
    var
        LibraryRestaurant: Codeunit "NPR Library - Restaurant";
        NPRLibraryInventory: Codeunit "NPR Library - Inventory";
        ItemRoutingProfile: Record "NPR NPRE Item Routing Profile";
        RestaurantSetup: Record "NPR NPRE Restaurant Setup";
        ServFlowProfile: Record "NPR NPRE Serv.Flow Profile";
    begin
        if not _Initialized then begin
            LibraryRestaurant.CreateRestaurantSetup(RestaurantSetup);
            LibraryRestaurant.CreateServiceFlowProfile(ServFlowProfile);
            LibraryRestaurant.CreateRestaurant(_Restaurant, ServFlowProfile.Code);

            LibraryRestaurant.CreateMenu(_Menu, _Restaurant.Code);
            LibraryRestaurant.CreateMenuCategory(_MenuCategory, _Restaurant.Code, _Menu.Code, 'TEST');

            LibraryRestaurant.CreateItemRoutingProfile(ItemRoutingProfile);

            NPRLibraryInventory.CreateItem(_ItemWithProfile);
            NPRLibraryInventory.CreateItem(_ItemWithoutProfile);

            _Initialized := true;
        end;

        // Always re-assert item state so tests are order-independent
        // (the orphan scenarios temporarily clear _ItemWithProfile's routing profile).
        if not ItemRoutingProfile.FindFirst() then;
        _ItemWithProfile.Find();
        _ItemWithProfile."NPR NPRE Item Routing Profile" := ItemRoutingProfile.Code;
        _ItemWithProfile.Modify();

        _ItemWithoutProfile.Find();
        _ItemWithoutProfile."NPR NPRE Item Routing Profile" := '';
        _ItemWithoutProfile.Modify();

        Commit();
    end;

    local procedure BeginInsertMenuItem(ItemNo: Code[20])
    var
        MenuItem: Record "NPR NPRE Menu Item";
    begin
        MenuItem.Init();
        MenuItem."Restaurant Code" := _Restaurant.Code;
        MenuItem."Menu Code" := _Menu.Code;
        MenuItem."Category Code" := _MenuCategory."Category Code";
        MenuItem."Line No." := 10000;
        MenuItem."Item No." := ItemNo;
        MenuItem.Insert(true);
    end;
}
#endif
