package com.bookonline.service.impl;

import com.bookonline.entity.User;
import com.bookonline.mapper.LoginMapper;
import com.bookonline.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginMapper loginMapper;

    @Override
    public List<User> queryAll(User user) {
        List<User> users = loginMapper.LoginAll(user);
        return users;
    }

}
