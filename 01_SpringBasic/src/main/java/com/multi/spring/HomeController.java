package com.multi.spring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * ■ Spring MVC 개념 정리
 *  - Spring은 서블릿 대비 어노테이션(@Annotation)의 활용도 높아졌다.
 *  - Spring 프레임워크는 상속 설계를 지양하고, interface 기반 설계가 권장된다.
 *    -> Dependency injection(의존성 주입)을 통해 객체를 직접 생성하지 않고 Spring에서 생성 주입시키기 편하기 위해 
 *    -> new 지양하고 프레임워크에서 대신 생성하는데, 장점 : 의존성이 줄고, 메모리 관리가 우수하다.
 *  - Spring MVC에서는 철저하게 MVC2 패턴을 활용하도록 설계 되어있다.
 *    -> Request(URL+파라메터) -> Controller(Java객체) + Model -> View(JSP or Thymleaf)
 *  - 서블릿 Class 단위로 URL을 맵핑 했던 기능이 @Controller에 핸들러 메소드(Handler method)로 이관
 *    -> Spring은 핸들러 메소드로 URL 맵핑 가능, 상위 패키지(ex: Member, Board)의 세부 기능을 하나의 Class에서 설계 
 *  - WEB-INF구조(보안 기능)으로 인해 URL로 JSP, HTML에 직접 접근이 불가하고, 반드시 Controller->View 접근이 필요
 *  - ViewResolver를 통해 View로 접근하는 URL 단축 시킬수 있다.
 *    -> ex) return "home" -> "/WEB-INF/views/home.jsp"로 jsp 페이지가 호출 됨
 *  - return의 경우 (=View name을 문자열 지정), forward로 전달 되도록 설계됨 -> 파라메터 물고 전달됨!
 *  - 만일 redirect로 다른 핸들러 메소드를 호출하기 위해선 return 값 앞에 'redirect:' + URL을 붙이면 된다.
 *    -> ex) home2.do redirect로 전달하는 방법 : "redirect:home2.do"
 * 
 */

// @Controller : 컨트롤러임을 알리는 어노테이션, Servlet Class의 기능을 대체함
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	// 핸들러 메소드 (Handler Method)
	// - URL 맵핑이 되어 있는 메소드를 지칭, 특정 단위 하나의 기능을 담당하는 것이 일반적
	//   ex)
	//   MemberController -> login.do, logout.do, join.do ... 핸들러 메소드 필요
	//   BoardController -> list.do, detailView.do, write.do, update.do, delete.do... 핸들러 메소드 필요
	// - return 값이 문자열일 경우 기본적으로 forward 되는 jsp 페이지를 지칭함
	// - 맵핑되는 url은 주로 '.do'를 붙여서 특정 행위에 대한 처리를 담당 시킨다. -> 관례적 표현 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		/*
		 * <beans:bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
		<beans:property name="prefix" value="/WEB-INF/views/" />
		<beans:property name="suffix" value=".jsp" />
			</beans:bean>
		 */
		// /WEB-INF/views/home.jsp로 변환되는 코드
		return "home";
	}
	
	// URL을 맵핑시키는 가장 간단한 방법
	@RequestMapping("home2.do")
	public String home2() {
		return "home2"; // /WEB-INF/views/home2.jsp로 forward로 전달됨
	}

	// 이런것도 돌아간다...
	// home2의 메소드 이름 -> 가장 유사한 jsp로 연결한다.
//	@RequestMapping("home2.do")
//	public void home2() {}
	
	
	// Redirect로 home2.do로 전달하는 방법
	@RequestMapping("home3.do")
	public String home3() {
//		return "home2.do"; // /WEB-INF/views/home2.do.jsp로 전달됨 -> 주소가 왜곡 되서 NG
		return "redirect:home2.do"; // redirect로 전달되는 방법
	}
	
	
}

















