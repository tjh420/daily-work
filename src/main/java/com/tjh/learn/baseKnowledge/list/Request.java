package com.tjh.learn.baseKnowledge.list;

import lombok.Data;

import java.util.List;

/**
 * Created by tjh on 2019/2/25.
 */
@Data
public class Request {

    private String name;

    private List<Love> loveList;

    @Data
    public static final class Love{

        private String sport;

        private String music;

    }
}
