package com.demo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class FreemarkerController2 {

	@RequestMapping(value = "free3", method = RequestMethod.GET)
	public ModelAndView free3() {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("Java", "你好Java");
		map.put("address", "北京");
		map.put("身高", 172);
		map.put("money", 100.5);
		
		mv.addObject("map", map);
		
		return mv;
	}
}
