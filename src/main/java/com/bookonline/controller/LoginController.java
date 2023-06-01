package com.bookonline.controller;

import com.bookonline.entity.User;
import com.bookonline.md5.MD5Util;
import com.bookonline.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;
    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response ,User u){
        User user = new User();
        MD5Util md5Util = new MD5Util();
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        String md5_password = md5Util.getMD5(password);
        user.setLoginname(uname);
        user.setUpassword(md5_password);
        System.out.println(loginService.queryAll(user));
        List list = loginService.queryAll(user);
        if (list != null && list.size() > 0) {
            System.out.println("成功");

        } else {
            System.out.println("失败");
        }
        ModelAndView mav = new ModelAndView();
        mav.addObject("users",user);
        mav.setViewName("main");
        return mav;
    }

}
