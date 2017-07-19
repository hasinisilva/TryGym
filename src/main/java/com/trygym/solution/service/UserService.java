package com.trygym.solution.service;

import com.trygym.solution.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
