package com.tourApp.service;

import com.tourApp.model.Cart;
import com.tourApp.model.CartItem;

public interface RideoutItemService {

    void addRideoutItem(CartItem cartItem);

    void removeRideoutItem(CartItem cartItem);

    void removeAllRegisteredRideouts(Cart cart);

    CartItem getRideoutItemByRideoutId(int productId);
}
