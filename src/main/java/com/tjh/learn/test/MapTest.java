package com.tjh.learn.test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Created by tjh on 2018/8/13.
 * Map集合中value（）方法与keySet（）、entrySet()区别
 */
public class MapTest {
    public static void main(String[] args) {

        Map<String,String> map = new HashMap<>();
        map.put("01","zhangsan");
        map.put("02","lisi");
        map.put("03","wangwu");

        Collection<String> collection = map.values();
        System.out.println(collection);

        Set<String> key = map.keySet();
        System.out.println(key);

        Set<Map.Entry<String,String>> entrySet = map.entrySet();
        System.out.println(entrySet);

        Object object = JSON.toJSON(entrySet);
        JSONArray jsonArray = JSON.parseArray(object.toString());
        System.out.println(object);
        System.out.println(jsonArray);
    }
}
