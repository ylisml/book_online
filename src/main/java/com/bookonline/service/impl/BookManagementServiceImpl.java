package com.bookonline.service.impl;

import com.bookonline.entity.BookManagement;
import com.bookonline.mapper.BookManagementMapper;
import com.bookonline.service.BookManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookManagementServiceImpl implements BookManagementService {

    @Autowired
    BookManagementMapper bookManagementMapper;

    @Override
    public List<BookManagement> queryAll(BookManagement bookManagement) {
        List<BookManagement> list = bookManagementMapper.bookAll();
        return null;
    }

}
