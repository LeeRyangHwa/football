package kr.ac.sku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MatchingController {
	
	@RequestMapping("/matching")
	public String ground (Model model) {
		System.out.println("matching.jsp");
		
		return "matching/matching";
	}
}
