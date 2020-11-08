package com.tourApp.service.impl;

import com.tourApp.dao.RideoutDao;
import com.tourApp.model.Product;
import com.tourApp.service.RideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RideoutServiceImpl implements RideoutService {

    @Autowired
    private RideoutDao rideoutDao;

    public Product getRideoutById(int productId) {
        return rideoutDao.getRideoutById(productId);
    }

    public List<Product> getRideoutList() {
        return rideoutDao.getRideoutsList();
    }

    public void addRideout(Product product) {
        rideoutDao.addRideout(product);
    }

    public void editRideout(Product product) {
        rideoutDao.editRideout(product);
    }

    public void deleteRideout(Product product) {
        rideoutDao.deleteRideout(product);
    }
}
