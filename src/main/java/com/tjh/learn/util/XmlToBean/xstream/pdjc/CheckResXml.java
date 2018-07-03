package com.tjh.learn.util.XmlToBean.xstream.pdjc;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by tjh on 2018/7/3.
 */
@Getter
@Setter
@ToString
@XStreamAlias("soap:Envelope")
public class CheckResXml {

    @XStreamAsAttribute
    @XStreamAlias("xmlns:xsi")
    private String xsi = "http://www.w3.org/2001/XMLSchema-instance";

    @XStreamAsAttribute
    @XStreamAlias("xmlns:xsd")
    private String xsd = "http://www.w3.org/2001/XMLSchema";

    @XStreamAsAttribute
    @XStreamAlias("xmlns:soap12")
    private String soap12 = "http://www.w3.org/2003/05/soap-envelope";

    @XStreamAlias("soap:Body")
    private Body body = new Body();

    @Getter
    @Setter
    @ToString
    public static final class Body {

        @XStreamAlias("GetCheckInfoResponse")
        private Response response = new Response();

        @Data
        public static final class Response {

            @XStreamAsAttribute
            @XStreamAlias("xmlns")
            private String xmlns = "http://tempuri.org/";

            @XStreamAlias("GetCheckInfoResult")
            private Result result = new Result();

            @Data
            public static final class Result {

                @XStreamAlias("Info")
                private Info info = new Info();

                @Data
                public static final class Info {

                    @XStreamAsAttribute
                    @XStreamAlias("xmlns")
                    private String xmlns = "";

                    @XStreamAlias("ErrorCode")
                    private String errorCode;

                    @XStreamAlias("Description")
                    private String errorMsg;

                    @XStreamAlias("QRCode")
                    private String QrCodeId;

                    @XStreamAlias("MerchantCode")
                    private String merchantId;

                    @XStreamAlias("TerminalCode")
                    private String terminalId;

                    @XStreamAlias("SalesDocNo")
                    private String merOrderId;

                    @XStreamAlias("SalesDate")
                    private Date merOrderDate;

                    @XStreamAlias("TotalAmount")
                    private double totalPriceIncludingTax;

                    @XStreamAlias("Items")
                    private List<GoodsXml> goodsList = new ArrayList<>();

                    @ToString
                    @Setter
                    @Getter
                    @XStreamAlias("Item")
                    public static final class GoodsXml {

                        @XStreamAlias("ItemCode")
                        private String index;

                        @XStreamAlias("ItemName")
                        private String name;

                        @XStreamAlias("Qty")
                        private int quantity;

                        @XStreamAlias("Amount")
                        private double priceIncludingTax;
                    }
                }
            }
        }
    }

}
