package kr.ac.sku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroundController {
	
	@RequestMapping("/ground")
	public String ground (Model model) {
		System.out.println("ground.jsp");
		
		return "ground/ground";
	}
	
}

	
