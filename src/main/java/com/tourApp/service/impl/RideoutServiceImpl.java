package com.tourApp.service.impl;

import com.tourApp.dao.RideoutDao;
import com.tourApp.model.Rideout;
import com.tourApp.service.RideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RideoutServiceImpl implements RideoutService {

    @Autowired
    private RideoutDao rideoutDao;

    public Rideout getRideoutById(int rideoutId) {
        return rideoutDao.getRideoutById(rideoutId);
    }

    public List<Rideout> getRideoutList() {
        return rideoutDao.getRideoutsList();
    }

    public List<Rideout> getFutureRideout() { return rideoutDao.getFutureRideout();  }

    public void addRideout(Rideout rideout) {
        rideoutDao.addRideout(rideout);
    }

    public void editRideout(Rideout rideout) {
        rideoutDao.editRideout(rideout);
    }

    public void deleteRideout(Rideout rideout) {
        rideoutDao.deleteRideout(rideout);
    }
}
