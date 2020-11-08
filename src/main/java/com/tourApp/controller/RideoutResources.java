package com.tourApp.controller;

import com.tourApp.model.Cart;
import com.tourApp.model.CartItem;
import com.tourApp.model.Customer;
import com.tourApp.model.Product;
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

    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById (@PathVariable(value = "cartId") int cartId) {
        return registerRideoutService.getRegistrationById(cartId);
    }

    @RequestMapping(value = "/add/{rideoutId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem (@PathVariable(value ="rideoutId") int rideoutId, @AuthenticationPrincipal User activeUser) {

        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        Cart cart = customer.getCart();
        Product product = rideoutService.getRideoutById(rideoutId);
        List<CartItem> cartItems = cart.getCartItems();

        for (int i=0; i<cartItems.size(); i++) {
            if(product.getRideoutId()==cartItems.get(i).getProduct().getRideoutId()){
                return;
            }
        }

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setCart(cart);
        rideoutItemService.addRideoutItem(cartItem);
    }

    @RequestMapping(value = "/remove/{rideoutId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem (@PathVariable(value = "rideoutId") int rideoutId) {
        CartItem cartItem = rideoutItemService.getRideoutItemByRideoutId(rideoutId);
        rideoutItemService.removeRideoutItem(cartItem);

    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartId") int cartId) {
        Cart cart = registerRideoutService.getRegistrationById(cartId);
        rideoutItemService.removeAllRegisteredRideouts(cart);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
    public void handleClientErrors (Exception e) {}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
    public void handleServerErrors (Exception e) {}
}
