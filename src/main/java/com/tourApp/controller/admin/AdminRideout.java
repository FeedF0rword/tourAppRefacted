package com.tourApp.controller.admin;

import com.tourApp.model.Rideout;
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

@Controller
@RequestMapping("/admin")
public class AdminRideout {

    @Autowired
    private RideoutService rideoutService;

    @RequestMapping("/rideout/addRideout")
    public String addRideout(Model model) {
        Rideout rideout = new Rideout();
        rideout.setRideoutStatus("PLANNING");
        model.addAttribute("rideout", rideout);

        return "addRideout";
    }

    @RequestMapping(value="/rideout/addRideout", method = RequestMethod.POST)
    public String addRideoutPost(@Valid @ModelAttribute("rideout") Rideout rideout, BindingResult result,
                                 HttpServletRequest request) {
        if(result.hasErrors()) {
            return "addRideout";
        }

        rideoutService.addRideout(rideout);

        return "redirect:/admin/rideoutInventory";
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

        return "redirect:/admin/rideoutInventory";
    }

    @RequestMapping("/rideout/deleteRideout/{id}")
    public String deleteRideout(@PathVariable int id, Model model, HttpServletRequest request) {

        Rideout rideout = rideoutService.getRideoutById(id);
        rideoutService.deleteRideout(rideout);

        return "redirect:/admin/rideoutInventory";
    }
}
