package constant;

/**
 * 常量管理(类定义为final才能直接通过类名访问常量)
 * Created by tjh on 2018/9/11.
 */
public final class TestConstant {

    /**
     * 日期标准化格式
     */
    public static class DateFormat {
        public static final String DEFAULT ="yyyy-MM-dd HH:mm:ss";
        public static final String MONTH_FORMAT = "yyyyMM";
    }
}
