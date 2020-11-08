package com.tourApp.dao.impl;

import com.tourApp.dao.RideoutItemDao;
import com.tourApp.model.RideoutCart;
import com.tourApp.model.RideoutItem;
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

    public void addRideoutItem(RideoutItem rideoutItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(rideoutItem);
        session.flush();
    }

    public void removeRideoutItem(RideoutItem rideoutItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(rideoutItem);
        session.flush();
    }

    public void removeAllRideoutItems(RideoutCart rideoutCart) {
        List<RideoutItem> rideoutItems = rideoutCart.getCartItems();

        for (RideoutItem item : rideoutItems) {
            removeRideoutItem(item);
        }
    }

    public RideoutItem getRideoutItemByRideoutId(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from RideoutItem where rideoutId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (RideoutItem) query.uniqueResult();
    }
}
