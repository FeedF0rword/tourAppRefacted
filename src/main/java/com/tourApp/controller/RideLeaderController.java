package com.tourApp.controller;

import com.tourApp.model.Customer;
import com.tourApp.model.Rideout;
import com.tourApp.service.CustomerService;
import com.tourApp.service.RideoutService;
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
import java.util.List;

@Controller
@RequestMapping("/rideLeader")
public class RideLeaderController {
    @Autowired
    RideoutService rideoutService;

    @Autowired
    CustomerService customerService;


    @RequestMapping
    public String mainPage() {
        return "rideLeader";
    }

    @RequestMapping("/rideoutInventory")
    public String rideoutInventory(Model model) {
        List<Rideout> rideouts = rideoutService.getRideoutList();
        model.addAttribute("rideouts", rideouts);

        return "rideoutsInventory";
    }

    @RequestMapping("/userInventory")
    public String customerManagement(Model model) {
        List<Customer> customers = customerService.getAllCustomers();
        model.addAttribute("customers", customers);
        return "customerManagement";
    }

    @RequestMapping("/user/viewUser/{id}")
    public String viewUser(@PathVariable("id") int id, Model model) throws IOException {
        Customer customer =  customerService.getCustomerById(id);
        model.addAttribute("user", customer);
        return "viewUser";
    }

    @RequestMapping("/rideout/editRideout/{id}")
    public String editRideout(@PathVariable("id") int id, Model model) {
        Rideout rideout = rideoutService.getRideoutById(id);
        model.addAttribute("rideout", rideout);

        return "editRideout";
    }

    @RequestMapping(value="/rideout/editRideout", method = RequestMethod.POST)
    public String editRideoutPost(@Valid @ModelAttribute("rideout") Rideout rideout, BindingResult result,
                                  HttpServletRequest request) {
        if(result.hasErrors()) {
            return "editRideout";
        }
        rideoutService.editRideout(rideout);

        return "redirect:/rideLeader/rideoutInventory";
    }
}
