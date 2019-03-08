package com.tjh.gsonFormat.bean;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import java.util.List;

/**
 * Created by tjh on 2019/3/8.
 */
@Data
public class User {

    private List<Love> loves;

    @Data
    public static class Love {

        @JSONField(name = "music")
        private String haha;  //增值税专票必填
    }
}
