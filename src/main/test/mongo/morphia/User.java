package mongo.morphia;

import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;

/**
 * Created by tjh on 2019/2/13.
 */
@Entity
public class User {
    @Id
    private long id;

    private String name;
    private boolean sex;
    private int age;
    private String address;

    public User() {}
    public User(long id, String name, boolean sex, int age, String address) {
        super();
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.address = address;
    }
    //getter、setter

    @Override
    public String toString() {
        return this.id + "#" + this.name + "#" + this.age + "#" + this.sex + "#" + this.address;
    }
}
