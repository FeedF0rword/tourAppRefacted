package com.tourApp.controller;

import com.tourApp.model.Customer;
import com.tourApp.model.RideoutCart;
import com.tourApp.service.CustomerService;
import com.tourApp.service.RegisterRideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer/cart")
public class RideoutRegistrationController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private RegisterRideoutService registerRideoutService;

    @RequestMapping
    public String getRegistrations(@AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername (activeUser.getUsername());
        int cartId = customer.getCart().getCartId();

        return "redirect:/customer/cart/"+cartId;
    }

    @RequestMapping("/{cartId}")
    public String getRideoutsRedirect(@PathVariable (value = "cartId") int cartId, Model model) {
        RideoutCart rideoutCart = registerRideoutService.getRegistrationById(cartId);
        model.addAttribute("registrations" , rideoutCart);

        return "cart";
    }

}
