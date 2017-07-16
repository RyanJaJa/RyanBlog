package com.blog.action;

import com.blog.entity.CoffeEntity;
import com.blog.entity.UserEntity;
import com.blog.form.CoffeForm;
import com.blog.repository.CoffeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Chia's JaJa on 2017/6/9.
 */
@Controller
public class CoffeeController {

    @Autowired
    CoffeeRepository coffeemodel;

    @Value("/ryan/coffee")
    private String viewPage;

    @ModelAttribute("coffee")
    public CoffeForm setCoffeForm() {
        return new CoffeForm();
    }

    //指向Form的所在位置
    @GetMapping("/ryan/coffee")
    public String registration(ModelMap modelMap) {
        return "ryan/coffee";
    }

    @PostMapping("/ryan/coffee")
    public String CoffeeOpt(@ModelAttribute("coffee") CoffeForm coffee, ModelMap modelMap) {

        CoffeEntity coffeeEntity = coffeemodel.findOne(coffee.getId());
        modelMap.addAttribute("coffeeList", coffeeEntity);

        return "ryan/coffee";
    }


}
