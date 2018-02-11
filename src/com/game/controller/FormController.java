package com.game.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.game.pojo.Members;
import com.game.service.MembersService;
import com.game.util.common.gameConstants;

/**
 * 动态页面跳转控制器
 */
@Controller
public class FormController {

	@RequestMapping(value = "/{formName}")
	public String loginForm(@PathVariable String formName) {
		// 动态跳转页面
		
		return formName;
	}
}
