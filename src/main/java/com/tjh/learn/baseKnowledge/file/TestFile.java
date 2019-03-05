package com.tjh.learn.baseKnowledge.file;

import java.io.File;
import java.io.IOException;

/**
 * Created by tjh on 2019/2/14.
 */
public class TestFile {
    public static void main(String [] args) throws IOException {
        File file = new File("G:\\demo.txt");
        System.out.println("file:"+file);
        if(file.exists()){
            file.delete();
            System.out.println("执行了删除文件！");
        }else{
            file.createNewFile();
            System.out.println("执行了创建文件");
        }
    }
}
