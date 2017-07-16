package com.blog.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Chia's JaJa on 2017/5/31.
 */

@Controller
public class BlogController {

    @RequestMapping(value = "/ryan/blog", method = RequestMethod.GET)
    public String blog() {
        return "/ryan/blog";
    }

}
