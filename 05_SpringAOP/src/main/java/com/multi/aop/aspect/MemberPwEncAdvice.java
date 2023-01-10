package com.multi.aop.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import com.multi.aop.model.vo.Member;

@Component
@Aspect
public class MemberPwEncAdvice {

	@Before("execution(* com.multi.aop.service.MemberService.*Member(com.multi.aop.model.vo.Member))")
	public void passwordEnc(JoinPoint jp) throws Exception {
		System.out.println("@Before 암호화 모듈 호출됨, " + jp.getSignature().getName() +"()");
		
		if(jp.getArgs()[0] instanceof Member) {
			Member m = (Member)jp.getArgs()[0];
			if(m != null && m.getPw() != null) {
				m.setPw(SHA256Util.encData(m.getPw()));
			}
		}
	}
	
}
