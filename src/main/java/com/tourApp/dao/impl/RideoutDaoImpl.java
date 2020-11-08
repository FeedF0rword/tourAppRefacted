package com.tourApp.dao.impl;

import com.tourApp.dao.RideoutDao;
import com.tourApp.model.Product;
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

    public Product getRideoutById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();

        return product;
    }

    public List<Product> getRideoutsList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> productList = query.list();
        session.flush();

        return productList;
    }

    public void addRideout(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void editRideout(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void deleteRideout(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();
    }
}
