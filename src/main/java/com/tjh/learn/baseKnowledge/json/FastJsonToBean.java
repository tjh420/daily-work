package com.tjh.learn.baseKnowledge.json;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.tjh.learn.baseKnowledge.json.bean.StudentBean;
import lombok.extern.slf4j.Slf4j;

/**
 * Created by tjh on 2018/12/11.
 */
@Slf4j
public class FastJsonToBean {

    public static void main(String[] args) {

        String jsonStr = "{\"name\":\"tjh\",\"age\":\"27\",\"birthday\":\"19920101\",\"Company\":\"ums\",\"sex\":\"man\"}";
        //jsonStr转json
        JSONObject jsonObject = JSONObject.parseObject(jsonStr);
        log.info("jsonObject:{}",jsonObject);

        //jsonStr转Bean
        StudentBean studentBean = JSON.parseObject(jsonStr, StudentBean.class);
        log.info("studentBean:{}",studentBean);

        //jsonStr转Bean
        StudentBean studentBean1 = JSONObject.toJavaObject(JSONObject.parseObject(jsonStr),StudentBean.class);
        log.info("studentBean1:{}",studentBean1);

    }
}
