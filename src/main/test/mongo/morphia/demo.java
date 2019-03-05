package mongo.morphia;

import com.mongodb.MongoClient;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.Morphia;

/**
 * Created by tjh on 2019/2/13.
 */
public class demo {
    public static void main(String[] args) {

        Morphia morphia = new Morphia();

        // 告诉Morphia在哪里找到你的类
        // 可以为不同的包或者类进行多次的调用
        morphia.mapPackage("mongo.morphia");

        //创建datastore，并连接到指定数据库
        //datastore有两个参数，第一个用来连接到MongoDB，第二个是数据库的名字。
        final Datastore datastore = morphia.createDatastore(new MongoClient("localhost"), "learn");
        datastore.ensureIndexes();

        final User user = new User(0,"zhansan",false,20,"home");
        datastore.save(user);


    }
}
