package com.tourApp.dao.impl;

import com.tourApp.dao.CustomerDao;
import com.tourApp.model.Authorities;
import com.tourApp.model.RideoutCart;
import com.tourApp.model.Customer;
import com.tourApp.model.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(customer);

        Users newUser = new Users();
        newUser.setUsername(customer.getUsername());
        newUser.setPassword(customer.getPassword());
        newUser.setEnabled(true);
        newUser.setCustomerId(customer.getCustomerId());

        Authorities newAuthority = new Authorities();
        newAuthority.setUsername(customer.getUsername());
        newAuthority.setAuthority(customer.getRole());
        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newAuthority);

        RideoutCart newRideoutCart = new RideoutCart();
        newRideoutCart.setCustomer(customer);
        customer.setCart(newRideoutCart);
        session.saveOrUpdate(customer);
        session.saveOrUpdate(newRideoutCart);

        session.flush();
    }

    public void updateCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
        Users user = getUserByUsername(customer.getUsername());
        Authorities authorities = getAuthorityByUsername(customer.getUsername());
        user.setPassword(customer.getPassword());
        authorities.setAuthority(customer.getRole());
        session.saveOrUpdate(user);
        session.saveOrUpdate(authorities);
        session.flush();
    }

    public void deleteCustomer(int Id) {
        Session session = sessionFactory.getCurrentSession();
        Customer customer = getCustomerById(Id);
        Users user = getUserByUsername(customer.getUsername());
        user.setEnabled(false);
        session.update(user);
//        Object persistentInstance = session.load(Customer.class, Id);
//        if (persistentInstance != null) {
//            session.delete(persistentInstance);
//        }
        session.flush();
    }

    public Customer getCustomerById (int customerId) {
        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class, customerId);
    }

    public List<Customer> getAllCustomers() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> customerList = query.list();

        return customerList;
    }

    public Customer getCustomerByUsername (String username) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where username = ?");
        query.setString(0, username);

        return (Customer) query.uniqueResult();
    }

    private Authorities getAuthorityByUsername(String username){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Authorities where username = ?");
        query.setString(0, username);
        return (Authorities) query.uniqueResult();
    }

    private Users getUserByUsername(String username){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Users where username = ?");
        query.setString(0, username);
        return (Users) query.uniqueResult();
    }

}
