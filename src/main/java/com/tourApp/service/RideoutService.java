package com.tourApp.service;

import com.tourApp.model.Product;

import java.util.List;

public interface RideoutService {

    List<Product> getRideoutList();

    Product getRideoutById(int id);

    void addRideout(Product product);

    void editRideout(Product product);

    void deleteRideout(Product product);
}
