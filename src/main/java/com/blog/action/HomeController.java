package com.blog.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Chia's JaJa on 2017/5/31.
 */

@Controller
public class HomeController {

    @RequestMapping(value = "/ryan/404", method = RequestMethod.GET)
    public String error() {
        return "/ryan/404";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "/ryan/index";
    }

}
