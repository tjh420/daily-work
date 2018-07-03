package com.tjh.learn.util.XmlToBean.xstream;


import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * Created by tjh on 2018/6/29.
 */
@Data
public class Person {

    private String name;

    private int age;

    List<String> girlFriends;

    Date birthday;
}
