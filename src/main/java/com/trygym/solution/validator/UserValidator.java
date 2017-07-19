package com.trygym.solution.validator;

import com.trygym.solution.model.User;
import com.trygym.solution.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class UserValidator implements Validator {

    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private static final String ID_PATTERN = "[0-9]{9}[V]";
    private static final String MOBILE_PATTERN = "[0-9]{10}";
    private Pattern pattern;
    private Matcher matcher;

    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;


        //validate login information
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        if (user.getUsername().isEmpty()) {
            errors.rejectValue("username", "Size.userForm.username");
        }
        if (userService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }

        // email validation in spring
        if (!(user.getEmail() != null && user.getEmail().isEmpty())) {
            pattern = Pattern.compile(EMAIL_PATTERN);
            matcher = pattern.matcher(user.getEmail());
            if (!matcher.matches()) {
                errors.rejectValue("email", "Type.userForm.email");
            }
        }

        //validate general information

        // input string conatains characters only
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nic", "NotEmpty");
        if (user.getNic() != null) {
            pattern = Pattern.compile(ID_PATTERN);
            matcher = pattern.matcher(user.getNic());
            if (!matcher.matches()) {
                errors.rejectValue("nic", "Invalid.userForm.nic");
            }
        }
        // phone number validation
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "contact", "NotEmpty");

        if (!(user.getContact() != null && user.getContact().isEmpty())) {
            pattern = Pattern.compile(MOBILE_PATTERN);
            matcher = pattern.matcher(user.getContact());
            if (!matcher.matches()) {
                errors.rejectValue("contact", "Type.userForm.contact");
            }
        }
        if (user.getContact().length() > 10) {
            errors.rejectValue("contact", "Size.userForm.contact");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "job", "NotEmpty");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "height", "NotEmpty");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "weight", "NotEmpty");

        //health description should not be longer than 500 characters
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "health", "NotEmpty");
        if (user.getHealth().length() > 500) {
            errors.rejectValue("health", "Size.userForm.health");
        }

        // drop down list validation
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pack", "NotEmpty");

    }
}
