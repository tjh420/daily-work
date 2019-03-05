package com.tjh.learn.baseKnowledge.file;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;

/**
 * Created by tjh on 2019/2/14.
 * 除了上述基本的文件和文件夹的操作之外，还提供了一些取得文件信息的方法：
 * 　　　　.判断路径是否是文件：public boolean isFile();
 * 　　　　.判断路径是否是文件夹：public boolean isDirectory();
 * 　　　　.最后一次修改时间：public long lastModified();
 * 　　　　.取得文件大小：public long length();
 * 　　　　.修改文件名称：public boolean renameTo(File dest);
 */
public class TestFileMethod {
    public static void main(String [] args) throws IOException {
        File file = new File("G:"+ File.separator +"Test"+ File.separator +"TestFile"+ File.separator +"1.jpg");
        file.createNewFile();
        if(file.exists()){
            System.out.println(file.isDirectory()? "是文件夹" : "不是文件夹");
            System.out.println(file.isFile() ? "是文件" : "不是文件");
            System.out.println("最后修改时间："+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(file.lastModified()));
            System.out.println("文件大小："
                    + new BigDecimal((file.length() / (double) 1024 / 1024))
                    .divide(new BigDecimal(1), 2,BigDecimal.ROUND_HALF_UP) + "M");

            if(file.renameTo(new File("G:"+ File.separator +"Test"+ File.separator +"TestFile"+ File.separator +"hello.jpg"))){
                System.out.println("重命名成功");
            }else{
                System.out.println("重命名失败");
            }
        }
    }
}

