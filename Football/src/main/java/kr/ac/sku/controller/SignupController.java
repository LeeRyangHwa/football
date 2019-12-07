package kr.ac.sku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignupController {
	
	@RequestMapping("/signup")
	public String index (Model model) {
		System.out.println("signup.jsp");
		
		return "signup";
	}
}
