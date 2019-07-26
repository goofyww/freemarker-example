package com.demo.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class FreemarkerController {
	
	//freemarker取值,插值
	@RequestMapping("/free1")
	public ModelAndView free() {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("intVar", 100);
		mv.addObject("longVar", 1000000000000000000L);
		mv.addObject("doubleVar", 3.141592653d);
		mv.addObject("stringVar", "我是freemarker,是字符串!");
		mv.addObject("booleanVar", true);
		mv.addObject("dateVar1", new Date());
		mv.addObject("nullVar1", null);
		mv.addObject("nullVar", "我是空");
		return mv;
	}
	
}

//http://localhost:8080/free1
