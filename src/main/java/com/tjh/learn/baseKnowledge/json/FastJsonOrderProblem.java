package com.tjh.learn.baseKnowledge.json;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import lombok.extern.slf4j.Slf4j;

import java.util.LinkedHashMap;

/**
 * Created by tjh on 2018/12/11.
 */
@Slf4j
public class FastJsonOrderProblem {
    public static JSONObject maintainOrder(String jsonStr){
        JSONObject jsonObject = JSONObject.parseObject(jsonStr, Feature.OrderedField);
        log.info("jsonObject:{}",jsonObject);
        return jsonObject;
    }

    public static JSONObject maintainOrderTwo(String jsonStr){
        LinkedHashMap<String, Object> jsonMap = JSON.parseObject(jsonStr,LinkedHashMap.class, Feature.OrderedField);
        log.info("jsonMap:{}",jsonMap);
        JSONObject jsonObject=new JSONObject(true);
        jsonObject.putAll(jsonMap);
        log.info("jsonObject:{}",jsonObject);
        return jsonObject;
    }

    public static void main(String[] args) {
        String jsonStr = "{\"goodsDetail\": [{\"priceIncludingTax\":\"2\",\"model\":\"\",\"taxRate\":\"6\",\"discountIndex\":\"\",\"index\":\"1\",\"quantity\":\"50\",\"sn\":\"0001\",\"preferPolicyFlag\":\"0\",\"unit\":\"吨\",\"name\":\"ya生活用水\",\"freeTaxType\":\"\",\"attribute\":\"0\"}]}";
        JSONObject json = JSONObject.parseObject(jsonStr);
        log.info("json:{}",json);  //String转JSON之后goodsDetail里面的字段顺序改变，后续处理可能出现问题

        JSONObject orderJson = maintainOrderTwo(jsonStr);
        System.out.println(orderJson);
    }
}
