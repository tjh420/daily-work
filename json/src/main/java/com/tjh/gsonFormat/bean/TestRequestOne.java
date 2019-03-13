package com.tjh.gsonFormat.bean;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by tjh on 2019/3/11.
 */
@NoArgsConstructor
@Data
public class TestRequestOne {

    @JSONField(name = "code")
    private String code;

    @JSONField(name = "message")
    private String message;

    @JSONField(name = "results")
    private List<ResultsBean> results;

    @NoArgsConstructor
    @Data
    public static class ResultsBean {

        @JSONField(name = "code")
        private String inspectCode;

        @JSONField(name = "message")
        private String inspectMsg;

        @JSONField(name = "invoiceMain")
        private InvoiceMainBean invoiceMain;

        @JSONField(name = "invoiceDetails")
        private List<InvoiceDetailsBean> invoiceDetails;

        @NoArgsConstructor
        @Data
        public static class InvoiceMainBean {

            @JSONField(name = "taskId")
            private String inspectNo;

            @JSONField(name = "invoiceCode")
            private String invoiceCode;

            @JSONField(name = "invoiceNo")
            private String invoiceNo;

            @JSONField(name = "invoiceType")
            private String invoiceType;

            @JSONField(name = "purchaserTaxNo")
            private String buyerTaxCode;

            @JSONField(name = "purchaserName")
            private String buyerName;

            @JSONField(name = "purchaserAddrTel")
            private String buyerAddressTel;

            @JSONField(name = "purchaserAddress")
            private String buyerAddress;

            @JSONField(name = "purchaserTel")
            private String buyerTelephone;

            @JSONField(name = "purchaserBankInfo")
            private String buyerBankAccount;

            @JSONField(name = "sellerTaxNo")
            private String sellerTaxCode;

            @JSONField(name = "sellerName")
            private String sellerName;

            @JSONField(name = "sellerAddrTel")
            private String sellerAddressTel;

            @JSONField(name = "sellerAddress")
            private String sellerAddress;

            @JSONField(name = "sellerTel")
            private String sellerTel;

            @JSONField(name = "sellerBankInfo")
            private String sellerBank;

            @JSONField(name = "paperDrewDate")
            private String issueDate;

            @JSONField(name = "amountWithoutTax")
            private String totalPrice;

            @JSONField(name = "taxAmount")
            private String totalTax;

            @JSONField(name = "amountWithTax")
            private String totalPriceIncludingTax;

            @JSONField(name = "checkCode")
            private String checkCode;

            @JSONField(name = "machineCode")
            private String deviceNo;

            @JSONField(name = "remark")
            private String remark;

            @JSONField(name = "status")
            private String status;

            @JSONField(name = "ctStatus")
            private String ctStatus; //通行费标志 0-普通通行费 1-特殊通行费 (通道二不支持)

            @JSONField(name = "cpyStatus")
            private String cpyStatus; //成平油标志 0-非成品油发票 1-成品油发票 (通道二不支持)

            @JSONField(name = "checkNumber")
            private String inspectNumber; //查验次数 (通道二不支持)

            @JSONField(name = "checkTime")
            private String inspectTime;

            @JSONField(name = "goodsListFlag")
            private String goodsListFlag;

            @JSONField(name = "dqCode")
            private String dqCode;

            @JSONField(name = "dqName")
            private String dqName;
        }

        @NoArgsConstructor
        @Data
        public static class InvoiceDetailsBean {

            @JSONField(name = "cargoName")
            private String name;

            @JSONField(name = "itemSpec")
            private String model;

            @JSONField(name = "quantityUnit")
            private String unit;

            @JSONField(name = "quantity")
            private String quantity;

            @JSONField(name = "taxRate")
            private String taxRate;

            @JSONField(name = "zeroTax")
            private String freeTaxType;

            @JSONField(name = "unitPrice")
            private String unitPrice;

            @JSONField(name = "amountWithoutTax")
            private String price;

            @JSONField(name = "taxAmount")
            private String tax;

            @JSONField(name = "amountWithTax")
            private String priceIncludingTax;
        }
    }
}
