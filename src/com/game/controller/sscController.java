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
 * @author ���ΰ 2018��1��6������4:08:10
 * @parms
 */
@Controller
public class sscController {
	@Autowired

	/**
	 * 
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/ssc")
	public String sscData() {
//System.out.println("111111");
		return null;

	}

}
