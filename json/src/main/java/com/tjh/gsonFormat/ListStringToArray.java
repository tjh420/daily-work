package com.tjh.gsonFormat;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tjh.gsonFormat.bean.User;

import java.util.List;

/**
 * Created by tjh on 2019/3/8.
 */
public class ListStringToArray {
    public static JSONArray listToArray(String listStr){
        JSONArray array = JSON.parseArray(listStr);
        return array;
    }

    public static void main(String[] args) {
        String list = "[{\"totalPrice\":\"750.00\",\"issueDate\":\"2019-01-13\",\"invoiceNo\":\"15250037\",\"invoiceCode\":\"065001600111\",\"checkCode\":\"08477899067160974969\"}]";
        JSONArray rs = listToArray(list);
        System.out.println(rs);

        String loveList = "[{\"music\":\"song\"}]";
        List<User.Love> loves = JSON.parseArray(loveList,User.Love.class);
        System.out.println(loves);
        JSONArray jsonArray = JSONArray.parseArray(JSON.toJSONString(loves));
        System.out.println(jsonArray);

        JSONArray array = JSONArray.parseArray(loveList);
        System.out.println(array);

        String aList = "[\"c7bcf0dd-78ef-4070-8610-0a99c51fb76d\",\"c7bcf0dd-78ef-4070-8610-0a99c51fb76d\"]";
        JSONArray aArray = JSON.parseArray(aList);
        System.out.println(aArray.get(1));
    }
}
