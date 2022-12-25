package com.team2.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	@RequestMapping("/event-main")
	public String e_main() {
		return "event/event-main"; 
	}
	@RequestMapping("/event-detail")
	public String detail() {
		return "event/event-detail"; 
	}
}
