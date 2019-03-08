package com.tjh.gsonFormat.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by tjh on 2019/3/6.
 * [
 *     {
 *         "amount": "100.00",
 *         "checkCode": "",
 *         "invoiceCode": "1234567890",
 *         "invoiceNo": "12345678",
 *         "paperDrewDate": "20170101",
 *         "yzLevel": "A",
 *         "tenantCode": "sgcc",
 *         "customerNo": "123"
 *     },
 *     {
 *         "amount": "200.00",
 *         "checkCode": "",
 *         "invoiceCode": "1234567891",
 *         "invoiceNo": "12345679",
 *         "paperDrewDate": "20170201",
 *         "yzLevel": "A",
 *         "tenantCode": "sgcc",
 *         "customerNo": "123"
 *     }
 * ]
 */
@NoArgsConstructor
@Data
public class Request {

    private String amount;
    private String checkCode;
    private String invoiceCode;
    private String invoiceNo;
    private String paperDrewDate;
    private String yzLevel;
    private String tenantCode;
    private String customerNo;


}
