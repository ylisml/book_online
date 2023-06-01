package com.bookonline.controller;

import com.bookonline.entity.User;
import com.bookonline.md5.MD5Util;
import com.bookonline.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.http.HttpResponse;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService userService;
    @RequestMapping("/singUp")
    public ModelAndView singUp(HttpServletRequest request, HttpServletResponse response){
        User user = new User();
        //获取注册用户名
        String username = request.getParameter("sname");
        //获取注册密码
        String passwd = request.getParameter("pswd");
        //获取昵称
        String nickname = request.getParameter("nickname");
        MD5Util md5Util = new MD5Util();
        //MD5加密密码
        String md5_passwd =md5Util.getMD5(passwd);
        user.setLoginname(username);
        user.setUpassword(md5_passwd);
        user.setUname(nickname);
        int list = userService.userAll(user);
        ModelAndView mav = new ModelAndView();
        mav.addObject("users",list);
        mav.setViewName("login");
        return mav;


    }

}
