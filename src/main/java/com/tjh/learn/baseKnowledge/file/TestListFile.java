package com.tjh.learn.baseKnowledge.file;

import java.io.File;

/**
 * Created by tjh on 2019/2/14.
 * 列出指定文件夹中的所有内容：只列出下一级
 */
public class TestListFile {
    public static void main(String [] args){
        File file = new File("G:" + File.separator + "Test" + File.separator + "TestFile");
        if(file.exists() && file.isDirectory()){
            File [] list = file.listFiles();
            for(int i = 0; i < list.length; i ++){
                System.out.println("files："+list[i]);
            }
        }
    }
}
