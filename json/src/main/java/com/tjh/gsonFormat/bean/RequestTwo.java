package com.tjh.gsonFormat.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by tjh on 2019/3/6.
 */
@NoArgsConstructor
@Data
public class RequestTwo {

    private List<RequestBean> request;

    @NoArgsConstructor
    @Data
    public static class RequestBean {
        private String amount;
        private String checkCode;
        private String invoiceCode;
        private String invoiceNo;
        private String paperDrewDate;
        private String yzLevel;
        private String tenantCode;
        private String customerNo;
    }
}
