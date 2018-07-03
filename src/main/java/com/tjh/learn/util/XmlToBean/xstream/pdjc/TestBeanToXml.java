package com.tjh.learn.util.XmlToBean.xstream.pdjc;

import com.thoughtworks.xstream.XStream;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by tjh on 2018/7/3.
 */
public class TestBeanToXml {
    public static void main(String[] args) {
        XStream xStream = new XStream();
        xStream.autodetectAnnotations(true);

        CheckReqXml checkReqXml = new CheckReqXml();
        CheckReqXml.Body body = new CheckReqXml.Body();
        CheckReqXml.Body.Request request = new CheckReqXml.Body.Request();
        request.setStrCallUserCode("YL");
        request.setStrCallPassword("YL123");
        request.setQrCodeId("aaaaaaaaa");
        request.setCheckCode("aa");
        body.setRequest(request);
        checkReqXml.setBody(body);
        System.out.println(xStream.toXML(checkReqXml));


        System.out.println("-------------------------------------------分割线----------------------------------");
        CheckResXml checkResXml = new CheckResXml();
        CheckResXml.Body body1 = new CheckResXml.Body();
        CheckResXml.Body.Response response = new CheckResXml.Body.Response();
        CheckResXml.Body.Response.Result result = new CheckResXml.Body.Response.Result();
        CheckResXml.Body.Response.Result.Info info = new CheckResXml.Body.Response.Result.Info();
        CheckResXml.Body.Response.Result.Info.GoodsXml goodsXml = new CheckResXml.Body.Response.Result.Info.GoodsXml();
        CheckResXml.Body.Response.Result.Info.GoodsXml goodsXml1 = new CheckResXml.Body.Response.Result.Info.GoodsXml();
        goodsXml.setIndex("1");
        goodsXml.setName("a");
        goodsXml.setPriceIncludingTax(10);
        goodsXml.setQuantity(1);
        goodsXml1.setIndex("2");
        goodsXml1.setName("b");
        goodsXml1.setPriceIncludingTax(20);
        goodsXml1.setQuantity(2);
        List list = new ArrayList();
        list.add(goodsXml);
        list.add(goodsXml1);
        info.setGoodsList(list);
        info.setMerchantId("8900000000001");
        info.setTerminalId("0000001");
        info.setMerOrderId("23145");
        Date date = new Date();
        info.setMerOrderDate(date);
        info.setTotalPriceIncludingTax(30);
        info.setQrCodeId("abcdefg");
        result.setInfo(info);
        response.setResult(result);
        body1.setResponse(response);
        checkResXml.setBody(body1);
        System.out.println(xStream.toXML(checkResXml));
    }
}
