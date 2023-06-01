package com.bookonline.service;

import com.bookonline.entity.User;

import java.util.List;

public interface LoginService {
    List<User> queryAll(User user);
}
