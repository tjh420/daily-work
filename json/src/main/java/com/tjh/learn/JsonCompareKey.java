package com.tjh.learn;

import com.alibaba.fastjson.JSONObject;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by tjh on 2019/3/5.
 * 比较两个json串，找到相同的key值
 * 同时找到不同的
 */
public class JsonCompareKey {

    static List<String> sameKey = new ArrayList<>();
    static List<String> differentKey1 = new ArrayList<>();
    static List<String> differentKey2 = new ArrayList<>();
    static int count = 0;

    public static String compareJson(JSONObject json1, JSONObject json2, String key) {
        Iterator<String> i = json1.keySet().iterator();
        Iterator<String> j = json2.keySet().iterator();
        while (i.hasNext()) {
            key = i.next();
            if (json2.get(key)==null){
                differentKey1.add(key);
            }else {
                sameKey.add(key);
            }
        }
        while (j.hasNext()) {
            key = j.next();
            if (json1.get(key)==null){
                differentKey2.add(key);
            }else {
                count++;
            }
        }
        return sameKey.toString();
    }

    private final static String st3 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"purchaserAddrTel\":\" \",\"purchaserBankInfo\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"sellerAddrTel\":\" \",\"sellerBankInfo\":\" \",\"amountWithoutTax\":\" \",\"taxAmount\":\" \",\"amountWithTax\":\" \",\"machineCode\":\" \",\"checkCode\":\" \",\"remark\":\" \",\"status\":\" \",\"cpyStatus\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"goodsListFlag\":\"\",\"dqCode\":\" \",\"dqName\":\" \"}";
    private final static String st4 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"machineCode\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"amountWithoutTax\":\" \",\"taxAmount\":\" \",\"amountWithTax\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"sellerAddrTel\":\" \",\"sellerBankInfo\":\" \",\"sellerAddress\":\" \",\"sellerTel\":\" \",\"sellerBankName\":\" \",\"sellerBankAccount\":\" \",\"purchaserId\":\" \",\"vehicleType\":\" \",\"vehicleBrand\":\" \",\"productionArea\":\" \",\"certificationNo\":\" \",\"commodityInspectionNo\":\" \",\"engineNo\":\" \",\"vehicleNo\":\" \",\"importCertificateNo\":\" \",\"taxRate\":\" \",\"chargeTaxAuthorityCode\":\" \",\"chargeTaxAuthorityName\":\" \",\"taxPaidProof\":\" \",\"tonnage\":\" \",\"maxCapacity\":\" \",\"status\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"dqCode\":\" \",\"dqName\":\" \"}";

    public static void main(String[] args) {
        JSONObject jsonObject1 = JSONObject.parseObject(st3);
        JSONObject jsonObject2 = JSONObject.parseObject(st4);
        String keys = compareJson(jsonObject1, jsonObject2, null);
        System.out.println(keys);
        System.out.println(differentKey1);
        System.out.println(differentKey2);
    }
}
