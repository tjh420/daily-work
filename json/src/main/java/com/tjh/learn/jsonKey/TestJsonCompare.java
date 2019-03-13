package com.tjh.learn.jsonKey;

import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;

import java.util.*;

/**
 * Created by tjh on 2019/3/6.
 */
@Slf4j
public class TestJsonCompare {
    public static void main(String[] args) {
        String plan = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"purchaserAddrTel\":\" \",\"purchaserBankInfo\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"sellerAddrTel\":\" \",\"sellerBankInfo\":\" \",\"amountWithoutTax\":\" \",\"taxAmount\":\" \",\"amountWithTax\":\" \",\"machineCode\":\" \",\"checkCode\":\" \",\"remark\":\" \",\"status\":\" \",\"cpyStatus\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"goodsListFlag\":\"\",\"dqCode\":\" \",\"dqName\":\" \"}";
        String verhicle = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"machineCode\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"amountWithoutTax\":\" \",\"taxAmount\":\" \",\"amountWithTax\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"sellerAddrTel\":\" \",\"sellerBankInfo\":\" \",\"sellerAddress\":\" \",\"sellerTel\":\" \",\"sellerBankName\":\" \",\"sellerBankAccount\":\" \",\"purchaserId\":\" \",\"vehicleType\":\" \",\"vehicleBrand\":\" \",\"productionArea\":\" \",\"certificationNo\":\" \",\"commodityInspectionNo\":\" \",\"engineNo\":\" \",\"vehicleNo\":\" \",\"importCertificateNo\":\" \",\"taxRate\":\" \",\"chargeTaxAuthorityCode\":\" \",\"chargeTaxAuthorityName\":\" \",\"taxPaidProof\":\" \",\"tonnage\":\" \",\"maxCapacity\":\" \",\"status\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"dqCode\":\" \",\"dqName\":\" \"}";
        String juanpiao = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"machineCode\":\" \",\"checkCode\":\" \",\"amountWithTax\":\" \",\"receivingClerk\":\" \",\"remark\":\" \",\"status\":\" \",\"cpyStatus\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"dqCode\":\" \",\"dqName\":\" \"}";
        String tongxingfei = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型ct-增值税电子普通发票（通行费）\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"purchaserName\":\"购方名称\",\"purchaserTaxNo\":\"购方税号\",\"purchaserAddrTel\":\"购方地址电话\",\"purchaserBankInfo\":\"购方开户行名称账号\",\"sellerName\":\"销方名称\",\"sellerTaxNo\":\"销方税号\",\"sellerAddrTel\":\"销方地址电话\",\"sellerBankInfo\":\"销方开户行名称账号\",\"amountWithoutTax\":\"发票不含税金额\",\"taxAmount\":\"发票税额\",\"amountWithTax\":\"发票含税金额\",\"machineCode\":\"机器码\",\"checkCode\":\"校验码\",\"remark\":\"备注\",\"status\":\"发票状态1-正常、0-作废\",\"ctStatus\":\"通行费标志0-普通通行费1-特殊通行费(通道二不支持)\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间yyyy-MM-ddHH:mm:ss\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        String ershouche = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型j-机动车增值税专用发票\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"machineCode\":\"机器编码\",\"purchaserName\":\"买方单位/个人\",\"purchaserTaxNo\":\"买方单位代码/身份证号\",\"purchaserAddress\":\"买方单位/个人住址\",\"purchaserTel\":\"买方电话\",\"carNumber\":\"车牌照号\",\"registrationNo\":\"登记证号\",\"vehicleType\":\"车辆类型\",\"totalPrice\":\"车价合计\",\"vehicleNo\":\"车辆识别代号/车架号码\",\"vehicleBrand\":\"厂牌型号\",\"vehiclePlaceName\":\"转入地车辆车管所名称\",\"sellerName\":\"卖方单位/个人\",\"sellerTaxNo\":\"卖方单位代码/身份证号\",\"sellerAddress\":\"卖方单位/个人住址\",\"sellerTel\":\"卖方电话\",\"auctioneersName\":\"经营、拍卖单位\",\"auctioneersAddress\":\"经营、拍卖单位地址\",\"auctioneersTaxNo\":\"经营、拍卖单位纳税人识别号\",\"auctioneersBankInfo\":\"经营、拍卖单位开户银行及账号\",\"auctioneersTel\":\"经营、拍卖单位电话\",\"usedCarMarketName\":\"二手车市场\",\"usedCarMarketTaxNo\":\"二手车市场纳税人识别号\",\"usedCarMarketAddress\":\"二手车市场地址\",\"usedCarMarketBankInfo\":\"二手车市场开户银行及账号\",\"usedCarMarketTel\":\"二手车市场电话\",\"remark\":\"备注\",\"status\":\"发票状态1：正常、0：作废\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间yyyy-MM-ddHH:mm:ss\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        List<String> sameKey = new ArrayList<>();
        Map map = new HashMap();
        JSONObject jsonObject1 = JSONObject.parseObject(plan);
        JSONObject jsonObject2 = JSONObject.parseObject(verhicle);
        JSONObject jsonObject3 = JSONObject.parseObject(juanpiao);
        JSONObject jsonObject4 = JSONObject.parseObject(tongxingfei);
        JSONObject jsonObject5 = JSONObject.parseObject(ershouche);
        List<String> keys1 = JsonCompareKey.compare(jsonObject1, jsonObject3);
        Collections.sort(keys1);
        log.info("keys1:{}", keys1);
//        System.out.println(differentKey1);
//        System.out.println(differentKey2);
        List<String> keys2 = JsonCompareKey.compare(jsonObject3, jsonObject4);
        Collections.sort(keys2);
        log.info("keys2:{}", keys2);
//        System.out.println(differentKey1);
//        System.out.println(differentKey2);
        List<String> keys3 = JsonCompareKey.compare(jsonObject2, jsonObject5);
        Collections.sort(keys3);
        log.info("jsonObject2.size:{}",jsonObject2.size());
        log.info("jsonObject5.size:{}",jsonObject5.size());
        log.info("keys3.size:{}",keys3.size());
        log.info("key3:{}", keys3);
//        System.out.println(differentKey1);
//        System.out.println(differentKey2);
        for (String o : keys1) {
            if (keys2.contains(o) && keys3.contains(o)) {
                sameKey.add(o);
            }
        }
        for (String o : keys3) {
            if (keys1.contains(o) && keys2.contains(o) && (!sameKey.contains(o))) {
                sameKey.add(o);
            }
        }
        log.info("sameKey:{}", sameKey);
        for (String k : sameKey) {
            map.put(k, jsonObject4.get(k));
        }
        log.info("map:{}", map);
    }
}
