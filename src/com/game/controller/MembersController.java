package com.game.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.game.pojo.Members;
import com.game.service.MembersService;
import com.game.util.common.gameConstants;

@Controller
public class MembersController {
	/**
	 * 自动注入SysUserService
	 * */
	@Autowired
	@Qualifier("membersService")
	private MembersService membersService;
	
	
	/**
	 * 判断账号密码
	 * @return
	 */

	@RequestMapping(value = "/UsernameAndPassword")
	public ModelAndView UsernameAndPassword(@RequestParam("memberno") String memberno,@RequestParam("passpwd") String passpwd 
			,HttpSession session,ModelAndView mv){
		 if (session!=null)
	     {
		 session.removeAttribute(gameConstants.MEMBER_SESSION);
		 //session.invalidate();
	     }
		Members members=membersService.findMember(memberno,passpwd);
		if (members == null) {	
			// 设置登录失败提示信息
			mv.addObject("message", "登录名或密码错误!请重新输入");
			// 服务器内部跳转到登录页面
			mv.setViewName("forward:/login");
		}
		else{
			if(gameConstants.MEMBERS_STATE.equals(members.getStatus())){
		
			mv.addObject("message", "该账号已被注销");
			// 服务器内部跳转到登录页面
			mv.setViewName("forward:/login");
			}else{
			session.setAttribute(gameConstants.MEMBER_SESSION,members);
			// 客户端跳转到home页面
			mv.setViewName("redirect:/main");
			}
		}
		
	return mv;
		
	}
	
	/**
	 * 获取余额 balance
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/balance")
	@ResponseBody
	public Integer getBalance(HttpSession session){
		 Members members	=	(Members) session.getAttribute(gameConstants.MEMBER_SESSION); 
		 Integer Balance=membersService.findMemberBalance( members.getMid());
		return Balance;
	}
	
	
	@RequestMapping(value ="/register")
	public String register(String memberno,String passpwd){
		membersService.insertMemberno(memberno,passpwd);
		return null;
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
		   session.removeAttribute(gameConstants.MEMBER_SESSION);
		    session.invalidate();
	       }
	   mv.setViewName("forward:/login");
	   return mv;
	  }
}
