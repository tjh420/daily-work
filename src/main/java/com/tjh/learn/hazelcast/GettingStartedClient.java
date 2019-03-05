package com.tjh.learn.hazelcast;

import com.hazelcast.client.HazelcastClient;
import com.hazelcast.client.config.ClientConfig;
import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.core.IMap;

/**
 * Created by tjh on 2019/1/7.
 * 在我们的这个示例中，没有配置任何Hazelcast配置文件。实际上，hazelcast会用默认的配置文件。
 */
public class GettingStartedClient {
    public static void main(String[] args) {
        ClientConfig clientConfig = new ClientConfig();
        HazelcastInstance client = HazelcastClient.newHazelcastClient(clientConfig);
        IMap map = client.getMap("customers");
        System.out.println("Map Size:" + map.size());
    }

    /**
     * 下面是hazelcast找寻配置文件的规则:
     *
     * 1.当一个hazelcast 节点启动的时候，它会先找寻hazelcast.config 系统属性。
     * 如果这个属性有被设置的话，那么hazelcast将会按照该属性的设置去找寻配置文件。
     * - Dhazelcast.config=<path to the hazelcast.xml>
     *
     * 2.如果找不到属性，那么hazelcast会在当前工作目录中找寻hazelcast.xml
     *
     * 3.如果在工作目录中找不到，会在class path寻找hazelcast.xml
     *
     * 4.如果还是找不到，hazelcast会加载默认的配置文件。hazlelcast.jar包中的hazelcast-default.xml
     */
}
