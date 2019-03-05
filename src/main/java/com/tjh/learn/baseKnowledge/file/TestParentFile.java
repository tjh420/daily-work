package com.tjh.learn.baseKnowledge.file;

import java.io.File;
import java.io.IOException;

/**
 * Created by tjh on 2019/2/14.
 * 如果进行文件创建时有目录，则需要先创建目录之后才可以创建文件。
 * 　　.找到父路径：public File getParentFile();
 * 　　.创建目录：(1)public boolean mkdirs();既可以在不存在的目录中创建文件夹又可以创建多级目录（个人推荐使用此方法）
 * 　　　　　　　 (2)public boolean mkdir();只能在已近存在的目录中创建文件夹
 */
public class TestParentFile {
    public static void main(String [] args) throws IOException {
        System.out.println("G:"+ File.separator +"Test"+ File.separator +"TestFile"+ File.separator +"demo.txt");
        File file = new File("G:"+ File.separator +"Test"+ File.separator +"TestFile"+ File.separator +"demo.txt");
        if(!file.getParentFile().exists()){//文件不存在
            file.getParentFile().mkdirs();
            System.out.println("执行了创建多级目录");
        }
        if(file.exists()){//文件存在
            file.delete();
            System.out.println("执行了删除文件！");
        }else{
            file.createNewFile();
            System.out.println("执行了创建文件");
        }
    }
}
