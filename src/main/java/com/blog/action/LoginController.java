package com.blog.action;

import com.blog.entity.UserEntity;
import com.blog.repository.RyanInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Chia's JaJa on 2017/5/31.
 */

@Controller
public class LoginController {

    @RequestMapping(value = "/ryan/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "/ryan/login";
    }

}
