package com.team2.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {	
	@RequestMapping("/main") //주소창에 주소 + /boardMain이라 입력하면 webapp-WEBINF-views-board-board로 이동합니다.
	public String notice() {
		return "board/board-notice"; //notice가 메인이랑 똑같음
	}
	@RequestMapping("/board-best")
	public String best() {
		return "board/board-best";
	}
	@RequestMapping("/board-customer")
	public String customer() {
		return "board/board-customer";
	}
	@RequestMapping("/board-free")
	public String free() {
		return "board/board-free";
	}
	@RequestMapping("/board-question")
	public String question() {
		return "board/board-question";
	}
	@RequestMapping("/board-write") //작성하기
	public String write() {
		return "board/board-write";
	}
	@RequestMapping("/board-detail") //작성글 상세보기
	public String detail() {
		return "board/board-detail";
	}
	
	

}
