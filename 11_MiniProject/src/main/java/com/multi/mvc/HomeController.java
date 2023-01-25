package com.multi.mvc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.api.naver.NaverSearchAPI;
import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.news.model.vo.News;
import com.multi.mvc.shop.model.vo.Product;

@Controller
public class HomeController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session,
			@RequestParam Map<String, String> param) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Member loginMember = memberService.login("admin", "1212");
		session.setAttribute("loginMember", loginMember);
		
		if(param.get("init") != null) {
			int result = initDB();
			model.addAttribute("msg", "초기화 결과 : " + result);
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		return "home";
	}
	
	private int initDB() {
		int result = 0;
		List<Product> plist = new ArrayList<>();
		plist.addAll(NaverSearchAPI.getProductList("기계식 키보드", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("무접점 키보드", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("무선 키보드", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("유선 키보드", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("로지텍 키보드", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("게이밍 키보드", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("유선 마우스", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("무선 마우스", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("게이밍 마우스", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("로지텍 마우스", 20, 1));
		Collections.shuffle(plist);
		
		for(Product p : plist) {
			System.out.println(p);
		}
		result += plist.size();
		
		List<News> nlist = new ArrayList<>();
		nlist.addAll(NaverSearchAPI.getNewsList("마우스", 100, 1));
		nlist.addAll(NaverSearchAPI.getNewsList("마우스", 100, 2));
		nlist.addAll(NaverSearchAPI.getNewsList("게이밍 마우스", 20, 1));
		nlist.addAll(NaverSearchAPI.getNewsList("키보드", 20, 1));
		nlist.addAll(NaverSearchAPI.getNewsList("게이밍 키보드", 20, 1));
		nlist.addAll(NaverSearchAPI.getNewsList("로지텍 신제품", 20, 1));
		Collections.shuffle(nlist);
		
		for(News n : nlist) {
			System.out.println(n);
		}
		result += nlist.size();
		
		return result;
	}

	public void test() {
		
		
	}
	
}
