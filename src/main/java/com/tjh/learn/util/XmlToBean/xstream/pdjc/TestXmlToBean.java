package com.tjh.learn.util.XmlToBean.xstream.pdjc;

import com.thoughtworks.xstream.XStream;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by tjh on 2018/7/3.
 */
public class TestXmlToBean {
    public static void main(String[] args) {

        CheckResXml checkResXml = new CheckResXml();
        CheckResXml.Body body1 = new CheckResXml.Body();
        CheckResXml.Body.Response response = new CheckResXml.Body.Response();
        CheckResXml.Body.Response.Result result = new CheckResXml.Body.Response.Result();
        CheckResXml.Body.Response.Result.Info info = new CheckResXml.Body.Response.Result.Info();
        CheckResXml.Body.Response.Result.Info.GoodsXml goodsXml = new CheckResXml.Body.Response.Result.Info.GoodsXml();
        CheckResXml.Body.Response.Result.Info.GoodsXml goodsXml1 = new CheckResXml.Body.Response.Result.Info.GoodsXml();
        goodsXml.setIndex("00001");
        goodsXml.setName("餐饮服务");
        goodsXml.setPriceIncludingTax(10.00);
        goodsXml.setQuantity(1);
        goodsXml1.setIndex("00001");
        goodsXml1.setName("其他服务");
        goodsXml1.setPriceIncludingTax(20.00);
        goodsXml1.setQuantity(2);
        List list = new ArrayList();
        list.add(goodsXml);
        list.add(goodsXml1);
        info.setGoodsList(list);
        info.setMerchantId("898000000000001");
        info.setTerminalId("00000001");
        info.setMerOrderId("18062900100006");
        Date date = new Date();
        info.setMerOrderDate(date);
        info.setTotalPriceIncludingTax(30.00);
        info.setQrCodeId("20180629C39F4DCF5C5E4F91B2E42B45C85D15D6");
        result.setInfo(info);
        response.setResult(result);
        body1.setResponse(response);
        checkResXml.setBody(body1);


        XStream xstream = new XStream();
        xstream.autodetectAnnotations(true);

        String xml = xstream.toXML(checkResXml);
        CheckResXml checkResXml11 = (CheckResXml) xstream.fromXML(xml);
        System.out.println(checkResXml11.toString());
        System.out.println(checkResXml11.getBody());
        System.out.println(checkResXml11.getBody().getResponse().getResult().getInfo());
        System.out.println(checkResXml11.getBody().getResponse().getResult().getInfo().getGoodsList());
        List goodsList = checkResXml11.getBody().getResponse().getResult().getInfo().getGoodsList();
        for (Object good:goodsList){
            System.out.println(good);
        }
    }
}
