package com.game.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.pojo.JsonBoCai;
import com.game.pojo.Members;
import com.game.pojo.Orders;
import com.game.service.JsksService;
import com.game.util.common.gameConstants;




@Controller
public class JsksController {
	/**
	 * 自动注入JsksService
	 * */
	
	@Autowired
	@Qualifier("jsksService")
	private JsksService jsksService;

/*	@Autowired
	@Qualifier("jsksService")
	private JsksService jsksService;
	*/

	@RequestMapping(value = "/jsks")
	public String jsks(){
		return "jiangsukuaisan";
	}
	/**
	 * 投注数据
	 * @param request
	 * @param response
	 * @return
	 */
	/**
	 * @param request
	 * @param response
	 * @param session
	 * @param times
	 * @return
	 */
	@RequestMapping(value = "/tzdata")
	public String JSKS_DXTB(HttpServletRequest request,HttpServletResponse response,HttpSession session,String times ){
		//大小三军的玩法
				JsonBoCai jsonBoCai = new JsonBoCai();
				jsonBoCai.setCategory("JSKS");   //江苏快三
				jsonBoCai.setSubCategory("DXTB");   //大小骰宝玩法
				/**-下列代码中模拟用户投注金额20, 实际投注中用户不一定每项都投-**/
				 Map<String,Integer>  sjList=new HashMap<String,Integer>(); //三军投注数据
				 sjList.put("SANJUN1", (request.getParameter("SANJUN1")=="")?0:Integer.parseInt(request.getParameter("SANJUN1"))); 
				 sjList.put("SANJUN2", (request.getParameter("SANJUN2")=="")?0:Integer.parseInt(request.getParameter("SANJUN2")));
				 sjList.put("SANJUN3", (request.getParameter("SANJUN3")=="")?0:Integer.parseInt(request.getParameter("SANJUN3")));
				 sjList.put("SANJUN4", (request.getParameter("SANJUN4")=="")?0:Integer.parseInt(request.getParameter("SANJUN4")));
				 sjList.put("SANJUN5", (request.getParameter("SANJUN5")=="")?0:Integer.parseInt(request.getParameter("SANJUN5")));
				 sjList.put("SANJUN6", (request.getParameter("SANJUN6")=="")?0:Integer.parseInt(request.getParameter("SANJUN6")));
				 Map<String,Integer>  daList=new HashMap<String,Integer>(); //大投注数据
				 daList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));
				 Map<String,Integer>  xiaoList=new HashMap<String,Integer>(); //小投注数据
				 xiaoList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));
				 Map<String,Integer>  weiList=new HashMap<String,Integer>(); //围骰投注数据
				 weiList.put("WEI1", (request.getParameter("WEI1")=="")?0:Integer.parseInt(request.getParameter("WEI1")));
				 weiList.put("WEI2", (request.getParameter("WEI2")=="")?0:Integer.parseInt(request.getParameter("WEI2")));
				 weiList.put("WEI3", (request.getParameter("WEI3")=="")?0:Integer.parseInt(request.getParameter("WEI3")));
				 weiList.put("WEI4", (request.getParameter("WEI4")=="")?0:Integer.parseInt(request.getParameter("WEI4")));
				 weiList.put("WEI5", (request.getParameter("WEI5")=="")?0:Integer.parseInt(request.getParameter("WEI5")));
				 weiList.put("WEI6", (request.getParameter("WEI6")=="")?0:Integer.parseInt(request.getParameter("WEI6")));
				 Map<String,Integer>  quanList=new HashMap<String,Integer>(); //全骰投注数据
				 quanList.put("QUAN", (request.getParameter("QUAN")=="")?0:Integer.parseInt(request.getParameter("QUAN")));
				 Map<String,Integer>  dsList=new HashMap<String,Integer>(); //点数投注数据
				 dsList.put("four",  (request.getParameter("four")=="")?0:Integer.parseInt(request.getParameter("four")));
				 dsList.put("five", (request.getParameter("five")=="")?0:Integer.parseInt(request.getParameter("five")));
				 dsList.put("six", (request.getParameter("six")=="")?0:Integer.parseInt(request.getParameter("six")));
				 dsList.put("seven", (request.getParameter("seven")=="")?0:Integer.parseInt(request.getParameter("seven")));
				 dsList.put("eight", (request.getParameter("eight")=="")?0:Integer.parseInt(request.getParameter("eight")));
				 dsList.put("nine", (request.getParameter("nine")=="")?0:Integer.parseInt(request.getParameter("nine")));
				 dsList.put("ten", (request.getParameter("ten")=="")?0:Integer.parseInt(request.getParameter("ten")));
				 dsList.put("eleven", (request.getParameter("eleven")=="")?0:Integer.parseInt(request.getParameter("eleven")));
				 dsList.put("twelve", (request.getParameter("twelve")=="")?0:Integer.parseInt(request.getParameter("twelve")));
				 dsList.put("thirteen", (request.getParameter("thirteen")=="")?0:Integer.parseInt(request.getParameter("thirteen")));
				 dsList.put("fourteen", (request.getParameter("fourteen")=="")?0:Integer.parseInt(request.getParameter("fourteen")));
				 dsList.put("fifteen",(request.getParameter("fifteen")=="")?0:Integer.parseInt(request.getParameter("fifteen")));
				 dsList.put("sixteen", (request.getParameter("sixteen")=="")?0:Integer.parseInt(request.getParameter("sixteen")));
				 dsList.put("seventeen", (request.getParameter("seventeen")=="")?0:Integer.parseInt(request.getParameter("seventeen")));
				 Map<String,Integer>  cpList=new HashMap<String,Integer>(); //长牌投注数据
				 cpList.put("cp1", (request.getParameter("cp1")=="")?0:Integer.parseInt(request.getParameter("cp1")));
				 cpList.put("cp2", (request.getParameter("cp2")=="")?0:Integer.parseInt(request.getParameter("cp2")));
				 cpList.put("cp3", (request.getParameter("cp3")=="")?0:Integer.parseInt(request.getParameter("cp3")));
				 cpList.put("cp4", (request.getParameter("cp4")=="")?0:Integer.parseInt(request.getParameter("cp4")));
				 cpList.put("cp5",(request.getParameter("cp5")=="")?0:Integer.parseInt(request.getParameter("cp5")));
				 cpList.put("cp6",(request.getParameter("cp6")=="")?0:Integer.parseInt(request.getParameter("cp6")));
				 cpList.put("cp7", (request.getParameter("cp7")=="")?0:Integer.parseInt(request.getParameter("cp7")));
				 cpList.put("cp8", (request.getParameter("cp8")=="")?0:Integer.parseInt(request.getParameter("cp8")));
				 cpList.put("cp9", (request.getParameter("cp9")=="")?0:Integer.parseInt(request.getParameter("cp9")));
				 cpList.put("cp10", (request.getParameter("cp10")=="")?0:Integer.parseInt(request.getParameter("cp10")));
				 cpList.put("cp11", (request.getParameter("cp11")=="")?0:Integer.parseInt(request.getParameter("cp11")));
				 cpList.put("cp12", (request.getParameter("cp12")=="")?0:Integer.parseInt(request.getParameter("cp12")));
				 cpList.put("cp13", (request.getParameter("cp13")=="")?0:Integer.parseInt(request.getParameter("cp13")));
				 cpList.put("cp14", (request.getParameter("cp14")=="")?0:Integer.parseInt(request.getParameter("cp14")));
				 cpList.put("cp15", (request.getParameter("cp15")=="")?0:Integer.parseInt(request.getParameter("cp15")));
				 Map<String,Integer>  dpList=new HashMap<String,Integer>(); //短牌投注数据
				 dpList.put("dp1",  (request.getParameter("dp1")=="")?0:Integer.parseInt(request.getParameter("dp1")));
				 dpList.put("dp2",  (request.getParameter("dp2")=="")?0:Integer.parseInt(request.getParameter("dp2")));
				 dpList.put("dp3",  (request.getParameter("dp3")=="")?0:Integer.parseInt(request.getParameter("dp3")));
				 dpList.put("dp4",  (request.getParameter("dp4")=="")?0:Integer.parseInt(request.getParameter("dp4")));
				 dpList.put("dp5",  (request.getParameter("dp5")=="")?0:Integer.parseInt(request.getParameter("dp5")));
				 dpList.put("dp6",  (request.getParameter("dp6")=="")?0:Integer.parseInt(request.getParameter("dp6")));
				 
				 
				 if (!sjList.isEmpty())  jsonBoCai.getLeafList().put("SJ", sjList);
				 if (!daList.isEmpty())  jsonBoCai.getLeafList().put("DA", daList);
				 if (!xiaoList.isEmpty())  jsonBoCai.getLeafList().put("XIAO", xiaoList);
				 if (!weiList.isEmpty())  jsonBoCai.getLeafList().put("WEI", weiList);
				 if (!quanList.isEmpty())  jsonBoCai.getLeafList().put("QUAN", quanList);	
				 if (!dsList.isEmpty())  jsonBoCai.getLeafList().put("DS", dsList);
				 if (!cpList.isEmpty())  jsonBoCai.getLeafList().put("CP", cpList);
				 if (!dpList.isEmpty())  jsonBoCai.getLeafList().put("DP", dpList);
				 
				 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
				 String str_json_play=json_play.toString();
					 //System.out.println(str_json_play);
					 Orders orders= new Orders();
					 Members members	=	(Members) session.getAttribute(gameConstants.MEMBER_SESSION); 
					 //会员id
					 orders.setMid(members.getMid());
					 //注单号
					 //注单状态
					 orders.setStatus("0");//未结
					 //是否中奖
					 
					 //是否大额中奖
					 
					 //注单原始金额
					 
					 //注单中奖金额
					 
					 //投注类型
					 orders.setOrdertype("JSKS");
					 //投注时间
					 orders.setOrderdate(times);
					 //退水金额
					 //返点金额
					 //开奖期数
					 //下单数据
					 orders.setOrderstatus(str_json_play);
					 jsksService.insertData(orders);
					
				
				return "/jiangsukuaisan";
	}
}
