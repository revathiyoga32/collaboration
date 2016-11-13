package com.colla.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MainController {
	public MainController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("inside Collabration controller");
	}	

	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	
	@RequestMapping("signin")
 	public String gotosignin() {
 		return "signin";
 	}
}
