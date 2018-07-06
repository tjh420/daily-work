package com.tjh.learn.util.date;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * String类型yyyy-MM-dd转String类型yyyyMMdd
 * Created by tjh on 2018/7/6.
 */
public class DateChange {
    public static void main(String[] args) throws ParseException {
        String date = "2018-07-06";
        String oneDate = dateTransformOne(date);
        System.out.println(oneDate);
        String twoDate = dateTransformTwo(date);
        System.out.println(twoDate);
    }

    /**
     * String类型yyyy-MM-dd转String类型yyyyMMdd 方法一
     * @param date
     * @return
     */
    public static String dateTransformOne(String date){
        String time = date.replace("-","");
        return time;
    }

    /**
     * String类型yyyy-MM-dd转String类型yyyyMMdd 方法二
     * @param date
     * @return
     * @throws ParseException
     */
    public static String dateTransformTwo(String date) throws ParseException {
        Date formatDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
        String stringDate = new SimpleDateFormat("yyyyMMdd").format(formatDate);
        return stringDate;
    }
}
