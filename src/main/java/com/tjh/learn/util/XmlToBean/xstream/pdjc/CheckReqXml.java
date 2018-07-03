package com.tjh.learn.util.XmlToBean.xstream.pdjc;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * Created by tjh on 2018/7/3.
 */
@Getter
@Setter
@ToString
@XStreamAlias("soap12:Envelope")
public class CheckReqXml {

    @XStreamAsAttribute
    @XStreamAlias("xmlns:xsi")
    private String xsi = "http://www.w3.org/2001/XMLSchema-instance";

    @XStreamAsAttribute
    @XStreamAlias("xmlns:xsd")
    private String xsd = "http://www.w3.org/2001/XMLSchema";

    @XStreamAsAttribute
    @XStreamAlias("xmlns:soap12")
    private String soap12 = "http://www.w3.org/2003/05/soap-envelope";

    @XStreamAlias("soap12:Body")
    private Body body = new Body();

    @Getter
    @Setter
    @ToString
    public static final class Body {

        @XStreamAlias("GetCheckInfo")
        private Request request = new Request();

        @Data
        public static final class Request {

            @XStreamAsAttribute
            @XStreamAlias("xmlns")
            private String xmlns = "http://tempuri.org/";

            @XStreamAlias("strCallUserCode")
            private String strCallUserCode;

            @XStreamAlias("strCallPassword")
            private String strCallPassword;

            @XStreamAlias("strQRCode")
            private String qrCodeId;

            @XStreamAlias("strCheckCode")
            private String checkCode;
        }
    }
}
