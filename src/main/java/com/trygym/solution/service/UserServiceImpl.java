package com.trygym.solution.service;

import com.trygym.solution.model.Role;
import com.trygym.solution.model.User;
import com.trygym.solution.repository.RoleRepository;
import com.trygym.solution.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));

        // set default user role
        Set<Role> userRoles= new HashSet<Role>();
        userRoles.add(roleRepository.findOne((long) 1));

        user.setRoles(userRoles);
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
