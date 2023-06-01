package com.bookonline.service.impl;

import com.bookonline.mapper.BookMapper;
import com.bookonline.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    BookMapper bookMapper;

    @Override
    public List queryAll() {
        return bookMapper.selectAll();
    }
}
