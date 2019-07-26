package com.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.entity.User;

@Controller
@RequestMapping("/")
public class IndexController {

	@RequestMapping("/helloworld")
	public ModelAndView helloWorld() {
		
		ModelAndView mv=new ModelAndView("hello");
		
		mv.addObject("words", "hello你好,world!世界!");
		mv.addObject("userList", this.prepareUserList());
		
		return mv;
	}
	
	public List<User> prepareUserList(){
		List<User> list=new ArrayList<>();
		for(int i=0;i<5;i++) {
			User item = new User();
			item.setName("用户"+i);
			item.setBirthday(new Date());
			list.add(item);
		}
		return list;
	}
	
}
