package com.multi.mybatis.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.mybatis.member.model.service.MemberService;
import com.multi.mybatis.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
//	@Qualifier("memberService") // 지금은 생략 가능, 이유 : MemberService 단일 class라서 가능하다.
	private MemberService service;
	
	@RequestMapping("/member/index.do")
	public String index() {
		return "member/index";
	}
	
	// 회원가입
	@RequestMapping("/member/memberEnroll.do")
	public String memberEnroll(Model model, Member m) {
		System.out.println("가입 정보 : " + m);
		int result = service.joinMember(m);
		
		if(result > 0) {
			model.addAttribute("msg", "회원 가입에 성공하였습니다.");
			return "/member/index";
		}else{
			return "redirect:error.do";
		}
	}
	
	// 회원 목록 조회
	@RequestMapping("/member/memberList.do")
	String memberList(Model model) {
		List<Member> list = service.getMemberList();
		model.addAttribute("list", list);
		return "/member/memberList";
	}
	
	//http://localhost/mybatis/member/memberSearch.do?id=test12
	// 단일 탐색
	@RequestMapping("/member/memberSearch.do")
	String memberSearch(Model model, String id) {
		Member member = service.searchMember(id);
		if(member != null) {
			model.addAttribute("member", member);
			return "/member/memberView";
		}else {
			return "redirect:error.do";
		}
	}
	
	// http://localhost/mybatis/member/memberDel.do
	// 멤버 탈퇴
	@RequestMapping("/member/memberDel.do")
	public String memberDel(Model model, String id) {
		int result = service.deleteMember(id);
		
		if(result > 0) {
			model.addAttribute("msg","회원 탈퇴에 성공하였습니다.");
			return "/member/index";
		}else {
			return "redirect:error.do";
		}
	}
	
	// 에러 페이지
	@RequestMapping("/member/error.do")
	public String erorr() {
		return "/common/error";
	}
}



