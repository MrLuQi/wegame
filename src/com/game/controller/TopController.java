package com.game.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * top部分
 * @author LUQI
 *
 */

@Controller
public class TopController {
	/**
	 * 未结明细
	 * @return
	 */
	@Autowired
	@RequestMapping(value = "/alone")
	public String alone(){
		return "alone";
	}
	/**
	 * 今日已结
	 * @return
	 */
	@Autowired
	@RequestMapping(value = "/day")
	public String day(){
		return "day";
	}

	/**
	 * 报表查询
	 * @return
	 */
/*	@Autowired
	@RequestMapping(value = "/alone")
	public String alone(){
		return "alone";
	}*/
	/**
	 * 开奖结果
	 * @return
	 */
	@Autowired
	@RequestMapping(value = "/result")
	public String result(){
		return "result";
	}
	/**
	 * 个人资讯
	 * @return
	 */
	@Autowired
	@RequestMapping(value = "/information")
	public String information(){
		return "information";
	}
	/**
	 * 修改密码
	 * @return
	 */
	@Autowired
	@RequestMapping(value = "/change")
	public String change(){
		return "change";
	}
	/**
	 * 游戏规则
	 * @return
	 */
/*	@Autowired
	@RequestMapping(value = "/alone")
	public String alone(){
		return "alone";
	}*/
	/**
	 * 更换皮肤
	 * @return
	 */
/*	@Autowired
	@RequestMapping(value = "/alone")
	public String jsks(){
		return "alone";
	}*/
}
