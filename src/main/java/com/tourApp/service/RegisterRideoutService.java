package com.tourApp.service;

import com.tourApp.model.Cart;


public interface RegisterRideoutService {

    Cart getRegistrationById(int cartId);

    void update(Cart cart);
}
