package com.tourApp.controller;

import com.tourApp.model.*;
import com.tourApp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model) {

        Customer customer = new Customer();
        UserInformation userInformation = new UserInformation();
        InsuranceInformation insuranceInformation = new InsuranceInformation();
        customer.setInsuranceInformation(insuranceInformation);
        customer.setUserInformation(userInformation);

        model.addAttribute("customer", customer);

        return "registerUser";

    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result) {
        if(result.hasErrors()) {
            return "registerUser";
        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);
        return "registerUserSuccess";

    }

}
