package com.tjh.learn.baseKnowledge.json;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.tjh.learn.baseKnowledge.json.bean.MyUser;

import java.util.Date;

/**
 * Created by tjh on 2018/12/19.
 */
public class MyTestJson {

    public static void main(String[] args) {
        MyUser myUser = new MyUser();
        myUser.setUserid(1L);
        myUser.setUsername("shihuan");
        myUser.setSex(true);
        myUser.setBirthday(new Date());
        String myuserjson = JSON.toJSONString(myUser, SerializerFeature.WriteDateUseDateFormat);
        System.out.println(myuserjson);
        String myuserjsondateformat = JSON.toJSONStringWithDateFormat(myUser, "yyyy-MM-dd", SerializerFeature.WriteDateUseDateFormat);
        System.out.println(myuserjsondateformat);
        String myuserjsondateformathm = JSON.toJSONStringWithDateFormat(myUser, "yyyy-MM-dd HH:mm:ss.SSS", SerializerFeature.WriteDateUseDateFormat);
        System.out.println(myuserjsondateformathm);
        MyUser myJsonUser = JSON.parseObject(myuserjson, MyUser.class);
        System.out.println(myJsonUser.getUserid() + " -- " + myJsonUser.getUsername() + " -- " + myJsonUser.getBirthday() + " -- " + myJsonUser.isSex());
        MyUser myJsonUserDateformat = JSON.parseObject(myuserjson, MyUser.class, Feature.AllowISO8601DateFormat);
        System.out.println(myJsonUserDateformat);
    }
}
