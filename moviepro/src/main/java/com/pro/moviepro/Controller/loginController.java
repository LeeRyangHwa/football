package com.pro.moviepro.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class loginController {
    @RequestMapping(value = "/login")
    public String login(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        System.out.println("session invalidate");

        return "/login/login";
    }

}
