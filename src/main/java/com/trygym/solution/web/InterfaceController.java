package com.trygym.solution.web;

import com.trygym.solution.model.User;
import com.trygym.solution.service.SecurityService;
import com.trygym.solution.service.UserService;
import com.trygym.solution.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;

/**
 * Created by hasini on 3/23/17.
 */
@Controller
@RequestMapping(value="/gym")
public class InterfaceController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String viewSite() {

        return "index";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String viewProfile() {

        return "profile";
    }

    @RequestMapping(value = "/reserve", method = RequestMethod.GET)
    public String reserve() {

        return "/reserve";
    }


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model, String adminLogin) {
        if(adminLogin != null)
            model.addAttribute("admin_login", "Administrator login to the system successfully");

        return "admin";
    }
}
