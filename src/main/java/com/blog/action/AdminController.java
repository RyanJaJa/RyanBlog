package com.blog.action;

import com.blog.entity.UserEntity;
import com.blog.repository.RyanInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Chia's JaJa on 2017/5/31.
 */
@Controller
public class AdminController {

    @Autowired
    RyanInterface ryanclass;

    @RequestMapping(value = "/admin/add", method = RequestMethod.POST)
    public String Create(@ModelAttribute("user") UserEntity userEntity) {

        ryanclass.saveAndFlush(userEntity);
        return "redirect:/admin/users";
    }

    @RequestMapping(value = "/admin/create", method = RequestMethod.GET)
    public String Create() {
        return "/admin/create";
    }


    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String getUsers(ModelMap modelMap) {

        List<UserEntity> userList = ryanclass.findAll();
        //UserEntity userList2 = ryanclass.findByName("admin");
        //List<UserEntity> userList3 = ryanclass.findAll();
        modelMap.addAttribute("userList", userList);

        return "admin/users";
    }

    //用戶詳情
    @RequestMapping(value = "/admin/users/show/{id}", method = RequestMethod.GET)
    public String showUser(@PathVariable("id") Integer userId, ModelMap modelMap) {

        // 找到userId所表示的用户
        UserEntity userEntity = ryanclass.findOne(userId);

        modelMap.addAttribute("user", userEntity);
        return "admin/detail";
    }

    // 删除用户
    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer userId) {

        // 删除id為userId的用户
        ryanclass.delete(userId);
        // 立即刷新
        ryanclass.flush();
        return "redirect:/admin/users";
    }

}
