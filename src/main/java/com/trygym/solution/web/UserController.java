package com.trygym.solution.web;

import com.trygym.solution.model.Schedule;
import com.trygym.solution.model.User;
import com.trygym.solution.service.SecurityService;
import com.trygym.solution.service.UserService;
import com.trygym.solution.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.Time;
import java.util.HashMap;
import java.util.Set;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;


    @RequestMapping(value = "/view_details", method = RequestMethod.GET)
    public String view_details(Model model) {
        //model.addAttribute("userForm", new User());

        return "view_details";
    }
    @RequestMapping(value = "/view_account", method = RequestMethod.GET)
    public String view_account(Model model) {
        //model.addAttribute("userForm", new User());

        return "view_account";
    }
    @RequestMapping(value = "/reg_success", method = RequestMethod.GET)
    public String reg_success(Model model) {
        //model.addAttribute("userForm", new User());

        return "reg_success";
    }

    @RequestMapping(value = "/chest_workout", method = RequestMethod.GET)
    public String chest_workout(Model model) {
        //model.addAttribute("userForm", new User());

        return "chest_workout";
    }
    @RequestMapping(value = "/back_workout", method = RequestMethod.GET)
    public String back_workout(Model model) {
        //model.addAttribute("userForm", new User());

        return "back_workout";
    }
    @RequestMapping(value = "/shoulder_workout", method = RequestMethod.GET)
    public String shoulder_workout(Model model) {
        //model.addAttribute("userForm", new User());

        return "shoulder_workout";
    }
    @RequestMapping(value = "/arms_workout", method = RequestMethod.GET)
    public String arms_workout(Model model) {
        //model.addAttribute("userForm", new User());

        return "arms_workout";
    }
    @RequestMapping(value = "/abs_workout", method = RequestMethod.GET)
    public String abs_workout(Model model) {
        //model.addAttribute("userForm", new User());

        return "abs_workout";
    }
    @RequestMapping(value = "/leg_workout", method = RequestMethod.GET)
    public String leg_workout(Model model) {
        //model.addAttribute("userForm", new User());

        return "leg_workout";
    }


    @RequestMapping(value = "/member", method = RequestMethod.GET)
    public String member(Model model, String registered) {
        model.addAttribute("userForm", new User());

        if (registered != null)
            model.addAttribute("registered", "Member registered successfully!");

        getList(model);
        getWorkoutList(model);
        getDurationList(model);
        return "member";
    }

    @RequestMapping(value = "/member", method = RequestMethod.POST)
    public String member(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model, String registered) {


        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "member";
        }


        userService.save(userForm);
        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        if (registered != null)
            model.addAttribute("registered", "Member registered successfully!");


        return "redirect:/reg_success";
    }

    @RequestMapping(value = "/staff", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute("userForm", new User());

        return "staff";
    }

    @RequestMapping(value = "/staff", method = RequestMethod.POST)
    public String register(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {

        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "staff";
        }

        userService.save(userForm);
        //securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/staff";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username or password is invalid!");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully!");

        return "login";
    }

    //control access privileges
    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String loginWelcome(Model model) {
        Set<String> roles = AuthorityUtils
                .authorityListToSet(SecurityContextHolder.getContext()
                        .getAuthentication().getAuthorities());
        if (roles.contains("ROLE_ADMIN")) {//if ROLE_ADMIN ; the welcome page is returned the admin view
            return "admin";
        }
        else if (roles.contains("ROLE_STAFF")){//if ROLE_STAFF ; the welcome page is returned the staff view
            return "staff";
        }
        return "welcome";//if ROLE_MEMBER ; the welcome page is returned the member view
    }

    private void getList(Model model) {
        HashMap<Integer, String> packageList = new HashMap<Integer, String>();

        packageList.put(0, "Staff");
        packageList.put(60000, "One year");
        packageList.put(30000, "Three months");
        packageList.put(15000, "Six months");
        packageList.put(5500, "One month");
        model.addAttribute("packageList", packageList);

    }

    private void getWorkoutList(Model model) {
        HashMap<String, String> workoutList = new HashMap<String, String>();

        workoutList.put("Leg Workout", "Leg Workout");
        workoutList.put("Chest Workout", "Chest Workout");
        workoutList.put("Back Workout", "Back Workout");
        workoutList.put("Shoulder Workout", "Shoulder Workout");
        workoutList.put("Arms Workout", "Arms Workout");
        workoutList.put("Abs Workout", "Abs Workout");
        model.addAttribute("workoutList", workoutList);
    }

    private void getDurationList(Model model) {
        HashMap<String, String> durationList = new HashMap<String, String>();

        durationList.put("1 week", "1 week");
        durationList.put("2 weeks", "2 weeks");
        durationList.put("3 weeks", "3 weeks");
        durationList.put("4 weeks", "4 weeks");
        durationList.put("5 weeks", "5 weeks");
        durationList.put("6 weeks", "6 weeks");
        model.addAttribute("durationList", durationList );
    }


}
