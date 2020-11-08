package com.tourApp.dao;

import com.tourApp.model.Product;

import java.util.List;

public interface RideoutDao {

    List<Product> getRideoutsList();

    Product getRideoutById(int id);

    void addRideout(Product product);

    void editRideout(Product product);

    void deleteRideout(Product product);
}
