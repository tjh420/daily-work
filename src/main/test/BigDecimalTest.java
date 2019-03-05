import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 * Created by tjh on 2019/1/2.
 * 计算机是二进制的。浮点数没有办法是用二进制进行精确表示。
 * 我们的CPU表示浮点数由两个部分组成：指数和尾数，
 * 这样的表示方法一般都会失去一定的精确度，有些浮点数运算也会产生一定的误差。
 */
public class BigDecimalTest {
    public static void main(String[] args)
    {
        System.out.println(0.2 + 0.1);
        System.out.println(0.3 - 0.1);
        System.out.println(0.2 * 0.1);
        System.out.println(0.3 / 0.1);

        System.out.println("-------------------------分割线---------------------------");
        /**
         * 其实java的float只能用来进行科学计算或工程计算，
         * 在大多数的商业计算中，一般采用java.math.BigDecimal类来进行精确计算。
         * BigDecimal构造方法
         * 　1.public BigDecimal(double val)    将double表示形式转换为BigDecimal *不建议使用
         * 　2.public BigDecimal(int val)　　将int表示形式转换成BigDecimal
         * 　3.public BigDecimal(String val)　　将String表示形式转换成BigDecimal
         * 为什么不建议采用第一种构造方法呢？来看例子
         */
        BigDecimal bigDecimal = new BigDecimal(2);  //2
        BigDecimal bDouble = new BigDecimal(2.3);   //1
        BigDecimal bString = new BigDecimal("2.3"); //3
        System.out.println("bigDecimal=" + bigDecimal);
        System.out.println("bDouble=" + bDouble);
        System.out.println("bString=" + bString);

        System.out.println("-------------------------分割线---------------------------");
        /**
         * 为什么会出现这种情况呢？
         *  JDK的描述：1、参数类型为double的构造方法的结果有一定的不可预知性。
         *  因为0.1无法准确地表示为 double（或者说对于该情况，不能表示为任何有限长度的二进制小数）
         *  2、另一方面，String 构造方法是完全可预知的：
         *  写入 newBigDecimal("0.1") 将创建一个 BigDecimal，它正好等于预期的 0.1。
         *  因此，比较而言，通常建议优先使用String构造方法。
         *
         *  当double必须用作BigDecimal的源时，请使用Double.toString(double)转成String，然后使用String构造方法，
         *  或使用BigDecimal的静态方法valueOf，如下
         */
        BigDecimal bDouble1 = BigDecimal.valueOf(2.3);
        BigDecimal bDouble2 = new BigDecimal(Double.toString(2.3));

        System.out.println("bDouble1=" + bDouble1);
        System.out.println("bDouble2=" + bDouble2);

        System.out.println("-------------------------分割线---------------------------");
        /**
         * 对于常用的加，减，乘，除，BigDecimal类提供了相应的成员方法。
         */
        BigDecimal a = new BigDecimal("4.5");
        BigDecimal b = new BigDecimal("1.5");

        System.out.println("a + b =" + a.add(b));
        System.out.println("a - b =" + a.subtract(b));
        System.out.println("a * b =" + a.multiply(b));
        System.out.println("a / b =" + a.divide(b));

        System.out.println("-------------------------分割线---------------------------");
        /**
         * BigDecimal除法可能出现不能整除的情况，比如 4.5/1.3，
         * 这时会报错java.lang.ArithmeticException: Non-terminating decimal expansion; no exact representable decimal result.
         *
         * 其实divide方法有可以传三个参数
         * public BigDecimal divide(BigDecimal divisor, int scale, int roundingMode)
         * 第一参数表示除数， 第二个参数表示小数点后保留位数，
         * 第三个参数表示舍入模式，只有在作除法运算或四舍五入时才用到舍入模式
         */
        BigDecimal aa = new BigDecimal("4.5635");
        aa = aa.setScale(3, RoundingMode.HALF_UP);    //保留3位小数，且四舍五入
        System.out.println(aa);

        System.out.println("-------------------------分割线---------------------------");
        /**
         * 加减乘除其实最终都返回的是一个新的BigDecimal对象，
         * 因为BigInteger与BigDecimal都是不可变的（immutable）的，在进行每一步运算时，都会产生一个新的对象
         */
        BigDecimal aaa = new BigDecimal("4.5");
        BigDecimal bbb = new BigDecimal("1.5");
        aaa.add(bbb);

        System.out.println(aaa);  //输出4.5. 加减乘除方法会返回一个新的BigDecimal对象，原来的a不变
    }
}
