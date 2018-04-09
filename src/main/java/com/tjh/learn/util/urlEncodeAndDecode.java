package com.tjh.learn.util;

import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * Created by tjh on 2018/4/2.
 */
public class urlEncodeAndDecode {
    public static void main(String[] args) {
        String url = "https://mobl-test.chinaums.com/fapiao-portal/mer_issue.do?id=cf98561052a145beb9bcac0e839e3e1c&checkCode=C42D5A0B02360E85";
        String encodeUrl = URLEncoder.encode(url);
        System.out.println(encodeUrl);
        String decodeUrl = URLDecoder.decode(encodeUrl);
        System.out.println(decodeUrl);
    }
}
