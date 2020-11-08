package com.tourApp.controller.admin;

import com.tourApp.model.Customer;
import com.tourApp.model.InsuranceInformation;
import com.tourApp.model.UserInformation;
import com.tourApp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;

@Controller
@RequestMapping("/admin")
public class AdminUser {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/user/addUser")
    public String addUserAdmin(Model model) {
        Customer customer = new Customer();
        UserInformation userInformation = new UserInformation();
        InsuranceInformation insuranceInformation = new InsuranceInformation();
        customer.setInsuranceInformation(insuranceInformation);
        customer.setUserInformation(userInformation);

        model.addAttribute("customer", customer);

        return "registerUser";
    }

    @RequestMapping(value="/user/addUser", method = RequestMethod.POST)
    public String addUserAdminPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
                                 HttpServletRequest request) {
        if(result.hasErrors()) {
            return "registerUser";
        }
        customer.setEnabled(true);
        customerService.addCustomer(customer);
        return "redirect:/admin/userInventory";
    }
    @RequestMapping("/user/viewUser/{id}")
    public String viewUser(@PathVariable("id") int id, Model model) throws IOException {
        Customer customer =  customerService.getCustomerById(id);
        model.addAttribute("user", customer);
        return "viewUser";
    }

    @RequestMapping("/user/editUser/{id}")
    public String editUserAdmin(@PathVariable("id") int id, Model model) {
        Customer customer = customerService.getCustomerById(id);
        model.addAttribute("customer", customer);
        return "editUser";
    }

    @RequestMapping(value="/user/editUser", method = RequestMethod.POST)
    public String editUserAdminPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
                                  HttpServletRequest request) {
        if(result.hasErrors()) {
            return "editUser";
        }
        customerService.updateCustomer(customer);
        return "redirect:/admin/userInventory";
    }

    @RequestMapping("/user/deleteUser/{id}")
    public String deleteUserAdmin(@PathVariable int id, Model model) {

        customerService.deleteCustomer(id);

        return "redirect:/admin/userInventory";
    }
}
