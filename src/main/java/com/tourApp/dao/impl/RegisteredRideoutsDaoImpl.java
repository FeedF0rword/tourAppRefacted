package com.tourApp.dao.impl;

import com.tourApp.dao.RegisteredRideoutsDao;
import com.tourApp.model.RideoutCart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class RegisteredRideoutsDaoImpl implements RegisteredRideoutsDao {

    @Autowired
    private SessionFactory sessionFactory;

    public RideoutCart getRegistrations(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (RideoutCart) session.get(RideoutCart.class, cartId);
    }

    public void update(RideoutCart rideoutCart) {
    }
}
