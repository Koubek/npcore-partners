#if not (BC17 or BC18 or BC19 or BC20 or BC21 or BC22)
codeunit 6248640 "NPR API Restaurant Handler" implements "NPR API Request Handler"
{
    Access = Internal;

    procedure Handle(var Request: Codeunit "NPR API Request"): Codeunit "NPR API Response"
    var
        APIRestaurant: Codeunit "NPR API Restaurant";
        APIRestaurantMenu: Codeunit "NPR API Restaurant Menu";
        APIRestaurantLocation: Codeunit "NPR API Restaurant Location";
        APIRestaurantSeating: Codeunit "NPR API Restaurant Seating";
        APIKitchenOrders: Codeunit "NPR API Rest. Kitchen Orders";
    begin
        case true of
            Request.Match('GET', '/restaurant'):
                exit(APIRestaurant.GetRestaurants(Request));
            Request.Match('GET', '/restaurant/:restaurantId/menu'):
                exit(APIRestaurantMenu.GetMenus(Request));
            Request.Match('GET', '/restaurant/:restaurantId/menu/:menuId'):
                exit(APIRestaurantMenu.GetMenu(Request));
            Request.Match('GET', '/restaurant/:restaurantId/orders/:orderId'):
                exit(APIKitchenOrders.GetKitchenOrder(Request));
            Request.Match('GET', '/restaurant/:restaurantId/orders'):
                exit(APIKitchenOrders.GetKitchenOrders(Request));
            Request.Match('GET', '/restaurant/:restaurantId/location/:locationId'):
                exit(APIRestaurantLocation.GetLocation(Request));
            Request.Match('GET', '/restaurant/:restaurantId/location'):
                exit(APIRestaurantLocation.GetLocations(Request));
            Request.Match('GET', '/restaurant/:restaurantId/seating/:seatingId'):
                exit(APIRestaurantSeating.GetSeating(Request));
            Request.Match('GET', '/restaurant/:restaurantId/seating'):
                exit(APIRestaurantSeating.GetSeatings(Request));
        end;
    end;
}

#endif
