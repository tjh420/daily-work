package com.tjh.learn.baseKnowledge.json.bean;

import lombok.Data;

import java.util.Date;

/**
 * Created by tjh on 2018/12/19.
 */
@Data
public class MyUser {

    private Long userid;
    private String username;
    private boolean sex;
    private Date birthday;
}
