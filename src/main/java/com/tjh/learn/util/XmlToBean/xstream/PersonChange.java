package com.tjh.learn.util.XmlToBean.xstream;

import com.thoughtworks.xstream.annotations.*;
//import com.thoughtworks.xstream.converters.basic.DateConverter;
import com.tjh.learn.util.XmlToBean.xstream.util.DateConverter;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * Created by tjh on 2018/6/29.
 */
@Data
//1.起别名，JAVA bean的类全路径将作为根标签，用此注解取别名
@XStreamAlias("test")
public class PersonChange {

    private String name;

    //2.处理属性,将JAVA bean中的“age”属性作为XML中test标签的一个attribute
    @XStreamAsAttribute
    private int age;

    //3.处理List，将List的根节点去掉和改变列表名字
    @XStreamImplicit(itemFieldName = "girls")
    //4.忽略属性，忽略某些不想序列化的属性
    @XStreamOmitField
    List<String> girlFriends;

    //5.Converter这个是属于XStream中的高级特性，基本功能不能满足的情况下让客户自己定制序列化/反系列化的细节
    @XStreamConverter(value = DateConverter.class)
    Date birthday;
}

