package com.colla.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.colla.model.UserBlog;
import com.colla.services.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/signup")
	public ModelAndView gotoSupplier(@ModelAttribute("ust")UserBlog usd)
	{
		return new ModelAndView("signup");
	}
	
	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public ModelAndView saveSupplier(@ModelAttribute("ust")UserBlog ust)
	{
		userService.insertRow(ust);
		
		return new ModelAndView("signup").addObject("command", new UserBlog());
	}

}


