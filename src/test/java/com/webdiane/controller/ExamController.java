package com.webdiane.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webdiane.model.ProductVO;

@Controller
@RequestMapping("/exam") // "/exam" uri로 호출되면 현재의 컨트롤러가 동작하도록 매핑
public class ExamController 
{
   @RequestMapping("/outputProduct") // "/exam/outputProduct" uri로 호출되면 동작하도록 매핑
   public void outputProduct(Model model)
   {
      System.out.println("outputProduct().......");
      ProductVO exproduct = new ProductVO("240704_1", "새우깡", 5, 2000, "손이가요 손이가~");
      System.out.println(exproduct.toString());
      
      model.addAttribute("product", exproduct); // 바인딩 한 것. 어디에 담아야 하나? model
      
      // '/WEB-INF/views/exam/outputProduct.jsp'
   }
   
   @RequestMapping("inputProduct") // '/exam/inputProduct'가 get방식으로 호출되었을 때, 아래의 view페이지를 출력한다.
   public void inputProduct()
   {
	   // '/WEB-INF/views/exam/inputProduct.jsp'
   }
   
   
   /*
   //@RequestParam을 이용한 매개변수 수집 방법
   @RequestMapping(value="/inputProduct", method=RequestMethod.POST)
   public void saveProduct
   	(
   			@RequestParam("productNo") String productNo, 
   			@RequestParam("productName") String productName,  
   			@RequestParam("qty") int qty,  
   			@RequestParam("price") int price,  
   			@RequestParam("productNickName") String productNickName
   			
   	)
   {
	   // '/exam/inputProduct'가 post방식으로 호출될 때 현재 메서드가 맵핑되도록   
	   System.out.println("saveProduct()호출됨");
	   System.out.println("제품번호 : " + productNo);
	   ProductVO p = new ProductVO(productNo, productName, qty, price, productNickName);
	   System.out.println(p.toString());
   }
   */
   // 파라미터를 Spring framework가 자동수집하여 객체로 만들어준다.
   @RequestMapping(value="/inputProduct", method=RequestMethod.POST)
   public String saveProduct(ProductVO p, RedirectAttributes rediraAttributes) 
   {
	   System.out.println("saveProduct()호출됨");
//	   ProductVO p = new ProductVO(productNo, productName, qty, price, productNickName);
	   System.out.println(p.toString());
	   String msg = null;
	   if(p!=null)
	   {
		   msg = "success";
	   }
	   
	   rediraAttributes.addAttribute("status", msg); // 페이지가 넘어갈 때 바인딩된 객체를 들고 간다
	   
	   return "redirect:/";
   }
}
