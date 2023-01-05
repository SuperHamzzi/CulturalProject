package com.multi.aop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.aop.model.vo.Member;
import com.multi.aop.service.MemberService;

/**
 * @Controller 설계 Tip
 *  - 파라메터를 VO로 통일하여 front단의 인자와 name을 완벽하게 일치시켜 mapping을 최소화 할것 ★★★강사 추천
 *    -> Member VO를 사용해서 web form name과 일치 시킬 것.
 *  - Map 패턴을 사용하는 경우는 모든 처리를 DB단 코드(Mybatis, 프로시저)에서 처리하도록 설계한다.
 *    -> java단 처리가 불필요 하다고 생각할때 극단적인 설계
 *    -> 유지보수 할때 어려움을 겪음. DB 컬럼과 Front단 네이밍 일치가 필요하다.
 */
@Controller
public class MemberController {
	
	@Autowired
	@Qualifier("memberService")
	MemberService service;

	@RequestMapping("/loginPage.do")
	public String loginPage() {
		return "member/login"; // ./webapp/views/member/login.jsp
	}
	
	@RequestMapping("/joinPage.do")
	public String joinPage() {
		return "member/join";
	}
	
	@RequestMapping("/memberList.do")
	public String memberList() {
		return "member/list";
	}
	
	@RequestMapping("/login.do")
	public String login(HttpSession session, Member m) throws IllegalAccessException {
		Member member = service.selectOneMember(m);
		
		if(member != null) {
			session.setAttribute("loginMember", member);
			return "member/loginSuccess";
		}else {
			return "member/loginFailed";
		}
	}
	@RequestMapping("/join.do")
	public String join(Member m) {
		int result = service.insertMember(m);
		
		if(result > 0) {
			return "member/joinSuccess";
		}else {
			return " member/joinFailed";
		}
	}
	
	//AJAX 설계 진행
	
	// ID 중복 확인하는 메소드(AJAX 버전)
	@ResponseBody // return 값이 view 이름이 아닌 문자열이나 몸통이 될대 사용하는 어노테이션
	@RequestMapping(value="/checkId.do",produces= "text/html; charset=utf-8:")
	public String checkId(Member m) throws IllegalAccessException{
		Member member = service.selectOneMember(m);
		System.out.println("check member :" +m);
		if(member != null) {
			return "1";
		}else {
			return "0"; 
		}
	}
}


















