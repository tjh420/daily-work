package com.tjh.learn;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tjh.gsonFormat.bean.TestRequestOne;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * Created by tjh on 2019/3/11.
 */
@Slf4j
public class TestRequestOneTest {
    static String s ="{\"code\":1,\"message\":\"批量获取成功\",\"results\":[{\"code\":1,\"message\":\"发票验真成功\",\"invoiceMain\":{\"taskId\":\"c7bcf0dd-78ef-4070-8610-0a99c51fb76d\",\"invoiceCode\":\"065001600111\",\"invoiceNo\":\"15250037\",\"invoiceType\":\"ce\",\"purchaserTaxNo\":\"9165010255649187XG\",\"purchaserName\":\"同致信德（北京）资产评估有限公司新疆分公司\",\"purchaserAddrTel\":\"新疆乌鲁木齐市天山区中山路462号广场联合大厦B座22楼0991-2817010\",\"purchaserBankInfo\":\"兴业银行乌鲁木齐红旗路支行512020100100126330\",\"sellerTaxNo\":\"916500007576560875\",\"sellerName\":\"新疆数字证书认证中心（有限公司）\",\"sellerAddrTel\":\"新疆乌鲁木齐市天山区人民路183号兴亚大厦18楼0991-2356268\",\"sellerBankInfo\":\"中国建设银行乌市人民路支行65001610200050001165\",\"paperDrewDate\":\"20190113\",\"amountWithoutTax\":\"707.55\",\"taxAmount\":\"42.45\",\"amountWithTax\":\"750\",\"checkCode\":\"08477899067160974969\",\"machineCode\":\"499098915641\",\"remark\":\"2019011380672\",\"status\":\"1\",\"ctStatus\":\"\",\"cpyStatus\":\"0\",\"checkNumber\":\"1\",\"checkTime\":\"2019-03-08 14:46:50\",\"goodsListFlag\":\"0\",\"dqCode\":\"6500\",\"dqName\":\"新疆\"},\"invoiceDetails\":[{\"cargoName\":\"*信息技术服务*数字证书更新服务费\",\"itemSpec\":\"乌鲁木齐市新三版社保网上经办\",\"quantityUnit\":\"年\"}]}]}";

    public static void main(String[] args) {
        TestRequestOne req = JSONObject.parseObject(s,TestRequestOne.class);
        log.info("req:{}",req);
        JSONArray resultsBean = JSONArray.parseArray(JSON.toJSONString(req.getResults()));
        JSONObject object = JSONObject.parseObject(s);
        List<TestRequestOne.ResultsBean> results = JSONArray.parseArray(JSONObject.parseObject(s).getString("results"), TestRequestOne.ResultsBean.class);
        log.info("results:{}",results);
        req.setResults(results);
    }
}
