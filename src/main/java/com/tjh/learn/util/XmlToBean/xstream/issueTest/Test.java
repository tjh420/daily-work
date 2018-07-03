package com.tjh.learn.util.XmlToBean.xstream.issueTest;

import com.thoughtworks.xstream.XStream;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tjh on 2018/7/3.
 */
public class Test {
    public static void main(String[] args) {

        List<IssueReqXml.GoodsXml> list = new ArrayList<>();
        IssueReqXml.GoodsXml goodsXml = new IssueReqXml.GoodsXml();
        goodsXml.setIndex("2");
        goodsXml.setAttribute("3");
        list.add(goodsXml);
        IssueReqXml.GoodsXml goodsXml1 = new IssueReqXml.GoodsXml();
        goodsXml1.setIndex("3");
        goodsXml1.setAttribute("4");
        list.add(goodsXml1);
        XStream xstream = new XStream();
        xstream.autodetectAnnotations(true);
        IssueReqXml issueReqXml = new IssueReqXml();
        IssueReqXml.Request request = new IssueReqXml.Request();
        issueReqXml.setRequest(request);
        request.setOne("111");
        request.setGoodsList(list);
        System.out.println(xstream.toXML(issueReqXml));

        System.out.println("--------------------分割线------------------");
        String xml = xstream.toXML(issueReqXml);
        IssueReqXml issueReqXml1 = (IssueReqXml) xstream.fromXML(xml);
        System.out.println(issueReqXml1.toString());
        System.out.println(issueReqXml1.getRequest().toString());
        System.out.println(issueReqXml1.getRequest().getGoodsList().toString());
        System.out.println(issueReqXml1.getRequest().getGoodsList().get(0));
        System.out.println(issueReqXml1.getRequest().getGoodsList().get(1).getIndex());

        List newList = new ArrayList();
        newList = issueReqXml1.getRequest().getGoodsList();
        System.out.println(newList);

    }
}
