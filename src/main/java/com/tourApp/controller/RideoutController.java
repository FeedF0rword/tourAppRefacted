package com.tourApp.controller;

import com.tourApp.model.Rideout;
import com.tourApp.service.RideoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;
@Controller
@RequestMapping("/rideout")
public class RideoutController {

    @Autowired
    private RideoutService rideoutService;

    @RequestMapping("/rideoutList")
    public String getProducts(Model model) {
        List<Rideout> rideouts = rideoutService.getFutureRideout();
        model.addAttribute("rideouts", rideouts);

        return "rideoutList";
    }

    @RequestMapping("/viewRideout/{rideoutId}")
    public String viewProduct(@PathVariable int rideoutId, Model model) throws IOException {
        Rideout rideout = rideoutService.getRideoutById(rideoutId);
        model.addAttribute("rideout", rideout);

        return "viewRideout";
    }
}
