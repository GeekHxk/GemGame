package com.gem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {
	
	@RequestMapping("/companyAdminProfile")
	public String companyIndex(){
		return "CompanyAdminprofile";
	}
}
