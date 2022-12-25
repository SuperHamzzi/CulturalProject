package com.team2.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team2.mvc.entity.Member;
import com.team2.mvc.mapper.MemberMapper;

@Controller
@Component
public class MemberController{
	
	@Autowired
	MemberMapper memberMapper;
	
	@RequestMapping("/memJoin.do")
	public String memJoin() {
		return "member/join";
	}
	@RequestMapping("/memRegisterCheck.do") //아이디 중복체크
	public @ResponseBody int memRegisterCheck(@RequestParam("ID") String ID) {
		Member m=memberMapper.registerCheck(ID);
		if(m!=null || ID.equals("")) {
			return 0; //이미 존재하는 회원, 입력불가
		}
		return 1; //사용가능한 아이디
	}
	@RequestMapping("/memRegisterCheckNickName.do") //닉네임 중복체크
	public @ResponseBody int memRegisterCheckNickName(@RequestParam("NICKNAME") String NICKNAME) {
		Member m=memberMapper.registerCheck(NICKNAME);
		if(m!=null || NICKNAME.equals("")) {
			return 0; //이미 존재하는 회원, 입력불가
		}
		return 1; //사용가능한 닉네임
	}
	@RequestMapping("/findId.do") //아이디 찾기
	public String findId() {
		return "member/find_id";
	}	
	@RequestMapping("/find.pw") //패스워드 찾기
	public String findPw() {
		return "member/find_pw";
	}
	@RequestMapping("/sign_in")
	public String sign_in() {
		return "member/sign_in";
	}
	@RequestMapping("/sign_up")
	public String sign_up() {
		return "member/sign_up";
	
}
	@RequestMapping("/memRegister.do")
	public String memRegister(Member m, String memPassword1, String memPassword2,
			                  RedirectAttributes rttr, HttpSession session) {
		if(m.getID()==null || m.getID().equals("") ||
		   memPassword1==null || memPassword1.equals("") ||
		   memPassword2==null || memPassword2.equals("") ||
		   m.getNAME()==null || m.getNAME().equals("") ||	
		   m.getNICKNAME()==null ||m.getNICKNAME().equals("")||
		   m.getEMAIL()==null || m.getEMAIL().equals("") ||
		   m.getROLE()==null || m.getROLE().equals("")) {
		   // 누락메세지를 가지고 가기? =>객체바인딩(Model, HttpServletRequest, HttpSession)
		   rttr.addFlashAttribute("msgType", "실패 메세지");
		   rttr.addFlashAttribute("msg", "모든 내용을 입력하세요.");
		   return "redirect:/memJoin.do";  // ${msgType} , ${msg}
		}
		if(!memPassword1.equals(memPassword2)) {
		   rttr.addFlashAttribute("msgType", "실패 메세지");
		   rttr.addFlashAttribute("msg", "비밀번호가 서로 다릅니다.");
		   return "redirect:/memJoin.do";  // ${msgType} , ${msg}
		}		
		// 회원을 테이블에 저장하기
		int result=memberMapper.register(m);
		if(result==1) { // 회원가입 성공 메세지
		   rttr.addFlashAttribute("msgType", "성공 메세지");
		   rttr.addFlashAttribute("msg", "회원가입에 성공했습니다.");
		   // 회원가입이 성공하면=>로그인처리하기
		   session.setAttribute("mvo", m); // ${!empty mvo}
		   return "redirect:/";
		}else {
		   rttr.addFlashAttribute("msgType", "실패 메세지");
		   rttr.addFlashAttribute("msg", "이미 존재하는 회원입니다.");
		   return "redirect:/memJoin.do";
		}		
	}
}
