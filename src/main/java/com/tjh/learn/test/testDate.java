package com.tjh.learn.test;

import java.util.Date;

/**
 * Created by tjh on 2018/4/25.
 */
public class testDate {
    public static void main(String[] args) {
        Date date = new Date();
        System.out.println(date);
        Long getTime = date.getTime();
        System.out.println(getTime);
        Date newDate = new Date(getTime);
        System.out.println(newDate);

    }
}
