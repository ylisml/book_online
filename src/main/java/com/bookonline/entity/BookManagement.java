package com.bookonline.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName(value = "books")
public class BookManagement {
    private Integer id;
    private String bname;
    private String isbn;
    private Double price;
    private String author;
    private Date createDate;
    private Integer stock;
}
