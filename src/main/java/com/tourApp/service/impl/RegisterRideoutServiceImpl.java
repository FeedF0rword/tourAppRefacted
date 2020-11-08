package com.tourApp.service.impl;

import com.tourApp.dao.RegisteredRideoutsDao;
import com.tourApp.model.RideoutCart;
import com.tourApp.service.RegisterRideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class RegisterRideoutServiceImpl implements RegisterRideoutService {

    @Autowired
    private RegisteredRideoutsDao registeredRideoutsDao;

    public RideoutCart getRegistrationById(int cartId) {
        return registeredRideoutsDao.getRegistrations(cartId);
    }

    public void update(RideoutCart rideoutCart) {
        registeredRideoutsDao.update(rideoutCart);
    }
}
