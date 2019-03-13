package com.tjh.gsonFormat.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by tjh on 2019/3/8.
 */
@NoArgsConstructor
@Data
public class ArrayReq {

    private List<String> taskIds;
}
