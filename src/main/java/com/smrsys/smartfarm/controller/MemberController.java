package com.smrsys.smartfarm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	@GetMapping("/login")
	public ModelAndView loginPage() {
		return new ModelAndView("/member/login");
	}
	
}
