package com.bookonline.entity;

import com.baomidou.mybatisplus.annotation.TableName;

import java.util.Date;
@lombok.Data
@TableName(value = "users")
public class Login {

    private Integer id;
    private String loginname;
    private String upassword;
    private String type;

}
