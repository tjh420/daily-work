package com.tjh.learn.baseKnowledge.list;

import com.alibaba.fastjson.JSON;
import com.tjh.learn.util.fastJson.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tjh on 2019/2/25.
 * 测试如何改变list<T>的内容
 */
public class TestListChange {
    public static void main(String[] args) {
        //生成list
        List<Request.Love> loveList= new ArrayList<>();
        Request.Love love = new Request.Love();
        loveList.add(love);
        love.setMusic("1");
        love.setSport("2");

        Request request = new Request();
        request.setName("ttt");
        for (Request.Love o :loveList){
            Request.Love loveNew = new Request.Love();
            List<Request.Love> loveListNew= new ArrayList<>();
            loveListNew.add(loveNew);
            request.setLoveList(loveListNew);
            loveNew.setMusic(String.valueOf(0-2.0));
            loveNew.setSport(o.getSport());

        }
        System.out.println(JSON.toJSON(request));


    }
}
