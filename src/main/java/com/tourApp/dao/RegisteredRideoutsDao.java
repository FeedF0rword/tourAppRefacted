package com.tourApp.dao;

import com.tourApp.model.RideoutCart;

public interface RegisteredRideoutsDao {

    RideoutCart getRegistrations(int cartId);

    void update(RideoutCart rideoutCart);
}
