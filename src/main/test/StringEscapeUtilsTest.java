import org.apache.commons.lang.StringEscapeUtils;

/**
 * Created by tjh on 2018/11/20.
 */
public class StringEscapeUtilsTest {
    public static void main(String args[]) {

        String userName = " ' or 1='1";
        String password = "123456";
        String sql = "SELECT COUNT(*) FROM FP_USER WHERE userName='" + userName + " ' AND password ='" + password + "'";
        System.out.println(sql);
        userName = StringEscapeUtils.escapeSql(userName);
        password = StringEscapeUtils.escapeSql(password);
        String newSql = "SELECT COUNT(*) FROM FP_USER WHERE userName='" + userName + " ' AND password ='" + password + "'";
        System.out.println("防SQL注入sql:" + newSql);    //防SQL注入

        System.out.println("转义HTML,注意汉字:" + StringEscapeUtils.escapeHtml("<font>chen磊  xing</font>"));    //转义HTML,注意汉字
        System.out.println("反转义HTML:" + StringEscapeUtils.unescapeHtml("<font>chen磊  xing</font>"));    //反转义HTML
        System.out.println("反转义HTML:" + StringEscapeUtils.unescapeHtml("&lt;font&gt;chen&#30922;  xing&lt;/font&gt;"));

        System.out.println("转成Unicode编码：" + StringEscapeUtils.escapeJava("陈磊兴"));    //转义成Unicode编码

        System.out.println("转义XML：" + StringEscapeUtils.escapeXml("<name>陈磊兴</name>"));    //转义xml
        System.out.println("反转义XML：" + StringEscapeUtils.unescapeXml("<name>陈磊兴</name>"));    //转义xml
        System.out.println("反转义XML：" + StringEscapeUtils.unescapeXml("&lt;name&gt;&#38472;&#30922;&#20852;&lt;/name&gt;"));


        System.out.println(StringEscapeUtils.escapeJavaScript("<script>alert('1111')</script>"));

    }
}
