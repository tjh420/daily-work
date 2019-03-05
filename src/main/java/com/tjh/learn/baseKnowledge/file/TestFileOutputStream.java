package com.tjh.learn.baseKnowledge.file;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by tjh on 2019/2/14.
 * 　　单个字节：
 */
public class TestFileOutputStream {
    public static void main(String [] args) throws IOException {
        File file = new File("G:" + File.separator + "Test" + File.separator + "demo2.txt");
        if(!file.getParentFile().exists()){
            file.getParentFile().mkdirs();
        }
        //通过OutputStream的子类对象为父类对象实例化
        OutputStream output = new FileOutputStream(file);
        //要输出的数据
        String msg = "Hello world.\r\n Hello world.";
        //将字符串转换为字节数组
        byte [] data = msg.getBytes();
        System.out.println(data);
        //输出字节数组
        for(int i = 0; i < data.length; i++){
            output.write(data[i]);
        }
        //关闭
        output.close();
    }
}
