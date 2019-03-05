import com.alibaba.fastjson.JSONObject;

/**
 * Created by tjh on 2018/9/19.
 */
public class JsonAndValueOf {
    public static void main(String[] args) {

        JSONObject object = new JSONObject();
        object.put("a",true);
        object.put("b","b");
        System.out.println(object);

        String s = object.getString("reversing");
        Boolean b = object.getBoolean("reversing");
        System.out.println(s);
        System.out.println(b);
        if (s == null ){
            System.out.println(Boolean.valueOf(s));
        }
        if (b == null){
            System.out.println(b);
        }
        Boolean c = Boolean.valueOf(object.getString("reversing"));
        System.out.println(c);
        Boolean d = Boolean.valueOf(object.getString("a"));
        System.out.println(d);
    }
}
