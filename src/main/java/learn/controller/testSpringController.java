package learn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by tjh on 2018/3/26.
 */
@Controller
@RequestMapping(value = "/Test/*")
public class testSpringController {

    @RequestMapping(value = "success")
    public String Success(){
        return "/views/success";
    }

    @RequestMapping(value = "reutrnString",produces = {"text/plain;charset=UTF-8"})
    @ResponseBody
    public String returnString(){
        return "hello return string 这是中文，并没有乱码";
    }
}
