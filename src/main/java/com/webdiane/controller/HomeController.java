package com.webdiane.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller // 아래의 클래스가 컨트롤러 객체임을 명시
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class); // 로그(개발자가 볼 수 있는 메시지)를 남길 수 있는 객체
	

	@RequestMapping(value = "/", method = RequestMethod.GET) // uri에 "/"가 get방식으로 요청되면 아래의 메서드가 동작하도록 지정
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		System.out.println("home메서드 실행됨");
		
		// 현재 날짜 시간 객체 생성
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date); // 날짜, 시간을 문자열로 변경
		
		// model : 뷰단으로 이동할 때 전용 객체(리퀘스트 안 써도 됨)
		model.addAttribute("serverTime", formattedDate ); // 뷰단으로 전송하기위해 모델객체에 바인딩시킨 문장
		
		return "home"; // 포워딩될 뷰단의 주소 home.jsp
	}
	
	@RequestMapping("/ex1") 	// "ex1"이 get방식으로 요청되면 아래 메서드가 동작하도록get방식이면 value만 적어도 됨
	public String examView(Model model) // 바인딩을 하려면 모델 객체를 받아와야함
	{
		System.out.println("examView 메서드 동작함.......");
		model.addAttribute("name", "둘리");
		return "ex1"; // 포워딩될 뷰단의 주소 : /WEB-INF/views/ex1.jsp
	}
	
	@RequestMapping(value="/ex2", method= RequestMethod.GET) // 메서드 방식은 생략가능하며, 생략될 경우는 GET방식
	public void exam2View(Model model)
	{
		System.out.println("exam2View method working......"); // 반환값 타입이 void일 경우엔 mapping된 주소.jsp 파일을 찾게 된다 (/WEB-INF/views/하위에서) 
	}
	
	@RequestMapping("/ex3")
	public String examRedirect()
	{
		System.out.println("examRedirect .............");
		
		return "redirect:/"; // redirect : 페이지이동 기존에 있던 코드 재활용
		
	}
	
	// Q. ex4를 get방식으로 요청하면 examView()가 호출되도록 리다이렉트되는 메서드를 examRedirect2()라는 이름으로 작성해보세요
	@RequestMapping("/ex4")
	public String examRedirect2()
	{
		return "redirect:/ex1";
	}//리다이렉트(이미 만들어진 페이지 재호출)가 아니면 포워드
	
	@RequestMapping("/ex5")
	public ModelAndView exModelAndView()
	{
		//ModelAndView객체 : 출력될 view단의 이름과, 출력데이터 (model)을 가지고 있는 객체
		System.out.println("exModelAndView()....");
		
		
		Map model = new HashMap<String, String>();
		model.put("name", "둘리");
		
		/*
		ModelAndView m = new ModelAndView();
		m.setViewName("ex5");
		m.addObject("name","둘리");
		*/
		return new ModelAndView("ex5", model);
	}
}


