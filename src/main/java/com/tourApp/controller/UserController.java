package com.tourApp.controller;

import com.tourApp.model.Customer;
import com.tourApp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.io.IOException;

@Controller
@RequestMapping("/customer")
public class UserController {

    @Autowired
    CustomerService customerService;

    @RequestMapping("/viewUser")
    public String viewUser(@AuthenticationPrincipal User activeUser, Model model) throws IOException {
        Customer customer =  customerService.getCustomerByUsername(activeUser.getUsername());
        model.addAttribute("user", customer);
        return "viewUser";
    }

    @RequestMapping("/editUser/{id}")
    public String editUser(@PathVariable("id") int id, Model model) {
        Customer customer = customerService.getCustomerById(id);
        model.addAttribute("customer", customer);
        return "editUserSelf";
    }

    @RequestMapping(value="/editUser", method = RequestMethod.POST)
    public String editUsernPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result) {
        if(result.hasErrors()) {
            return "editUserSelf";
        }
        customerService.updateCustomer(customer);
        return "redirect:/customer/viewUser";
    }
}
