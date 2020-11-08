package com.tourApp.service.impl;

import com.tourApp.dao.RideoutItemDao;
import com.tourApp.model.RideoutCart;
import com.tourApp.model.RideoutItem;
import com.tourApp.service.RideoutItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class RideoutItemServiceImpl implements RideoutItemService {

    @Autowired
    private RideoutItemDao rideoutItemDao;

    public void addRideoutItem(RideoutItem rideoutItem) {
        rideoutItemDao.addRideoutItem(rideoutItem);
    }

    public void removeRideoutItem(RideoutItem rideoutItem) {
        rideoutItemDao.removeRideoutItem(rideoutItem);
    }

    public void removeAllRegisteredRideouts(RideoutCart rideoutCart){
        rideoutItemDao.removeAllRideoutItems(rideoutCart);
    }

    public RideoutItem getRideoutItemByRideoutId(int rideoutId) {
        return rideoutItemDao.getRideoutItemByRideoutId(rideoutId);
    }
}
