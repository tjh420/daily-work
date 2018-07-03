package com.tjh.learn.util.XmlToBean.xstream.util;

import com.thoughtworks.xstream.converters.Converter;
import com.thoughtworks.xstream.converters.MarshallingContext;
import com.thoughtworks.xstream.converters.UnmarshallingContext;
import com.thoughtworks.xstream.io.HierarchicalStreamReader;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Converter这个是属于XStream中的高级特性了，用于基本功能不能满足的情况下让客户自己定制序列化/反系列化的细节
 * 本例用于标准化时间
 * Created by tjh on 2018/6/29.
 */
public class DateConverter implements Converter {
    /**
     * 序列化的方法（JAVA bean --> XML）
     * @param source
     * @param writer
     * @param context
     */
    public void marshal(Object source, HierarchicalStreamWriter writer, MarshallingContext context) {
        Date date = (Date)source;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
        writer.setValue(format.format(calendar.getTime()));
    }

    /**
     * 反序列化的方法。因为本例用不到所以没有实现。
     * @param reader
     * @param context
     * @return
     */
    public Object unmarshal(HierarchicalStreamReader reader, UnmarshallingContext context) {
        return null;
    }

    /**
     * 用来检测本converter是否能够转换输入的类型
     * @param type
     * @return
     */
    public boolean canConvert(Class type) {
        return (Date.class).equals(type);
    }
}
