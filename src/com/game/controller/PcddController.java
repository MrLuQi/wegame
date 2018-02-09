package com.game.controller;


import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.game.pojo.JsonBoCai;
import com.game.pojo.Members;
import com.game.pojo.Orders;
import com.game.service.JsksService;
import com.game.util.common.RandomUtil;
import com.game.util.common.gameConstants;

@Controller
public class PcddController {

	@Autowired
	@Qualifier("jsksService")
	private JsksService jsksService;

	@RequestMapping(value = "/pcdd")
	public String pcdd(){
		return "pcdd";
	}
	
	
	
	
	@RequestMapping(value="/pcddxzdata")
	public String PCDD_HH_DM(HttpServletRequest request, HttpServletResponse response,HttpSession session,String times, String  initamount ){
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("PCDD");   //PC蛋蛋
		jsonBoCai.setSubCategory("PC");   //pc蛋蛋玩法
		System.out.println(initamount+"下注金额");
		
		 Map<String,Integer>  ghList=new HashMap<String,Integer>(); //混合投注数据 
		 ghList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA"))); 
		 ghList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));
		 ghList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));
		 ghList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));
		 ghList.put("DASHUANG", (request.getParameter("DASHUANG")=="")?0:Integer.parseInt(request.getParameter("DASHUANG")));
		 ghList.put("DADAN", (request.getParameter("DADAN")=="")?0:Integer.parseInt(request.getParameter("DADAN")));
		 ghList.put("XIAODAN", (request.getParameter("XIAODAN")=="")?0:Integer.parseInt(request.getParameter("XIAODAN")));
		 ghList.put("XIAOSHUANG", (request.getParameter("XIAOSHUANG")=="")?0:Integer.parseInt(request.getParameter("XIAOSHUANG")));
		 ghList.put("JIDA", (request.getParameter("JIDA")=="")?0:Integer.parseInt(request.getParameter("JIDA")));
		 ghList.put("JIXIAO", (request.getParameter("JIXIAO")=="")?0:Integer.parseInt(request.getParameter("JIXIAO")));
		 
		  
		Map<String,Integer>  dmList=new HashMap<String,Integer>(); //单码投注数据 
		 dmList.put("ZERO", (request.getParameter("ZERO")=="")?0:Integer.parseInt(request.getParameter("ZERO")));
		 dmList.put("ONE", (request.getParameter("ONE")=="")?0:Integer.parseInt(request.getParameter("ONE")));
		 dmList.put("TWO", (request.getParameter("TWO")=="")?0:Integer.parseInt(request.getParameter("TWO")));
		 dmList.put("THREE", (request.getParameter("THREE")=="")?0:Integer.parseInt(request.getParameter("THREE")));
		 dmList.put("FOUR", (request.getParameter("FOUR")=="")?0:Integer.parseInt(request.getParameter("FOUR")));
		 dmList.put("FIVE", (request.getParameter("FIVE")=="")?0:Integer.parseInt(request.getParameter("FIVE")));
		 dmList.put("SIX", (request.getParameter("SIX")=="")?0:Integer.parseInt(request.getParameter("SIX")));
		 dmList.put("SEVEN", (request.getParameter("SEVEN")=="")?0:Integer.parseInt(request.getParameter("SEVEN")));
		 dmList.put("EIGHT", (request.getParameter("EIGHT")=="")?0:Integer.parseInt(request.getParameter("EIGHT")));
		 dmList.put("NINE", (request.getParameter("NINE")=="")?0:Integer.parseInt(request.getParameter("NINE")));
		 dmList.put("TEN", (request.getParameter("TEN")=="")?0:Integer.parseInt(request.getParameter("TEN")));
		 dmList.put("ELEVEN", (request.getParameter("ELEVEN")=="")?0:Integer.parseInt(request.getParameter("ELEVEN")));
		 dmList.put("TWELVE", (request.getParameter("TWELVE")=="")?0:Integer.parseInt(request.getParameter("TWELVE")));
		 dmList.put("THIRTEEN", (request.getParameter("THIRTEEN")=="")?0:Integer.parseInt(request.getParameter("THIRTEEN")));
		 dmList.put("FOURTEEN", (request.getParameter("FOURTEEN")=="")?0:Integer.parseInt(request.getParameter("FOURTEEN")));
		 dmList.put("FIFTEEN", (request.getParameter("FIFTEEN")=="")?0:Integer.parseInt(request.getParameter("FIFTEEN")));
		 dmList.put("SIXTEEN", (request.getParameter("SIXTEEN")=="")?0:Integer.parseInt(request.getParameter("SIXTEEN")));
		 dmList.put("SENENTEEN", (request.getParameter("SENENTEEN")=="")?0:Integer.parseInt(request.getParameter("SENENTEEN")));
		 dmList.put("EIGHTEEN", (request.getParameter("EIGHTEEN")=="")?0:Integer.parseInt(request.getParameter("EIGHTEEN")));
		 dmList.put("NINETEEN", (request.getParameter("NINETEEN")=="")?0:Integer.parseInt(request.getParameter("NINETEEN")));
		 dmList.put("TWENTY", (request.getParameter("TWENTY")=="")?0:Integer.parseInt(request.getParameter("TWENTY")));
		 dmList.put("TWENTY_ONE", (request.getParameter("TWENTY_ONE")=="")?0:Integer.parseInt(request.getParameter("TWENTY_ONE")));
		 dmList.put("TWENTY_TWO", (request.getParameter("TWENTY_TWO")=="")?0:Integer.parseInt(request.getParameter("TWENTY_TWO")));
		 dmList.put("TWENTY_THREE", (request.getParameter("TWENTY_THREE")=="")?0:Integer.parseInt(request.getParameter("TWENTY_THREE")));
		 dmList.put("TWENTY_FOUR", (request.getParameter("TWENTY_FOUR")=="")?0:Integer.parseInt(request.getParameter("TWENTY_FOUR")));
		 dmList.put("TWENTY_FIVE", (request.getParameter("TWENTY_FIVE")=="")?0:Integer.parseInt(request.getParameter("TWENTY_FIVE")));
		 dmList.put("TWENTY_SIX", (request.getParameter("TWENTY_SIX")=="")?0:Integer.parseInt(request.getParameter("TWENTY_SIX")));
		 dmList.put("TWENTY_SEVEN", (request.getParameter("TWENTY_SEVEN")=="")?0:Integer.parseInt(request.getParameter("TWENTY_SEVEN")));
		 
		 
		 if (!ghList.isEmpty())  jsonBoCai.getLeafList().put("HHWF", ghList);
		 if (!dmList.isEmpty())  jsonBoCai.getLeafList().put("DMWF", dmList);
		 
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			
			 Orders orders= new Orders();
			 Members members	=	(Members) session.getAttribute(gameConstants.MEMBER_SESSION); 
			 //会员id
			 orders.setMid(members.getMid());
			 //注单号
			orders.setOrderno(RandomUtil.getRandomFileName()); 
			 //注单状态
			 orders.setStatus("0");//未结
			 //是否中奖
			 
			 //是否大额中奖
			 
			 //注单原始金额
			//BigDecimal bd=new BigDecimal(initamount);
			 orders.setInitamount(new BigDecimal(initamount));
			 //注单中奖金额
			 
			 //投注类型
			 orders.setOrdertype("pcdd_PCDD");
			 //投注时间
			 orders.setOrderdate(times);
			 //退水金额
			 //返点金额
			 //开奖期数
			 //下单数据
			 orders.setOrderstatus(str_json_play);
			 jsksService.insertData(orders);
		 
		 
			 
			 
			 
		 return "redirect:/pcdd";
	}

}
