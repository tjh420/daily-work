package com.tjh.learn;

import com.alibaba.fastjson.JSONObject;

import java.util.*;

/**
 * Created by tjh on 2019/3/5.
 * 比较两个json串，找到相同的key值
 * 同时找到不同的
 */
public class JsonCompareKey {

    public static String compareJson(JSONObject json1, JSONObject json2) {
        List<String> sameKey = new ArrayList<>();
        List<String> differentKey1 = new ArrayList<>();
        List<String> differentKey2 = new ArrayList<>();
        int count = 0;
        Iterator<String> i = json1.keySet().iterator();
        Iterator<String> j = json2.keySet().iterator();
        while (i.hasNext()) {
            String key = i.next();
            if (json2.get(key) == null) {
                differentKey1.add(key);
            } else {
                sameKey.add(key);
            }
        }
        while (j.hasNext()) {
            String key = j.next();
            if (json1.get(key) == null) {
                differentKey2.add(key);
            } else {
                count++;
            }
        }
        return sameKey.toString();
    }

    public static List<String> compare(JSONObject json1, JSONObject json2) {
        List<String> sameKey = new ArrayList<>();
        List<String> differentKey1 = new ArrayList<>();
        List<String> differentKey2 = new ArrayList<>();
        int count = 0;
        Iterator<String> i = json1.keySet().iterator();
        Iterator<String> j = json2.keySet().iterator();
        while (i.hasNext()) {
            String key = i.next();
            if (json2.get(key) == null) {
                differentKey1.add(key);
            } else {
                sameKey.add(key);
            }
        }
        while (j.hasNext()) {
            String key = j.next();
            if (json1.get(key) == null) {
                differentKey2.add(key);
            } else {
                count++;
            }
        }
        return sameKey;
    }

}
