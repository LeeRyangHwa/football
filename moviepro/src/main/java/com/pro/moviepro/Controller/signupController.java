package com.pro.moviepro.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class signupController {

    @RequestMapping(value = "/signup")
    public String login(){
        return "/signup/signup";
    }
}
