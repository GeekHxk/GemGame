package com.gem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {
	
	@RequestMapping("/")
	public String getIndex(){
		return "Login";
	}
	
	@RequestMapping("/login")
	public String getUserIndex(String login, String password){
		
		return "/";
	}
}

