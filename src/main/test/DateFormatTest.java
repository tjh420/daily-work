import constant.TestConstant;
import lombok.extern.slf4j.Slf4j;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by tjh on 2018/9/11.
 */
@Slf4j
public class DateFormatTest {
    public static void main(String[] args) throws ParseException {
        Date date = new Date();
        System.out.println(date);
        String month = new SimpleDateFormat(TestConstant.DateFormat.MONTH_FORMAT).format(date);
        log.info("月份标准化:{}",month);

        Date date1 = new SimpleDateFormat("yyyyMM").parse (month);
        Calendar calendar = Calendar.getInstance ();
        calendar.setTime (date1);
        log.info("获取当月第一天:{}",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
        calendar.add (Calendar.MONTH, 1);
        log.info("获取下月第一天:{}",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));

        calendar.setTime(date);
        calendar.set(Calendar.DAY_OF_YEAR, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND,0);
        log.info("获取当年第一天:{}",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));
        calendar.add (Calendar.YEAR, 1);
        calendar.add(Calendar.SECOND, -1);
        log.info("获取下年第一天:{}",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime()));

        Calendar calendar1 = Calendar.getInstance ();
        int currentYear = calendar1.get(Calendar.YEAR);
        calendar1.clear();
        calendar1.set(Calendar.YEAR, currentYear);
        System.out.println(calendar1.getTime());
        System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar1.getTime()));
//        calendar1.roll(Calendar.DAY_OF_YEAR, -1);
        calendar1.add (Calendar.YEAR, 1);
        calendar1.add(Calendar.SECOND, -1);
        System.out.println(calendar1.getTime());
        System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar1.getTime()));

        String a = "201801";
        String b = "201703";
        System.out.println(Integer.valueOf(a)<Integer.valueOf(b));

    }
}
