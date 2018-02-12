package com.game.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.pojo.JsonBoCai;
import com.game.pojo.Orders;
import com.game.service.JsksService;

@Controller
public class SscController {
	/**
	 * 自动注入JsksService
	 * */
	
	@Autowired
	@Qualifier("jsksService")
	private JsksService jsksService;
	/**
	 * 重庆时时彩两面玩法投注数据封装
	 * @return 主页
	 */
	@RequestMapping(value = "/sscLMdata")
	public String sscLMdata(HttpServletRequest request, HttpServletResponse response,String times,String Periodno) {
		// 时时彩中两面 玩法 的投注数据
				JsonBoCai jsonBoCai = new JsonBoCai();
				jsonBoCai.setCategory("SSC");   //重庆时时彩
				jsonBoCai.setSubCategory("LM");   //两面玩法
				//重庆时时彩两面玩法投注数据封装
				 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //总和
				 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //大
				 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //小
				 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //单 
				 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //双 
				 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //龙虎和		
				 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //龙
				 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //虎
				 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //和
				 Map<String,Integer>  wwList=new HashMap<String,Integer>(); //万位
				 wwList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //大
				 wwList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //小
				 wwList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //单 
				 wwList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //双
				 wwList.put("ZERO", (request.getParameter("ZERO1")=="")?0:Integer.parseInt(request.getParameter("ZERO1")));    //0
				 wwList.put("ONE", (request.getParameter("ONE1")=="")?0:Integer.parseInt(request.getParameter("ONE1")));  //1
				 wwList.put("TWO", (request.getParameter("TWO1")=="")?0:Integer.parseInt(request.getParameter("TWO1")));   //2
				 wwList.put("THREE", (request.getParameter("THREE1")=="")?0:Integer.parseInt(request.getParameter("THREE1")));  //3
				 wwList.put("FOUR", (request.getParameter("FOUR1")=="")?0:Integer.parseInt(request.getParameter("FOUR1")));    //4
				 wwList.put("FIVE", (request.getParameter("FIVE1")=="")?0:Integer.parseInt(request.getParameter("FIVE1")));  //5
				 wwList.put("SIX", (request.getParameter("SIX1")=="")?0:Integer.parseInt(request.getParameter("SIX1")));   //6
				 wwList.put("SEVEN", (request.getParameter("SEVEN1")=="")?0:Integer.parseInt(request.getParameter("SEVEN1")));  //7
				 wwList.put("EIGHT", (request.getParameter("EIGHT1")=="")?0:Integer.parseInt(request.getParameter("EIGHT1")));  //8
				 wwList.put("NINE", (request.getParameter("NINE1")=="")?0:Integer.parseInt(request.getParameter("NINE1")));  //9
				 Map<String,Integer>  qwList=new HashMap<String,Integer>(); //千位
				 qwList.put("DA", (request.getParameter("DA2")=="")?0:Integer.parseInt(request.getParameter("DA2")));    //大
				 qwList.put("XIAO", (request.getParameter("XIAO2")=="")?0:Integer.parseInt(request.getParameter("XIAO2")));  //小
				 qwList.put("DAN", (request.getParameter("DAN2")=="")?0:Integer.parseInt(request.getParameter("DAN2")));   //单 
				 qwList.put("SHUANG", (request.getParameter("SHUANG2")=="")?0:Integer.parseInt(request.getParameter("SHUANG2")));  //双
				 qwList.put("ZERO", (request.getParameter("ZERO2")=="")?0:Integer.parseInt(request.getParameter("ZERO2")));    //0
				 qwList.put("ONE", (request.getParameter("ONE2")=="")?0:Integer.parseInt(request.getParameter("ONE2")));  //1
				 qwList.put("TWO", (request.getParameter("TWO2")=="")?0:Integer.parseInt(request.getParameter("TWO2")));   //2
				 qwList.put("THREE", (request.getParameter("THREE2")=="")?0:Integer.parseInt(request.getParameter("THREE2")));  //3
				 qwList.put("FOUR", (request.getParameter("FOUR2")=="")?0:Integer.parseInt(request.getParameter("FOUR2")));    //4
				 qwList.put("FIVE", (request.getParameter("FIVE2")=="")?0:Integer.parseInt(request.getParameter("FIVE2")));  //5
				 qwList.put("SIX", (request.getParameter("SIX2")=="")?0:Integer.parseInt(request.getParameter("SIX2")));   //6
				 qwList.put("SEVEN", (request.getParameter("SEVEN2")=="")?0:Integer.parseInt(request.getParameter("SEVEN2")));  //7
				 qwList.put("EIGHT", (request.getParameter("EIGHT2")=="")?0:Integer.parseInt(request.getParameter("EIGHT2")));  //8
				 qwList.put("NINE", (request.getParameter("NINE2")=="")?0:Integer.parseInt(request.getParameter("NINE2")));  //9
				Map<String,Integer>  bwList=new HashMap<String,Integer>(); //百位
				 bwList.put("DA", (request.getParameter("DA3")=="")?0:Integer.parseInt(request.getParameter("DA3")));    //大
				 bwList.put("XIAO", (request.getParameter("XIAO3")=="")?0:Integer.parseInt(request.getParameter("XIAO3")));  //小
				 bwList.put("DAN", (request.getParameter("DAN3")=="")?0:Integer.parseInt(request.getParameter("DAN3")));   //单 
				 bwList.put("SHUANG", (request.getParameter("SHUANG3")=="")?0:Integer.parseInt(request.getParameter("SHUANG3")));  //双
				 bwList.put("ZERO", (request.getParameter("ZERO3")=="")?0:Integer.parseInt(request.getParameter("ZERO3")));    //0
				 bwList.put("ONE", (request.getParameter("ONE3")=="")?0:Integer.parseInt(request.getParameter("ONE3")));  //1
				 bwList.put("TWO", (request.getParameter("TWO3")=="")?0:Integer.parseInt(request.getParameter("TWO3")));   //2
				 bwList.put("THREE", (request.getParameter("THREE3")=="")?0:Integer.parseInt(request.getParameter("THREE3")));  //3
				 bwList.put("FOUR", (request.getParameter("FOUR3")=="")?0:Integer.parseInt(request.getParameter("FOUR3")));    //4
				 bwList.put("FIVE", (request.getParameter("FIVE3")=="")?0:Integer.parseInt(request.getParameter("FIVE3")));  //5
				 bwList.put("SIX", (request.getParameter("SIX3")=="")?0:Integer.parseInt(request.getParameter("SIX3")));   //6
				 bwList.put("SEVEN", (request.getParameter("SEVEN3")=="")?0:Integer.parseInt(request.getParameter("SEVEN3")));  //7
				 bwList.put("EIGHT", (request.getParameter("EIGHT3")=="")?0:Integer.parseInt(request.getParameter("EIGHT3")));  //8
				 bwList.put("NINE", (request.getParameter("NINE3")=="")?0:Integer.parseInt(request.getParameter("NINE3")));  //9
				   Map<String,Integer>  swList=new HashMap<String,Integer>(); //十位
				 swList.put("DA", (request.getParameter("DA4")=="")?0:Integer.parseInt(request.getParameter("DA4")));    //大
				 swList.put("XIAO", (request.getParameter("XIAO4")=="")?0:Integer.parseInt(request.getParameter("XIAO4")));  //小
				 swList.put("DAN", (request.getParameter("DAN4")=="")?0:Integer.parseInt(request.getParameter("DAN4")));   //单 
				 swList.put("SHUANG", (request.getParameter("SHUANG4")=="")?0:Integer.parseInt(request.getParameter("SHUANG4")));  //双
				 swList.put("ZERO", (request.getParameter("ZERO4")=="")?0:Integer.parseInt(request.getParameter("ZERO4")));    //0
				 swList.put("ONE", (request.getParameter("ONE4")=="")?0:Integer.parseInt(request.getParameter("ONE4")));  //1
				 swList.put("TWO", (request.getParameter("TWO4")=="")?0:Integer.parseInt(request.getParameter("TWO4")));   //2
				 swList.put("THREE", (request.getParameter("THREE4")=="")?0:Integer.parseInt(request.getParameter("THREE4")));  //3
				 swList.put("FOUR", (request.getParameter("FOUR4")=="")?0:Integer.parseInt(request.getParameter("FOUR4")));    //4
				 swList.put("FIVE", (request.getParameter("FIVE4")=="")?0:Integer.parseInt(request.getParameter("FIVE4")));  //5
				 swList.put("SIX", (request.getParameter("SIX4")=="")?0:Integer.parseInt(request.getParameter("SIX4")));   //6
				 swList.put("SEVEN", (request.getParameter("SEVEN4")=="")?0:Integer.parseInt(request.getParameter("SEVEN4")));  //7
				 swList.put("EIGHT", (request.getParameter("EIGHT4")=="")?0:Integer.parseInt(request.getParameter("EIGHT4")));  //8
				 swList.put("NINE", (request.getParameter("NINE4")=="")?0:Integer.parseInt(request.getParameter("NINE4")));  //9
				 Map<String,Integer>  gwList=new HashMap<String,Integer>(); //个位
				 gwList.put("DA", (request.getParameter("DA5")=="")?0:Integer.parseInt(request.getParameter("DA5")));    //大
				 gwList.put("XIAO", (request.getParameter("XIAO5")=="")?0:Integer.parseInt(request.getParameter("XIAO5")));  //小
				 gwList.put("DAN", (request.getParameter("DAN5")=="")?0:Integer.parseInt(request.getParameter("DAN5")));   //单 
				 gwList.put("SHUANG", (request.getParameter("SHUANG5")=="")?0:Integer.parseInt(request.getParameter("SHUANG5")));  //双
				 gwList.put("ZERO", (request.getParameter("ZERO5")=="")?0:Integer.parseInt(request.getParameter("ZERO5")));    //0
				 gwList.put("ONE", (request.getParameter("ONE5")=="")?0:Integer.parseInt(request.getParameter("ONE5")));  //1
				 gwList.put("TWO", (request.getParameter("TWO5")=="")?0:Integer.parseInt(request.getParameter("TWO5")));   //2
				 gwList.put("THREE", (request.getParameter("THREE5")=="")?0:Integer.parseInt(request.getParameter("THREE5")));  //3
				 gwList.put("FOUR", (request.getParameter("FOUR5")=="")?0:Integer.parseInt(request.getParameter("FOUR5")));    //4
				 gwList.put("FIVE", (request.getParameter("FIVE5")=="")?0:Integer.parseInt(request.getParameter("FIVE5")));  //5
				 gwList.put("SIX", (request.getParameter("SIX5")=="")?0:Integer.parseInt(request.getParameter("SIX5")));   //6
				 gwList.put("SEVEN", (request.getParameter("SEVEN5")=="")?0:Integer.parseInt(request.getParameter("SEVEN5")));  //7
				 gwList.put("EIGHT", (request.getParameter("EIGHT5")=="")?0:Integer.parseInt(request.getParameter("EIGHT5")));  //8
				 gwList.put("NINE", (request.getParameter("NINE5")=="")?0:Integer.parseInt(request.getParameter("NINE5")));  //9
				  Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //前三球
				 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //豹子
				 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //顺子
				 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //对子
				 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //半顺
				 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //杂六
				 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //中三球
				 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //豹子
				 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //顺子
				 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //对子
				 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //半顺
				 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //杂六
				 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //后三球
				 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //豹子
				 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //顺子
				 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //对子
				 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //半顺
				 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //杂六
			if (!zhList.isEmpty())  jsonBoCai.getLeafList().put("ZH", zhList);
			if (!lhhList.isEmpty())  jsonBoCai.getLeafList().put("LHH", lhhList);
			if (!wwList.isEmpty())  jsonBoCai.getLeafList().put("WW", wwList);
			if (!qwList.isEmpty())  jsonBoCai.getLeafList().put("QW", qwList);
			if (!bwList.isEmpty())  jsonBoCai.getLeafList().put("BW", bwList);
			if (!swList.isEmpty())  jsonBoCai.getLeafList().put("SW", swList);
			if (!gwList.isEmpty())  jsonBoCai.getLeafList().put("GW", gwList);
			if (!qsqList.isEmpty())  jsonBoCai.getLeafList().put("QSQ", qsqList);
			if (!zsqList.isEmpty())  jsonBoCai.getLeafList().put("ZSQ", zsqList);
			if (!hsqList.isEmpty())  jsonBoCai.getLeafList().put("HSQ", hsqList);
			 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
			 String str_json_play=json_play.toString();
				 System.out.println(str_json_play);
				 Orders orders= new Orders();
				 orders.setMid(null);//会员ID
				  orders.setStatus("0");//注单状态
				 orders.setOrderstatus(str_json_play);
				 orders.setInitamount(null);//注单原始金额
				 orders.setOrdertype("sscLM");//游戏类型
				 orders.setOrderdate(times);//下注时间
				 orders.setPeriodno(Periodno);	
				 jsksService.insertData(orders);
		return "ssc";

	}
	/**
	 * 重庆时时彩第一球玩法投注数据封装
	 * @return 主页
	 */
	@RequestMapping(value = "/sscONEdata")
	public String sscONEdata(HttpServletRequest request, HttpServletResponse response) {
		// 时时彩中两面 玩法 的投注数据
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //重庆时时彩
		jsonBoCai.setSubCategory("DYIQ");   //第一球玩法
		//重庆时时彩第一球玩法投注数据封装
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //单号
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //大
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //小
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //单 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //双
		 dhList.put("ZERO", (request.getParameter("ZERO1")=="")?0:Integer.parseInt(request.getParameter("ZERO1")));    //0
		 dhList.put("ONE", (request.getParameter("ONE1")=="")?0:Integer.parseInt(request.getParameter("ONE1")));  //1
		 dhList.put("TWO", (request.getParameter("TWO1")=="")?0:Integer.parseInt(request.getParameter("TWO1")));   //2
		 dhList.put("THREE", (request.getParameter("THREE1")=="")?0:Integer.parseInt(request.getParameter("THREE1")));  //3
		 dhList.put("FOUR", (request.getParameter("FOUR1")=="")?0:Integer.parseInt(request.getParameter("FOUR1")));    //4
		 dhList.put("FIVE", (request.getParameter("FIVE1")=="")?0:Integer.parseInt(request.getParameter("FIVE1")));  //5
		 dhList.put("SIX", (request.getParameter("SIX1")=="")?0:Integer.parseInt(request.getParameter("SIX1")));   //6
		 dhList.put("SEVEN", (request.getParameter("SEVEN1")=="")?0:Integer.parseInt(request.getParameter("SEVEN1")));  //7
		 dhList.put("EIGHT", (request.getParameter("EIGHT1")=="")?0:Integer.parseInt(request.getParameter("EIGHT1")));  //8
		 dhList.put("NINE", (request.getParameter("NINE1")=="")?0:Integer.parseInt(request.getParameter("NINE1")));  //9
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //总和
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //大
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //小
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //单 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //双 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //龙虎和		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //龙
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //虎
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //和
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //前三球
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //豹子
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //顺子
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //对子
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //半顺
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //杂六
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //中三球
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //豹子
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //顺子
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //对子
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //半顺
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //杂六
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //后三球
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //豹子
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //顺子
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //对子
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //半顺
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //杂六
		 if (!dhList.isEmpty())  jsonBoCai.getLeafList().put("DH", dhList);
		 if (!zhList.isEmpty())  jsonBoCai.getLeafList().put("ZH", zhList);
		 if (!lhhList.isEmpty())  jsonBoCai.getLeafList().put("LHH", lhhList);
		 if (!qsqList.isEmpty())  jsonBoCai.getLeafList().put("QSQ", qsqList);
		 if (!zsqList.isEmpty())  jsonBoCai.getLeafList().put("ZSQ", zsqList);
		 if (!hsqList.isEmpty())  jsonBoCai.getLeafList().put("HSQ", hsqList);	
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			 orders.setMid(null);//会员ID
			  orders.setStatus("0");//注单状态
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//注单原始金额
			 orders.setOrdertype("sscONE");//游戏类型
			 orders.setOrderdate(null);//下注时间
			 orders.setPeriodno("1");			
			
			 jsksService.insertData(orders);
		return "sscONE";
		
	}
	/**
	 * 重庆时时彩第二球玩法投注数据封装
	 * @return 主页
	 */
	@RequestMapping(value = "/sscTWOdata")
	public String sscERdata(HttpServletRequest request, HttpServletResponse response) {
		// 时时彩中两面 玩法 的投注数据
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //重庆时时彩
		jsonBoCai.setSubCategory("DERQ");   //第二球玩法
		//重庆时时彩第二球玩法投注数据封装
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //单号
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //大
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //小
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //单 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //双
		 dhList.put("ZERO", (request.getParameter("ZERO1")=="")?0:Integer.parseInt(request.getParameter("ZERO1")));    //0
		 dhList.put("ONE", (request.getParameter("ONE1")=="")?0:Integer.parseInt(request.getParameter("ONE1")));  //1
		 dhList.put("TWO", (request.getParameter("TWO1")=="")?0:Integer.parseInt(request.getParameter("TWO1")));   //2
		 dhList.put("THREE", (request.getParameter("THREE1")=="")?0:Integer.parseInt(request.getParameter("THREE1")));  //3
		 dhList.put("FOUR", (request.getParameter("FOUR1")=="")?0:Integer.parseInt(request.getParameter("FOUR1")));    //4
		 dhList.put("FIVE", (request.getParameter("FIVE1")=="")?0:Integer.parseInt(request.getParameter("FIVE1")));  //5
		 dhList.put("SIX", (request.getParameter("SIX1")=="")?0:Integer.parseInt(request.getParameter("SIX1")));   //6
		 dhList.put("SEVEN", (request.getParameter("SEVEN1")=="")?0:Integer.parseInt(request.getParameter("SEVEN1")));  //7
		 dhList.put("EIGHT", (request.getParameter("EIGHT1")=="")?0:Integer.parseInt(request.getParameter("EIGHT1")));  //8
		 dhList.put("NINE", (request.getParameter("NINE1")=="")?0:Integer.parseInt(request.getParameter("NINE1")));  //9
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //总和
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //大
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //小
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //单 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //双 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //龙虎和		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //龙
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //虎
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //和
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //前三球
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //豹子
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //顺子
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //对子
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //半顺
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //杂六
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //中三球
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //豹子
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //顺子
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //对子
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //半顺
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //杂六
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //后三球
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //豹子
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //顺子
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //对子
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //半顺
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //杂六
		 if (!dhList.isEmpty())  jsonBoCai.getLeafList().put("DH", dhList);
		 if (!zhList.isEmpty())  jsonBoCai.getLeafList().put("ZH", zhList);
		 if (!lhhList.isEmpty())  jsonBoCai.getLeafList().put("LHH", lhhList);
		 if (!qsqList.isEmpty())  jsonBoCai.getLeafList().put("QSQ", qsqList);
		 if (!zsqList.isEmpty())  jsonBoCai.getLeafList().put("ZSQ", zsqList);
		 if (!hsqList.isEmpty())  jsonBoCai.getLeafList().put("HSQ", hsqList);	
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			 orders.setMid(null);//会员ID
			  orders.setStatus("0");//注单状态
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//注单原始金额
			 orders.setOrdertype("sscTWO");//游戏类型
			 orders.setOrderdate(null);//下注时间
			 orders.setPeriodno("1");					
			 jsksService.insertData(orders);
		return "sscTWO";
		
	}
	/**
	 * 重庆时时彩第三球玩法投注数据封装
	 * @return 主页
	 */
	@RequestMapping(value = "/sscTHREEdata")
	public String sscTHREEdata(HttpServletRequest request, HttpServletResponse response) {
		// 时时彩中两面 玩法 的投注数据
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //重庆时时彩
		jsonBoCai.setSubCategory("DSANQ");   //第三球玩法
		//重庆时时彩第三球玩法投注数据封装
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //单号
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //大
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //小
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //单 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //双
		 dhList.put("ZERO", (request.getParameter("ZERO1")=="")?0:Integer.parseInt(request.getParameter("ZERO1")));    //0
		 dhList.put("ONE", (request.getParameter("ONE1")=="")?0:Integer.parseInt(request.getParameter("ONE1")));  //1
		 dhList.put("TWO", (request.getParameter("TWO1")=="")?0:Integer.parseInt(request.getParameter("TWO1")));   //2
		 dhList.put("THREE", (request.getParameter("THREE1")=="")?0:Integer.parseInt(request.getParameter("THREE1")));  //3
		 dhList.put("FOUR", (request.getParameter("FOUR1")=="")?0:Integer.parseInt(request.getParameter("FOUR1")));    //4
		 dhList.put("FIVE", (request.getParameter("FIVE1")=="")?0:Integer.parseInt(request.getParameter("FIVE1")));  //5
		 dhList.put("SIX", (request.getParameter("SIX1")=="")?0:Integer.parseInt(request.getParameter("SIX1")));   //6
		 dhList.put("SEVEN", (request.getParameter("SEVEN1")=="")?0:Integer.parseInt(request.getParameter("SEVEN1")));  //7
		 dhList.put("EIGHT", (request.getParameter("EIGHT1")=="")?0:Integer.parseInt(request.getParameter("EIGHT1")));  //8
		 dhList.put("NINE", (request.getParameter("NINE1")=="")?0:Integer.parseInt(request.getParameter("NINE1")));  //9
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //总和
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //大
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //小
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //单 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //双 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //龙虎和		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //龙
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //虎
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //和
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //前三球
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //豹子
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //顺子
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //对子
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //半顺
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //杂六
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //中三球
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //豹子
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //顺子
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //对子
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //半顺
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //杂六
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //后三球
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //豹子
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //顺子
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //对子
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //半顺
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //杂六
		 if (!dhList.isEmpty())  jsonBoCai.getLeafList().put("DH", dhList);
		 if (!zhList.isEmpty())  jsonBoCai.getLeafList().put("ZH", zhList);
		 if (!lhhList.isEmpty())  jsonBoCai.getLeafList().put("LHH", lhhList);
		 if (!qsqList.isEmpty())  jsonBoCai.getLeafList().put("QSQ", qsqList);
		 if (!zsqList.isEmpty())  jsonBoCai.getLeafList().put("ZSQ", zsqList);
		 if (!hsqList.isEmpty())  jsonBoCai.getLeafList().put("HSQ", hsqList);	
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			 orders.setMid(null);//会员ID
			  orders.setStatus("0");//注单状态
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//注单原始金额
			 orders.setOrdertype("sscTHREE");//游戏类型
			 orders.setOrderdate(null);//下注时间
			 orders.setPeriodno("1");		 
			 jsksService.insertData(orders);
		return "sscTHREE";
		
	}
	/**
	 * 重庆时时彩第四球玩法投注数据封装
	 * @return 主页
	 */
	@RequestMapping(value = "/sscFOURdata")
	public String sscFOURdata(HttpServletRequest request, HttpServletResponse response) {
		// 时时彩中两面 玩法 的投注数据
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //重庆时时彩
		jsonBoCai.setSubCategory("DSIQ");   //第四球玩法
		//重庆时时彩第四球玩法投注数据封装
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //单号
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //大
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //小
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //单 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //双
		 dhList.put("ZERO", (request.getParameter("ZERO1")=="")?0:Integer.parseInt(request.getParameter("ZERO1")));    //0
		 dhList.put("ONE", (request.getParameter("ONE1")=="")?0:Integer.parseInt(request.getParameter("ONE1")));  //1
		 dhList.put("TWO", (request.getParameter("TWO1")=="")?0:Integer.parseInt(request.getParameter("TWO1")));   //2
		 dhList.put("THREE", (request.getParameter("THREE1")=="")?0:Integer.parseInt(request.getParameter("THREE1")));  //3
		 dhList.put("FOUR", (request.getParameter("FOUR1")=="")?0:Integer.parseInt(request.getParameter("FOUR1")));    //4
		 dhList.put("FIVE", (request.getParameter("FIVE1")=="")?0:Integer.parseInt(request.getParameter("FIVE1")));  //5
		 dhList.put("SIX", (request.getParameter("SIX1")=="")?0:Integer.parseInt(request.getParameter("SIX1")));   //6
		 dhList.put("SEVEN", (request.getParameter("SEVEN1")=="")?0:Integer.parseInt(request.getParameter("SEVEN1")));  //7
		 dhList.put("EIGHT", (request.getParameter("EIGHT1")=="")?0:Integer.parseInt(request.getParameter("EIGHT1")));  //8
		 dhList.put("NINE", (request.getParameter("NINE1")=="")?0:Integer.parseInt(request.getParameter("NINE1")));  //9
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //总和
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //大
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //小
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //单 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //双 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //龙虎和		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //龙
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //虎
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //和
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //前三球
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //豹子
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //顺子
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //对子
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //半顺
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //杂六
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //中三球
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //豹子
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //顺子
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //对子
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //半顺
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //杂六
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //后三球
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //豹子
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //顺子
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //对子
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //半顺
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //杂六
		 if (!dhList.isEmpty())  jsonBoCai.getLeafList().put("DH", dhList);
		 if (!zhList.isEmpty())  jsonBoCai.getLeafList().put("ZH", zhList);
		 if (!lhhList.isEmpty())  jsonBoCai.getLeafList().put("LHH", lhhList);
		 if (!qsqList.isEmpty())  jsonBoCai.getLeafList().put("QSQ", qsqList);
		 if (!zsqList.isEmpty())  jsonBoCai.getLeafList().put("ZSQ", zsqList);
		 if (!hsqList.isEmpty())  jsonBoCai.getLeafList().put("HSQ", hsqList);	
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			 orders.setMid(null);//会员ID
			  orders.setStatus("0");//注单状态
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//注单原始金额
			 orders.setOrdertype("sscFOUR");//游戏类型
			 orders.setOrderdate(null);//下注时间
			 orders.setPeriodno("1");		 
			 jsksService.insertData(orders);
		return "sscFOUR";
		
	}
	/**
	 * 重庆时时彩第五球玩法投注数据封装
	 * @return 主页
	 */
	@RequestMapping(value = "/sscFIVEdata")
	public String sscFIVEdata(HttpServletRequest request, HttpServletResponse response,String times,String Periodno) {
		// 时时彩中两面 玩法 的投注数据
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //重庆时时彩
		jsonBoCai.setSubCategory("DWUQ");   //第五球玩法
		//重庆时时彩第五球玩法投注数据封装
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //单号
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //大
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //小
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //单 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //双
		 dhList.put("ZERO", (request.getParameter("ZERO1")=="")?0:Integer.parseInt(request.getParameter("ZERO1")));    //0
		 dhList.put("ONE", (request.getParameter("ONE1")=="")?0:Integer.parseInt(request.getParameter("ONE1")));  //1
		 dhList.put("TWO", (request.getParameter("TWO1")=="")?0:Integer.parseInt(request.getParameter("TWO1")));   //2
		 dhList.put("THREE", (request.getParameter("THREE1")=="")?0:Integer.parseInt(request.getParameter("THREE1")));  //3
		 dhList.put("FOUR", (request.getParameter("FOUR1")=="")?0:Integer.parseInt(request.getParameter("FOUR1")));    //4
		 dhList.put("FIVE", (request.getParameter("FIVE1")=="")?0:Integer.parseInt(request.getParameter("FIVE1")));  //5
		 dhList.put("SIX", (request.getParameter("SIX1")=="")?0:Integer.parseInt(request.getParameter("SIX1")));   //6
		 dhList.put("SEVEN", (request.getParameter("SEVEN1")=="")?0:Integer.parseInt(request.getParameter("SEVEN1")));  //7
		 dhList.put("EIGHT", (request.getParameter("EIGHT1")=="")?0:Integer.parseInt(request.getParameter("EIGHT1")));  //8
		 dhList.put("NINE", (request.getParameter("NINE1")=="")?0:Integer.parseInt(request.getParameter("NINE1")));  //9
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //总和
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //大
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //小
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //单 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //双 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //龙虎和		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //龙
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //虎
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //和
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //前三球
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //豹子
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //顺子
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //对子
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //半顺
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //杂六
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //中三球
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //豹子
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //顺子
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //对子
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //半顺
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //杂六
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //后三球
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //豹子
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //顺子
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //对子
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //半顺
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //杂六
		 if (!dhList.isEmpty())  jsonBoCai.getLeafList().put("DH", dhList);
		 if (!zhList.isEmpty())  jsonBoCai.getLeafList().put("ZH", zhList);
		 if (!lhhList.isEmpty())  jsonBoCai.getLeafList().put("LHH", lhhList);
		 if (!qsqList.isEmpty())  jsonBoCai.getLeafList().put("QSQ", qsqList);
		 if (!zsqList.isEmpty())  jsonBoCai.getLeafList().put("ZSQ", zsqList);
		 if (!hsqList.isEmpty())  jsonBoCai.getLeafList().put("HSQ", hsqList);	
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			 orders.setMid(null);//会员ID
			  orders.setStatus("0");//注单状态
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//注单原始金额
			 orders.setOrdertype("sscFIVE");//游戏类型
			 orders.setOrderdate(null);//下注时间
			 orders.setPeriodno("1");
			 jsksService.insertData(orders);
		return "sscFIVE";
		
	}
}
