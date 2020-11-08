package com.tourApp.dao.impl;

import com.tourApp.dao.RideoutDao;
import com.tourApp.model.Rideout;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class RideoutDaoImpl implements RideoutDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Rideout getRideoutById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Rideout rideout = (Rideout) session.get(Rideout.class, id);
        session.flush();

        return rideout;
    }

    public List<Rideout> getRideoutsList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Rideout");
        List<Rideout> rideoutList = query.list();
        session.flush();

        return rideoutList;
    }

    public void addRideout(Rideout rideout) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(rideout);
        session.flush();
    }

    public void editRideout(Rideout rideout) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(rideout);
        session.flush();
    }

    public void deleteRideout(Rideout rideout) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(rideout);
        session.flush();
    }
}
