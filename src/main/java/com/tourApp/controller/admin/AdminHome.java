package com.tourApp.controller.admin;

import com.tourApp.model.Customer;
import com.tourApp.model.Product;
import com.tourApp.service.CustomerService;
import com.tourApp.service.RideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private RideoutService rideoutService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/rideoutInventory")
    public String rideoutInventory(Model model) {
        List<Product> products = rideoutService.getRideoutList();
        model.addAttribute("rideouts", products);

        return "rideoutsInventory";
    }

    @RequestMapping("/userInventory")
    public String customerManagement(Model model) {
        List<Customer> customers = customerService.getAllCustomers();
        model.addAttribute("customers", customers);
        return "customerManagement";
    }
}
