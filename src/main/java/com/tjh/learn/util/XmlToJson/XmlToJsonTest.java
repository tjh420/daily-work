package com.tjh.learn.util.XmlToJson;

import net.sf.json.JSONObject;
import net.sf.json.xml.XMLSerializer;


/**
 * 方法二：使用json-lib提供的方法
 * 1.创建 XMLSerializer对象
 * 2.将xml转为json（注：如果是元素的属性，会在json里的key前加一个@标识）
 * 3.输出json内容
 * Created by tjh on 2018/7/3.
 */
public class XmlToJsonTest {
    public static void main(String[] args) {

        String xml = "<class id="
                + "'1'"
                + "><student><name>aaaaaa</name><age>21</age></student><student><name>bbbbbb</name><age>22</age></student></class>";

        String xml1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><soap:Body><GetCheckInfoResponse xmlns=\"http://tempuri.org/\"><GetCheckInfoResult><Info xmlns=\"\"><QRCode>20180629C39F4DCF5C5E4F91B2E42B45C85D15D6</QRCode><MerchantCode>898000000000001</MerchantCode><TerminalCode>00000001</TerminalCode><StoreType>03</StoreType><SalesDocNo>18062900100006</SalesDocNo><SalesDate>2018-06-29</SalesDate><TotalAmount>130</TotalAmount><Items><Item><ItemCode>00001</ItemCode><ItemName>餐饮服务</ItemName><Qty>1</Qty><Amount>130.0000</Amount></Item><Item><ItemCode>00002</ItemCode><ItemName>其他服务</ItemName><Qty>2</Qty><Amount>120.0000</Amount></Item></Items></Info></GetCheckInfoResult></GetCheckInfoResponse></soap:Body></soap:Envelope>";

        XMLSerializer xmlSerializer = new XMLSerializer();
        String res = xmlSerializer.read(xml1).toString();
        System.out.println(res);
        JSONObject jsonObject = JSONObject.fromObject(res);
        System.out.println(jsonObject);
    }
}
