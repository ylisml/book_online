package com.bookonline.mapper;

import com.bookonline.entity.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookMapper {

    List<Book> selectAll();
}
