package com.smrsys.smartfarm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RootController {
	
	@GetMapping("/")
	public ModelAndView getIndex() {
		return new ModelAndView("/farm/farmland");
	}
}
