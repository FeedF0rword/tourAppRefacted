package com.tourApp.dao;

import com.tourApp.model.Rideout;

import java.util.List;

public interface RideoutDao {

    List<Rideout> getRideoutsList();

    List<Rideout> getFutureRideout();

    Rideout getRideoutById(int id);

    void addRideout(Rideout rideout);

    void editRideout(Rideout rideout);

    void deleteRideout(Rideout rideout);
}
