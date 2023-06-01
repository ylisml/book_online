package com.bookonline.md5;

import org.springframework.util.DigestUtils;

import java.nio.charset.StandardCharsets;

/**
 * MD5工具类
 */
public class MD5Util {
    //盐，用于混交MD5
    private static final String slat = "&%5123***&&%%$$#@";

    public  String getMD5(String str){
        String base = str + "/" +slat;
        String md5 = DigestUtils.md5DigestAsHex(base.getBytes(StandardCharsets.UTF_8));
        return md5;
    }
}
