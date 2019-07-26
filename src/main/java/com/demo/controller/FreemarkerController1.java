package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class FreemarkerController1 {

	@RequestMapping("/free2")
	public ModelAndView free2() {
		ModelAndView mv = new ModelAndView();

		List<String> list = new ArrayList<String>();
		list.add("java");
		list.add("JavaScript");
		list.add("python");
		list.add("php");
		list.add("Html");
		
		mv.addObject("myList",list);
		
		return mv;
	}
}
