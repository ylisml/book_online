package com.bookonline.mapper;


import com.bookonline.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoginMapper {
   List<User> LoginAll(User user);
}
