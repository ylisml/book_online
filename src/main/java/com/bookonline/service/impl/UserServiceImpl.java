package com.bookonline.service.impl;

import com.bookonline.entity.User;
import com.bookonline.mapper.UserMapper;
import com.bookonline.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;
    @Override
    public int userAll(User user) {
        return userMapper.testInsertData(user);
    }
}
