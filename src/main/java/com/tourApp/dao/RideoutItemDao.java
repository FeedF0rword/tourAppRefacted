package com.tourApp.dao;

import com.tourApp.model.Cart;
import com.tourApp.model.CartItem;

public interface RideoutItemDao {

    void addRideoutItem(CartItem cartItem);

    void removeRideoutItem(CartItem cartItem);

    void removeAllRideoutItems(Cart cart);

    CartItem getRideoutItemByRideoutId(int productId);

}
