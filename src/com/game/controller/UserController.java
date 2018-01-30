package com.game.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.game.pojo.User;
import com.game.service.UserService;
import com.game.util.common.gameConstants;

@Controller
public class UserController {

	/**
	 * 自动注入SysUserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	/**
	 * 判断账号密码
	 * @return
	 */

	@RequestMapping(value = "/UsernameAndPassword")
	public ModelAndView UsernameAndPassword(@RequestParam("loginname") String loginname,@RequestParam("password") String password 
			,HttpSession session,ModelAndView mv){
		 if (session!=null)
	     {
		 session.removeAttribute(gameConstants.USER_SESSION);
		 //session.invalidate();
	     }
		User user=userService.findUser(loginname,password);
		//User userState=userService.findUserState(loginname,password);
		if (user == null) {	
			// 设置登录失败提示信息
			mv.addObject("message", "登录名或密码错误!请重新输入");
			// 服务器内部跳转到登录页面
			mv.setViewName("forward:/login");
		}
		else{
			if(gameConstants.USER_STATE==user.getState()){
		
			mv.addObject("message", "该账号已被注销");
			// 服务器内部跳转到登录页面
			mv.setViewName("forward:/login");
			}else{
			session.setAttribute(gameConstants.USER_SESSION,user);
			// 客户端跳转到home页面
			mv.setViewName("redirect:/main");}
		}
		
	return mv;
		
	}
	/**
	 * 退出登录
	 * @param session
	 * @param mv
	 * @return
	 */
	@RequestMapping(value="/toLogout")
  public ModelAndView  toLogout( HttpSession session,ModelAndView mv)
	  {
	   if (session!=null)
	       {
		   session.removeAttribute(gameConstants.USER_SESSION);
		    session.invalidate();
	       }
	   mv.setViewName("forward:/login");
	   return mv;
	  }
}
