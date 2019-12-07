package kr.ac.sku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyteamController {
	
	@RequestMapping("/myteam")
	public String ground (Model model) {
		System.out.println("myteam.jsp");
		
		return "myteam/myteam";
	}
}