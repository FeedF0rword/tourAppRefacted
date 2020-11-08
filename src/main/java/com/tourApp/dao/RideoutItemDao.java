package com.tourApp.dao;

import com.tourApp.model.RideoutCart;
import com.tourApp.model.RideoutItem;

public interface RideoutItemDao {

    void addRideoutItem(RideoutItem rideoutItem);

    void removeRideoutItem(RideoutItem rideoutItem);

    void removeAllRideoutItems(RideoutCart rideoutCart);

    RideoutItem getRideoutItemByRideoutId(int productId);

}
