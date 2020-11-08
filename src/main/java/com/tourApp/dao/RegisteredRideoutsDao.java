package com.tourApp.dao;

import com.tourApp.model.Cart;

public interface RegisteredRideoutsDao {

    Cart getRegistrations(int cartId);

    void update(Cart cart);
}
