package com.tjh.learn.baseKnowledge.file;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by tjh on 2019/2/14.
 * 字节输入流：OutputStream
 * 　　java.io.OutputStream是可以进行字节数据（byte）的输出
 * 　　OutputStream类中存在三个write()方法：
 * 　　　　·输出单个字节：public void write(int b);
 * 　　　　·输出全部字节：public void write(byte [] b);
 * 　　　　·输出部分字节：public void write(byte [] b,int off,int len);
 *
 * 　　OutputStream是一个抽象类，所以可以使用子类对其进行实例化。
 *     对文件操作，可以使用FileOutputStream，这个类有两个常用的构造方法：
 * 　　　　public FileOutputStream(File file) throws FileNotFoundException,覆盖;
 * 　　　　public FileOutputStream(File file, boolean append) throws FileNotFoundException,追加;
 *
 * 1、对文件进行覆盖的输出操作：
 * 不管执行几次，都是对当前文件的覆盖。
 * 如果不想覆盖，可以使用追加的方式2、创建FileOutputStream类对象
 * 　　　　.追加内容：OutputStream output = new FileOutputStream(file, true);
 */
public class TestOutputStream {
    public static void main(String [] args) throws IOException {
        File file = new File("G:" + File.separator + "Test" + File.separator + "demo1.txt");
        if(!file.getParentFile().exists()){
            file.getParentFile().mkdirs();
        }
        //通过OutputStream的子类对象为父类对象实例化
//        OutputStream output = new FileOutputStream(file);    //1、覆盖，新的内容覆盖旧的内容
        OutputStream output = new FileOutputStream(file, true);     //2、追加，新内容追加在旧内容之后
        //要输出的数据
        String msg = "Hello world.\r\n";
        //将字符串转换为字节数组
        byte [] data = msg.getBytes();
        //输出字节数组
        output.write(data);
        output.flush();
        //关闭
        output.close();
    }
}
