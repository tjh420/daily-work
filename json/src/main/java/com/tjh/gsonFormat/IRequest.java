package com.tjh.gsonFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by tjh on 2019/3/6.
 * {
 *     "invoiceMain": {
 *         "taskid":"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc",
 * 	    "invoiceType":" "
 *        },
 *   "invoiceDetails": [
 *     {
 *     	"invoiceType":" "
 *    }],
 *   "invoiceMore": {
 *         "invoice": {
 *         "taskid":"0ff7d8e2-55a8-11e8-9c2d-fa7ae01bbebc",
 * 	    "invoiceType":" "
 *    }
 *    }
 * }
 */
@NoArgsConstructor
@Data
public class IRequest {

    private InvoiceMainBean invoiceMain;
    private InvoiceMoreBean invoiceMore;
    private List<InvoiceDetailsBean> invoiceDetails;

    @NoArgsConstructor
    @Data
    public static class InvoiceMainBean {
        private String taskid;
        private String invoiceType;
    }

    @NoArgsConstructor
    @Data
    public static class InvoiceMoreBean {
        private InvoiceBean invoice;

        @NoArgsConstructor
        @Data
        public static class InvoiceBean {
            private String taskid;
            private String invoiceType;
        }
    }

    @NoArgsConstructor
    @Data
    public static class InvoiceDetailsBean {
        private String invoiceType;
    }
}
