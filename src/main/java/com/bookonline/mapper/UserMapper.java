package com.bookonline.mapper;

import com.bookonline.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int testInsertData(User user);
}
