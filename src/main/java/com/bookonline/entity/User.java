package com.bookonline.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 用户实现类
 */
@Data
@TableName(value = "users")
public class User {
    private Integer id;
    private String loginname;
    private String upassword;
    private String uname;
    private String type;
    private Date create_date;
}
