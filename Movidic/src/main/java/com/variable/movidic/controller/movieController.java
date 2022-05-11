package com.variable.movidic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/movie")
public class movieController {

	
	@RequestMapping(value="/category", method=RequestMethod.GET)
	public String categoryPage() {
		
		return "movie/category";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detailPage() {
		return "movie/detail";
	}
}