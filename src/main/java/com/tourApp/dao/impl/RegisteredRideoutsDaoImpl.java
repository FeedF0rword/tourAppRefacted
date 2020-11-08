package com.tourApp.dao.impl;

import com.tourApp.dao.RegisteredRideoutsDao;
import com.tourApp.model.Cart;
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

    public Cart getRegistrations(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cartId);
    }

    public void update(Cart cart) {
        int cartId = cart.getCartId();
        // to do later
    }
}
