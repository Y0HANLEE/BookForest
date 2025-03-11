package org.mall.controller;

import org.mall.domain.UserVO;
import org.mall.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class UserController {
	@Autowired
	private UserService service;
	
	//회원가입페이지 진입
	@GetMapping("/join")
	public void join() {
		log.info("UserController...... /user/join");
	}
	//회원가입 메서드
	@PostMapping("/join")
	public String joinAction(UserVO user) {
		log.info("UserController...... /user/join Action");
		service.insert(user);
		
		return "redirect:/";
	}
	
	//ID중복체크, ajax
	@PostMapping("/chkId")
	@ResponseBody
	public int chkId(String userid) {
		log.info("UserController...... /user/chkId");
		if(service.chkId(userid) == 1) {
			return 1;
		} else {
			return 0;
		}
	}
	
	//로그인페이지 진입
	@GetMapping("/login")
	public void login() {
		log.info("UserController...... /user/login");
	}
	//로그인 메서드
	@PostMapping("/login")
	public String loginAction() {
		log.info("UserController...... /user/login Action");
		return "redirect:/home";
	}
	
	
}
