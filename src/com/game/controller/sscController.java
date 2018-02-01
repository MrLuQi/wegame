package com.game.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.pojo.Building;
import com.game.service.BuildingSercice;

/**
 * 
 * @author 杨佳伟 2018年1月6日下午4:08:10
 * @parms
 */
@Controller
public class sscController {
	@Autowired

	/**
	 * 
	 * @return 主页
	 */
	@RequestMapping(value = "/ssc")
	public String sscData() {
//System.out.println("111111");
		return null;

	}

}
