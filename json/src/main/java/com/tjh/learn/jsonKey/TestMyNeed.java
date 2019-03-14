package com.tjh.learn.jsonKey;

import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

/**
 * Created by tjh on 2019/3/13.
 */
@Slf4j
public class TestMyNeed {
    public static void main(String[] args) {
        String main1 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型s-增值税专用发票、c-增值普通发票，ce-增值税电子普通发票\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"purchaserName\":\"购方名称\",\"purchaserTaxNo\":\"购方税号\",\"purchaserAddrTel\":\"购方地址电话\",\"purchaserBankInfo\":\"购方开户行名称账号\",\"sellerName\":\"销方名称\",\"sellerTaxNo\":\"销方税号\",\"sellerAddrTel\":\"销方地址电话\",\"sellerBankInfo\":\"销方开户行名称账号\",\"amountWithoutTax\":\"发票不含税金额\",\"taxAmount\":\"发票税额\",\"amountWithTax\":\"发票含税金额\",\"machineCode\":\"机器码\",\"checkCode\":\"校验码\",\"remark\":\"备注\",\"status\":\"发票状态1-正常、0-作废\",\"cpyStatus\":\"成平油标志0-非成品油发票1-成品油发票(通道二不支持)\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间\",\"goodsListFlag\":\"销货清单标志0-无销货清单，1-有销货清单\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        String main2 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型j-机动车增值税专用发票\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"machineCode\":\"机器编码\",\"purchaserName\":\"购方名称\",\"purchaserTaxNo\":\"购方税号\",\"amountWithoutTax\":\"不含税金额\",\"taxAmount\":\"税额\",\"amountWithTax\":\"含税金额\",\"sellerName\":\"销方名称\",\"sellerTaxNo\":\"销方税号\",\"sellerAddrTel\":\"销方地址电话\",\"sellerBankInfo\":\"销方开户行名称账号\",\"sellerAddress\":\"销方地址\",\"sellerTel\":\"销方电话\",\"sellerBankName\":\"销方银行账号\",\"sellerBankAccount\":\"销方银行账号\",\"purchaserId\":\"身份证号码、组织机构码\",\"vehicleType\":\"车辆类型\",\"vehicleBrand\":\"厂牌型号\",\"productionArea\":\"产地\",\"certificationNo\":\"合格证号\",\"commodityInspectionNo\":\"商检单号\",\"engineNo\":\"发动机号码\",\"vehicleNo\":\"车辆识别代号/车架号码\",\"importCertificateNo\":\"进口证明书号\",\"taxRate\":\"征收税率\",\"chargeTaxAuthorityCode\":\"税务机关代码\",\"chargeTaxAuthorityName\":\"税务机关名称\",\"taxPaidProof\":\"完税凭证号码\",\"tonnage\":\"吨位，可能带小数\",\"maxCapacity\":\"限乘人数\",\"status\":\"发票状态1：正常、0：作废\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间yyyy-MM-ddHH:mm:ss\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        String main3 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型cj-增值税普通发票（卷票）\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"sellerName\":\"销方名称\",\"sellerTaxNo\":\"销方税号\",\"purchaserName\":\"购方名称\",\"purchaserTaxNo\":\"购方税号\",\"machineCode\":\"机器码\",\"checkCode\":\"校验码\",\"amountWithTax\":\"价税合计\",\"receivingClerk\":\"收货员\",\"remark\":\"备注\",\"status\":\"发票状态1：正常、0：作废\",\"cpyStatus\":\"成平油标志0-非成品油发票1-成品油发票(通道二不支持)\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间yyyy-MM-ddHH:mm:ss\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        String main4 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型ct-增值税电子普通发票（通行费）\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"purchaserName\":\"购方名称\",\"purchaserTaxNo\":\"购方税号\",\"purchaserAddrTel\":\"购方地址电话\",\"purchaserBankInfo\":\"购方开户行名称账号\",\"sellerName\":\"销方名称\",\"sellerTaxNo\":\"销方税号\",\"sellerAddrTel\":\"销方地址电话\",\"sellerBankInfo\":\"销方开户行名称账号\",\"amountWithoutTax\":\"发票不含税金额\",\"taxAmount\":\"发票税额\",\"amountWithTax\":\"发票含税金额\",\"machineCode\":\"机器码\",\"checkCode\":\"校验码\",\"remark\":\"备注\",\"status\":\"发票状态1-正常、0-作废\",\"ctStatus\":\"通行费标志0-普通通行费1-特殊通行费(通道二不支持)\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间yyyy-MM-ddHH:mm:ss\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        String main5 = "{\"taskid\":\"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc\",\"invoiceType\":\"发票类型j-机动车增值税专用发票\",\"invoiceCode\":\"发票代码\",\"invoiceNo\":\"发票号码\",\"paperDrewDate\":\"开票日期\",\"machineCode\":\"机器编码\",\"purchaserName\":\"买方单位/个人\",\"purchaserTaxNo\":\"买方单位代码/身份证号\",\"purchaserAddress\":\"买方单位/个人住址\",\"purchaserTel\":\"买方电话\",\"carNumber\":\"车牌照号\",\"registrationNo\":\"登记证号\",\"vehicleType\":\"车辆类型\",\"totalPrice\":\"车价合计\",\"vehicleNo\":\"车辆识别代号/车架号码\",\"vehicleBrand\":\"厂牌型号\",\"vehiclePlaceName\":\"转入地车辆车管所名称\",\"sellerName\":\"卖方单位/个人\",\"sellerTaxNo\":\"卖方单位代码/身份证号\",\"sellerAddress\":\"卖方单位/个人住址\",\"sellerTel\":\"卖方电话\",\"auctioneersName\":\"经营、拍卖单位\",\"auctioneersAddress\":\"经营、拍卖单位地址\",\"auctioneersTaxNo\":\"经营、拍卖单位纳税人识别号\",\"auctioneersBankInfo\":\"经营、拍卖单位开户银行及账号\",\"auctioneersTel\":\"经营、拍卖单位电话\",\"usedCarMarketName\":\"二手车市场\",\"usedCarMarketTaxNo\":\"二手车市场纳税人识别号\",\"usedCarMarketAddress\":\"二手车市场地址\",\"usedCarMarketBankInfo\":\"二手车市场开户银行及账号\",\"usedCarMarketTel\":\"二手车市场电话\",\"remark\":\"备注\",\"status\":\"发票状态1：正常、0：作废\",\"checkNumber\":\"查验次数(通道二不支持)\",\"checkTime\":\"查验时间yyyy-MM-ddHH:mm:ss\",\"dqCode\":\"地区代码\",\"dqName\":\"地区名称\"}";
        String goods1 = "";
        String goods2 = "";
        String goods3 ="";
        JSONObject objectM1 = JSONObject.parseObject(main1);
        JSONObject objectM2 = JSONObject.parseObject(main2);
        JSONObject objectM3 = JSONObject.parseObject(main3);
        JSONObject objectM4 = JSONObject.parseObject(main4);
        JSONObject objectM5 = JSONObject.parseObject(main5);
        JSONObject objectG1 = JSONObject.parseObject(goods1);
        JSONObject objectG2 = JSONObject.parseObject(goods2);
        JSONObject objectG3 = JSONObject.parseObject(goods3);
        JSONObject all = JsonCompareKey.getAll(objectM1,objectM2);
        all = JsonCompareKey.getAll(all,objectM3);
        all = JsonCompareKey.getAll(all,objectM4);
        all = JsonCompareKey.getAll(all,objectM5);
        System.out.println(all.size());
        System.out.println(all);


    }
}
