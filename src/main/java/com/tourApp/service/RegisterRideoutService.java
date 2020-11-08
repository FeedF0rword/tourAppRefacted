package com.tourApp.service;

import com.tourApp.model.RideoutCart;


public interface RegisterRideoutService {

    RideoutCart getRegistrationById(int cartId);

    void update(RideoutCart rideoutCart);
}
