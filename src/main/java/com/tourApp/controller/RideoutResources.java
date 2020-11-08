package com.tourApp.controller;

import com.tourApp.model.RideoutCart;
import com.tourApp.model.Rideout;
import com.tourApp.model.RideoutItem;
import com.tourApp.model.Customer;
import com.tourApp.service.RideoutItemService;
import com.tourApp.service.RegisterRideoutService;
import com.tourApp.service.CustomerService;
import com.tourApp.service.RideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/rest/cart")
public class RideoutResources {

    @Autowired
    private RegisterRideoutService registerRideoutService;

    @Autowired
    private RideoutItemService rideoutItemService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private RideoutService rideoutService;

//    @RequestMapping("/{cartId}")
//    public @ResponseBody
//    RideoutCart getCartById (@PathVariable(value = "cartId") int cartId) {
//        return registerRideoutService.getRegistrationById(cartId);
//    }

    @RequestMapping(value = "/add/{rideoutId}", method = RequestMethod.PUT)
    public String addItem (@PathVariable(value ="rideoutId") int rideoutId, @AuthenticationPrincipal User activeUser) {

        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        RideoutCart rideoutCart = customer.getCart();
        Rideout rideout = rideoutService.getRideoutById(rideoutId);
        List<RideoutItem> rideoutItems = rideoutCart.getCartItems();

        for (int i = 0; i< rideoutItems.size(); i++) {
            if(rideout.getRideoutId()== rideoutItems.get(i).getProduct().getRideoutId()){
                return "redirect:/customer/cart";
            }
        }

        RideoutItem rideoutItem = new RideoutItem();
        rideoutItem.setProduct(rideout);
        rideoutItem.setCart(rideoutCart);
        rideoutItemService.addRideoutItem(rideoutItem);
        return "redirect:/customer/cart";
    }

    @RequestMapping(value = "/remove/{rideoutId}", method = RequestMethod.PUT)
    public String removeItem (@PathVariable(value = "rideoutId") int rideoutId) {
        RideoutItem rideoutItem = rideoutItemService.getRideoutItemByRideoutId(rideoutId);
        rideoutItemService.removeRideoutItem(rideoutItem);
        return "redirect:/customer/cart";

    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartId") int cartId) {
        RideoutCart rideoutCart = registerRideoutService.getRegistrationById(cartId);
        rideoutItemService.removeAllRegisteredRideouts(rideoutCart);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
    public void handleClientErrors (Exception e) {}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
    public void handleServerErrors (Exception e) {}
}
