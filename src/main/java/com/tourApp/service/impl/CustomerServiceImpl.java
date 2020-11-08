package com.tourApp.service.impl;

import com.tourApp.dao.CustomerDao;
import com.tourApp.model.Customer;
import com.tourApp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    private CustomerDao customerDao;

    public void addCustomer (Customer customer) {
        customerDao.addCustomer(customer);
    }

    public void updateCustomer(Customer customer) {
        customerDao.updateCustomer(customer);
    }

    public void deleteCustomer(int Id) {
        customerDao.deleteCustomer(Id);
    }

    public Customer getCustomerById(int customerId) {
        return customerDao.getCustomerById(customerId);
    }

    public List<Customer> getAllCustomers() {
        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUsername (String username) {
        return customerDao.getCustomerByUsername(username);
    }
}
