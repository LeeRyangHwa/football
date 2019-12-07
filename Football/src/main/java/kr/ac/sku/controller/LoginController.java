package kr.ac.sku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String index (Model model) {
		System.out.println("login.jsp");
		
		return "login/login";
	}
}
