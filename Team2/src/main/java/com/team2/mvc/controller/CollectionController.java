package com.team2.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CollectionController {
	@RequestMapping("/collection-list")
	public String c_list() {
		return "collection/collection-list"; 
	}
	@RequestMapping("/collection-main")
	public String c_main() {
		return "collection/collection-main"; 
	}
	

}
