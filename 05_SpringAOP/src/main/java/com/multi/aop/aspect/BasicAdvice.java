package com.multi.aop.aspect;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

import com.multi.aop.model.vo.Member;

@Component // bean으로 생성시키기 위한 어노테이션
@Aspect // AOP 사용시, 해당 클래스가 advice 기능을 알리는 어노테이션
public class BasicAdvice {
	// AOP 클래스의 메소드 단위로 컨트롤이 가능하다.
	
	/*
	 *  AOP @Pointcut 내부 문법 정리
		execution(public Integer com.edu.aop.*.*(*))
		 - com.edu.aop 패키지에 속해있고, 파라미터가 1개인 모든 메서드, 리턴값은 Integer
		
		execution(* com.edu..*.get*(..))
		 - com.edu 패키지 및 하위 패키지에 속해있고, 이름이 get으로 시작하는 파라미터가 0개 이상인 모든 메서드 
		
		execution(* com.edu.aop..*Service.*(..))
		 - com.edu.aop 패키지 및 하위 패키지에 속해있고, 이름이 Service로 끝나는 인터페이스의 파라미터가 0개 이상인 모든 메서드
		
		execution(* com.edu.aop.BoardService.*(..))
		 - com.edu.aop.BoardService class에 속한 파마리터가 0개 이상인 모든 메서드
		
		execution(* some*(*, *))
		 - 메소드 이름이 some으로 시작하고 파라미터가 2개인 모든 메서드

	     * : 와일드 카드
	 */
	
	@Pointcut("execution(* com.multi.aop.service.MemberService.*(..))")
	public void allPointCut(){
		// 동작하지 않는 부분!! 빈칸으로 남겨야한다.
		System.out.println("동작하지 않는 코드");
	}
	
	
	@Before("allPointCut()")
	public void printBeforeLog(JoinPoint jp) {
		System.out.println("@Before : " + jp.getSignature().getName() + "() 호출됨");
		System.out.println("@Before arg : " + Arrays.toString(jp.getArgs()));
	}
	

//	@After : 대상 메소드가 실행되고 이후 호출되는 advice
//	@After("allPointCut()")
	@After("execution(* com.multi.aop.service.MemberService.*(..))")
	public void printAfterLog(JoinPoint jp) {
		System.out.println("@After : " + jp.getSignature().getName() +"() 호출됨");
	}
	
	//@AfterReturning : 메소드가 호출된 이후에 리턴 될때 호출되는 advice, 대상 메소드가 종료되기 이전에 호출
	// After보다 빨리 호출되고, 리턴값을 가지고 올수 있다. // 예외가 발생한 경우 호출되지 않음★★★★★
//	public int test() {
//		..
//		..
//		return 1; // @AfterReturning이 호출되는 시점, 함수 끝나기 전에
//	}// @After 호출되는 곳. 함수 끝나고
	@AfterReturning(pointcut = "allPointCut()", returning = "returning")
	public void printAfterReturningLog(JoinPoint jp, Object returning) {
		System.out.println("@AfterReturning : " + jp.getSignature().getName() +"() 호출됨");
		
		if(returning != null && returning instanceof Member ) {
			Member m = (Member)returning;
			System.out.println("@AfterReturning returning : " + m);
		}
	}
	
	// @AfterThrowing : 메소드에서 예외가 발생하여 에러가 던져졌을때 호출되는 메소드
	@AfterThrowing(pointcut = "allPointCut()", throwing = "exception")
	public void printErrorLog(JoinPoint jp, Exception exception) {
		System.out.println("@AfterThrowing : " + jp.getSignature().getName() +"() 호출됨");
		exception.printStackTrace();
	}
	
	
	// @Around : 대상 메소드가 호출되기 전과 후에 처리할수 있는 advice
	@Around("allPointCut()")
	public Object aroundAdvice(ProceedingJoinPoint pjp) throws Throwable {
		// 실행 전
		System.out.println("@Around 실행 전 : " + pjp.getSignature().getName() +"() 호출됨");
		
		StopWatch watch = new StopWatch();
		watch.start();
		
		// 사용자의 메소드를 호출(실행)하고 리턴값을 obj로 받아서 반화하는 구간!!
		Object obj = pjp.proceed(); // 사용자 메소드 실행!

		watch.stop();
		
		// 실행 후
		System.out.println("@Around 실행 후: " + pjp.getSignature().getName() +"() 호출됨");
		System.out.println("@Around 메소드 실행 시간 : " + watch.getTotalTimeMillis() +"ms초");
		System.out.println("@Around 메소드 실행 시간 : " + watch.getTotalTimeNanos() +"ns초");
		return obj;
	}
	
//	@Around 실행 전 : selectOneMember() 호출됨
//	@Before : selectOneMember() 호출됨
//	@Before arg : [Member(no=0, id=admin, pw=1234, name=null, age=0)]
//	selectOneMember Call!! member : Member(no=0, id=admin, pw=1234, name=null, age=0)
//	@AfterReturning : selectOneMember() 호출됨
//	@AfterReturning returning : Member(no=0, id=admin, pw=1234, name=홍길동, age=27)
//	@After : selectOneMember() 호출됨
//	@Around 실행 후: selectOneMember() 호출됨
	
//	lazy loding 시간 - 실제 동작에 필요한 객체를 생성!
//	@Around 메소드 실행 시간 : 44ms초
//	@Around 메소드 실행 시간 : 44988300ns초

//	@Around 메소드 실행 시간 : 0ms초
//	@Around 메소드 실행 시간 : 219100ns초
	
}
