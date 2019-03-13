package com.tjh.learn.jsonKey;

import com.alibaba.fastjson.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tjh on 2019/3/13.
 */
public class TestGetAllDiffKey {
    public static void main(String[] args) {
        String plan = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"aaaa \",\"invoiceCode\":\" aaa\",\"invoiceNo\":\" aaa\"}";
        String verhicle = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"paperDrewDate\":\" aaa\",\"purchaserName\":\"aaa \",\"purchaserTaxNo\":\" aaa\"}";
        JSONObject jsonObject1 = JSONObject.parseObject(plan);
        JSONObject jsonObject2 = JSONObject.parseObject(verhicle);
        List<String> allDiffKey = JsonCompareKey.getAllDiffKey(jsonObject1,jsonObject2);
        List<String> sameKey = JsonCompareKey.compare(jsonObject1,jsonObject2);
        System.out.println(allDiffKey);
        System.out.println(sameKey);
    }
}
