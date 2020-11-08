package com.tourApp.dao;

import com.tourApp.model.Customer;

import java.util.List;

public interface CustomerDao {

    void addCustomer (Customer customer);

    void updateCustomer(Customer customer);

    void deleteCustomer(int Id);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}
