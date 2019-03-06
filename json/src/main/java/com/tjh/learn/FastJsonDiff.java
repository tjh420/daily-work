package com.tjh.learn;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang.StringUtils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by tjh on 2019/3/5.
 * 比较两个json串，找到相同的key值
 * compareJson(A,B,null)可以返回A中有B中没有的key
 * compareJson(B,A,null)可以返回B中有A中没有的key
 */
public class FastJsonDiff {

    static List<String> sameKey = new ArrayList<>();
    static List<String> differentKey1 = new ArrayList<>();
    static List<String> differentKey2 = new ArrayList<>();

    @SuppressWarnings("unchecked")
    public static String compareJson(JSONObject json1, JSONObject json2, String key) {
        Iterator<String> i = json1.keySet().iterator();
        while (i.hasNext()) {
            key = i.next();
            compareJson(json1.get(key), json2.get(key), key);
        }
        return sameKey.toString();
    }

    public static void compareJson(Object json1, Object json2, String key) {
        if (json1 instanceof JSONObject) {
//            System.out.println("this JSONObject----" + key);
            compareJson((JSONObject) json1, (JSONObject) json2, key);
        } else if (json1 instanceof JSONArray) {
//            System.out.println("this JSONArray----" + key);
            compareJson((JSONArray) json1, (JSONArray) json2, key);
        } else if (json1 instanceof String) {
//            System.out.println("this String----" + key);
//            compareJson((String) json1, (String) json2, key);
            String json1ToStr = "";
            String json2ToStr = "";
            try {
                if (json1 == null) {
                    json1ToStr = null;
                } else if (json2 == null) {
                    json2ToStr = null;
                } else {
                    json1ToStr = json1.toString();
                    json2ToStr = json2.toString();
                }
                compareJson(json1ToStr, json2ToStr, key);
            } catch (Exception e) {
                System.out.println("转换发生异常 key:" + key);
                e.printStackTrace();
            }

        } else {
//            System.out.println("this other----" + key);
            compareJson(json1.toString(), json2.toString(), key);
        }
    }

    public static void compareJson(String str1, String str2, String key) {
        if (!str1.equals(str2)) {
            if (str1 == null){
                differentKey2.add(key);
            }else if (str2 == null){
                differentKey1.add(key);
            }
            System.err.println("不一致key:" + key + ",json1:" + str1 + ",json2:" + str2);
        } else {
            sameKey.add(key);
            System.out.println("一致：key:" + key + ",json1:" + str1 + ",json2:" + str2);
        }
    }

    public static void compareJson(JSONArray json1, JSONArray json2, String key) {
        if (json1 != null && json2 != null) {
            Iterator i1 = json1.iterator();
            Iterator i2 = json2.iterator();
            while (i1.hasNext()) {
                compareJson(i1.next(), i2.next(), key);
            }
        } else {
            if (json1 == null && json2 == null) {
                System.err.println("不一致：key:" + key + "  在json1和json2中均不存在");
            } else if (json1 == null) {
                System.err.println("不一致：key:" + key + "  在json1中不存在");
            } else if (json2 == null) {
                System.err.println("不一致：key:" + key + "  在json2中不存在");
            } else {
                System.err.println("不一致：key:" + key + "  未知原因");
            }

        }
    }

    private final static String st1 = "{\"username\":\"tom\",\"age\":18,\"address\":[{\"province\":\"上海市\"},{\"city\":\"上海市\"},{\"disrtict\":\"静安区\"}]}";
    private final static String st2 = "{username:\"tom\",age:18}";
    private final static String st3 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"purchaserAddrTel\":\" \",\"purchaserBankInfo\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"sellerAddrTel\":\" \",\"sellerBankInfo\":\" \",\"amountWithoutTax\":\" \",\"taxAmount\":\" \",\"amountWithTax\":\" \",\"machineCode\":\" \",\"checkCode\":\" \",\"remark\":\" \",\"status\":\" \",\"cpyStatus\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"goodsListFlag\":\"\",\"dqCode\":\" \",\"dqName\":\" \"}";
    private final static String st4 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\" \",\"invoiceCode\":\" \",\"invoiceNo\":\" \",\"paperDrewDate\":\" \",\"machineCode\":\" \",\"purchaserName\":\" \",\"purchaserTaxNo\":\" \",\"amountWithoutTax\":\" \",\"taxAmount\":\" \",\"amountWithTax\":\" \",\"sellerName\":\" \",\"sellerTaxNo\":\" \",\"sellerAddrTel\":\" \",\"sellerBankInfo\":\" \",\"sellerAddress\":\" \",\"sellerTel\":\" \",\"sellerBankName\":\" \",\"sellerBankAccount\":\" \",\"purchaserId\":\" \",\"vehicleType\":\" \",\"vehicleBrand\":\" \",\"productionArea\":\" \",\"certificationNo\":\" \",\"commodityInspectionNo\":\" \",\"engineNo\":\" \",\"vehicleNo\":\" \",\"importCertificateNo\":\" \",\"taxRate\":\" \",\"chargeTaxAuthorityCode\":\" \",\"chargeTaxAuthorityName\":\" \",\"taxPaidProof\":\" \",\"tonnage\":\" \",\"maxCapacity\":\" \",\"status\":\" \",\"checkNumber\":\" \",\"checkTime\":\" \",\"dqCode\":\" \",\"dqName\":\" \"}";

    public static void main(String[] args) {
        System.out.println(st1);
        JSONObject jsonObject1 = JSONObject.parseObject(st4);
        JSONObject jsonObject2 = JSONObject.parseObject(st3);
        String keys = compareJson(jsonObject1, jsonObject2, null);
        System.out.println(keys);
        System.out.println(differentKey1);
        System.out.println(differentKey2);
    }

}
