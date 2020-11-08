package com.tourApp.dao.impl;

import com.tourApp.dao.RideoutItemDao;
import com.tourApp.model.Cart;
import com.tourApp.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class RideoutItemDaoImpl implements RideoutItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addRideoutItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeRideoutItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    public void removeAllRideoutItems(Cart cart) {
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            removeRideoutItem(item);
        }
    }

    public CartItem getRideoutItemByRideoutId(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where rideoutId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (CartItem) query.uniqueResult();
    }
}
