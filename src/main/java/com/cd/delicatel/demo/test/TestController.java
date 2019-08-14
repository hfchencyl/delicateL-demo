package com.cd.delicatel.demo.test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author cold
 * @Date 2019/8/12 10:45
 **/
@RestController

public class TestController {


    @RequestMapping("/delicate/test")
    public String test() {
        System.out.println("WAWAWA!!!!!!");
        System.out.println("我多加了一行打印!!!!!!");
        return "success!!!!!!!!!!!!!!!";
    }

}
