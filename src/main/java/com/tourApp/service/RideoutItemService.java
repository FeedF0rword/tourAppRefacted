package com.tourApp.service;

import com.tourApp.model.RideoutCart;
import com.tourApp.model.RideoutItem;

public interface RideoutItemService {

    void addRideoutItem(RideoutItem rideoutItem);

    void removeRideoutItem(RideoutItem rideoutItem);

    void removeAllRegisteredRideouts(RideoutCart rideoutCart);

    RideoutItem getRideoutItemByRideoutId(int rideoutId);
}
