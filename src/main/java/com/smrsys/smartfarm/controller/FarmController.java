package com.smrsys.smartfarm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/farm")
public class FarmController {
	
	@GetMapping("/monitoring")
	public ModelAndView getMonitoring() {
		return new ModelAndView("/farm/monitoring");
	}
	@GetMapping("/controlling")
	public ModelAndView getControlling() {
		return new ModelAndView("/farm/controlling");
	}
	@GetMapping("/setting")
	public ModelAndView getSetting() {
		return new ModelAndView("/farm/setting");
	}
}
