package com.bookonline.entity;

import com.baomidou.mybatisplus.annotation.TableName;

import javax.xml.crypto.Data;
import java.util.Date;

@lombok.Data
@TableName(value = "books")
public class Book {

    private Integer id;
    private String bname;
    private String isbn;
    private Double price;
    private String author;
    private Date createDate;
    private Integer stock;

}
