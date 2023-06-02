package com.bookonline.controller;

import com.bookonline.entity.Book;
import com.bookonline.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    BookService bookService;
    @InitBinder
    protected void initDateFormatBinder(WebDataBinder binder){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(simpleDateFormat, true));
    }

    @RequestMapping("/listall")
    public ModelAndView listAll(String sname, String pawd){
        System.out.println("==============list All==============");
        List list = bookService.queryAll();
        System.out.println(list);
        ModelAndView mav = new ModelAndView();
        mav.addObject("books",list);
        mav.setViewName("index");
         return mav;
    }

    @RequestMapping("/test")
    String test(Book book){

        System.out.println("Book = " + book);
        return "index";
    }


}
