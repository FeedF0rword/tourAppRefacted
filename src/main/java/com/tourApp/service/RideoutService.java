package com.tourApp.service;

import com.tourApp.model.Rideout;

import java.util.List;

public interface RideoutService {

    List<Rideout> getRideoutList();

    Rideout getRideoutById(int id);

    void addRideout(Rideout rideout);

    void editRideout(Rideout rideout);

    void deleteRideout(Rideout rideout);
}
