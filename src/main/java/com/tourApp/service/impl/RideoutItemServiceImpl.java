package com.tourApp.service.impl;

import com.tourApp.dao.RideoutItemDao;
import com.tourApp.model.Cart;
import com.tourApp.model.CartItem;
import com.tourApp.service.RideoutItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class RideoutItemServiceImpl implements RideoutItemService {

    @Autowired
    private RideoutItemDao rideoutItemDao;

    public void addRideoutItem(CartItem cartItem) {
        rideoutItemDao.addRideoutItem(cartItem);
    }

    public void removeRideoutItem(CartItem cartItem) {
        rideoutItemDao.removeRideoutItem(cartItem);
    }

    public void removeAllRegisteredRideouts(Cart cart){
        rideoutItemDao.removeAllRideoutItems(cart);
    }

    public CartItem getRideoutItemByRideoutId(int productId) {
        return rideoutItemDao.getRideoutItemByRideoutId(productId);
    }
}
