package com.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	
	@RequestMapping("/")
	@ResponseBody
	public ModelAndView homePage() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/employeeDetails")
	@ResponseBody
	public ModelAndView detailsPage() {
		return new ModelAndView("employeeDetails");
	}
}
