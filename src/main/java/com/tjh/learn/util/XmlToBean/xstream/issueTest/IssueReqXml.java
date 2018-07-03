package com.tjh.learn.util.XmlToBean.xstream.issueTest;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tjh on 2018/7/3.
 */
@Setter
@Getter
@ToString
@XStreamAlias("request")
public class IssueReqXml {

    @XStreamAlias("fp")
    private Request request= new Request();

    @Setter
    @Getter
    @ToString
    public static final class Request{

        @XStreamAlias("zhsl")
        private String one;

        @XStreamAlias("fpmxList")
        private List<GoodsXml> goodsList = new ArrayList<>();
    }

    @ToString
    @Setter
    @Getter
    @XStreamAlias("fpmx")
    public static final class GoodsXml {

        @XStreamAlias("fpmxxh")
        private String index;

        @XStreamAlias("fphxz")
        private String attribute;
    }
}
