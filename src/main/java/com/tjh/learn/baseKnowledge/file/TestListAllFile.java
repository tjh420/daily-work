package com.tjh.learn.baseKnowledge.file;

import java.io.File;

/**
 * Created by tjh on 2019/2/14.
 * 列出指定目录中的所有文件（包含所有子目录中的文件），递归调用
 */
public class TestListAllFile {

    public static void main(String [] args){
        File file = new File("G:" + File.separator + "Test");
        print(file);
    }

    public static void print(File file){
        if(file.exists() && file.isDirectory()){
            File [] files = file.listFiles();
            if(files.length > 0 && files != null){
                for(int i = 0; i < files.length; i++){
                    print(files[i]);//递归调用，由里到外
                }
            }
        }
        System.out.println(file);
    }
}
