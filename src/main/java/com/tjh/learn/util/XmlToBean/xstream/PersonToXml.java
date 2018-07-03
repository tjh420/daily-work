package com.tjh.learn.util.XmlToBean.xstream;

import com.thoughtworks.xstream.XStream;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by tjh on 2018/6/29.
 */
public class PersonToXml {

    public static void main(String[] args) {

        List<String> list = new ArrayList<String>();
        list.add("YuanYuanGao");
        list.add("QiShu");
        list.add("BoZhiZhang");
        Date date = new Date();

        XStream xstream = new XStream();
        Person person = new Person();
        person.setName("tjh");
        person.setAge(18);
        person.setBirthday(date);
        person.setGirlFriends(list);
        System.out.println(xstream.toXML(person));

        System.out.println("————————————————分割线——————————————");

        XStream xStream = new XStream();
        xStream.autodetectAnnotations(true);//告诉XStream去解析JAVA bean中的annotation
        PersonChange personChange = new PersonChange();
        personChange.setName("tjh");
        personChange.setAge(18);
        personChange.setBirthday(date);
        personChange.setGirlFriends(list);
        System.out.println(xStream.toXML(personChange));
    }
}
