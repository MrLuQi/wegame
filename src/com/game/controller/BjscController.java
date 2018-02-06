package com.game.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.game.pojo.JsonBoCai;
import com.game.pojo.Orders;
import com.game.service.JsksService;
@Controller
public class BjscController {
	
	
	@Autowired
	@Qualifier("jsksService")
	private JsksService jsksService;

	
	
@RequestMapping(value="/bjsc")
	public String bjsc() {
	System.out.println("aaa");
	System.out.println("成功进来");
	
	return "bjsc";
}

	@RequestMapping(value="/bjsclm")
	public String BJSC_LM_Data(HttpServletRequest request, HttpServletResponse response){
	
	JsonBoCai jsonBoCai = new JsonBoCai();
	jsonBoCai.setCategory("BJSC");   //北京赛车
	jsonBoCai.setSubCategory("LMWF");   //北京赛车两面玩法
	
	
	
	 Map<String,Integer>  gyzhList=new HashMap<String,Integer>(); //冠亚合投注数据
	 gyzhList.put("DA", (request.getParameter("LM0")=="")?0:Integer.parseInt(request.getParameter("LM0")));
	 gyzhList.put("XIAO", (request.getParameter("LM1")=="")?0:Integer.parseInt(request.getParameter("LM1")));
	 gyzhList.put("DAN", (request.getParameter("LM2")=="")?0:Integer.parseInt(request.getParameter("LM2")));
	 gyzhList.put("SHUANG", (request.getParameter("LM3")=="")?0:Integer.parseInt(request.getParameter("LM3")));
	 
	 
	 Map<String,Integer>  gjList=new HashMap<String,Integer>(); //冠军投注数据
	 gjList.put("DA", (request.getParameter("LM4")=="")?0:Integer.parseInt(request.getParameter("LM4")));
	 gjList.put("XIAO", (request.getParameter("LM5")=="")?0:Integer.parseInt(request.getParameter("LM5")));
	 gjList.put("DAN", (request.getParameter("LM6")=="")?0:Integer.parseInt(request.getParameter("LM6")));
	 gjList.put("SHUANG", (request.getParameter("LM7")=="")?0:Integer.parseInt(request.getParameter("LM7")));
	 gjList.put("LONG1", (request.getParameter("LM8")=="")?0:Integer.parseInt(request.getParameter("LM8")));
	 gjList.put("HU1", (request.getParameter("LM9")=="")?0:Integer.parseInt(request.getParameter("LM9")));
	 
	 Map<String,Integer>  yjList=new HashMap<String,Integer>(); //亚军组合投注数据
	 //yjList.put("LM", (request.getParameter("LM")=="")?0:Integer.parseInt(request.getParameter("LM")));
	 yjList.put("DA", (request.getParameter("LM10")=="")?0:Integer.parseInt(request.getParameter("LM10")));
	 yjList.put("XIAO", (request.getParameter("LM11")=="")?0:Integer.parseInt(request.getParameter("LM11")));
	 yjList.put("DAN", (request.getParameter("LM12")=="")?0:Integer.parseInt(request.getParameter("LM12")));
	 yjList.put("LONG2", (request.getParameter("LM13")=="")?0:Integer.parseInt(request.getParameter("LM13")));
	 yjList.put("HU2", (request.getParameter("LM14")=="")?0:Integer.parseInt(request.getParameter("LM14")));
	 yjList.put("LM15", (request.getParameter("LM15")=="")?0:Integer.parseInt(request.getParameter("LM115")));
	 
	 Map<String,Integer>  dsmList=new HashMap<String,Integer>(); //第三名投注数据
	 dsmList.put("DA", (request.getParameter("LM16")=="")?0:Integer.parseInt(request.getParameter("LM16")));
	 dsmList.put("XIAO", (request.getParameter("LM17")=="")?0:Integer.parseInt(request.getParameter("LM17")));
	 dsmList.put("DAN", (request.getParameter("LM18")=="")?0:Integer.parseInt(request.getParameter("LM18")));
	 dsmList.put("SHUANG", (request.getParameter("LM19")=="")?0:Integer.parseInt(request.getParameter("LM19")));
	 dsmList.put("LONG3", (request.getParameter("LM20")=="")?0:Integer.parseInt(request.getParameter("LM20")));
	 dsmList.put("HU3", (request.getParameter("LM21")=="")?0:Integer.parseInt(request.getParameter("LM21")));
	 
	 Map<String,Integer>  dsimList=new HashMap<String,Integer>(); //第四名投注数据
	 dsimList.put("DA", (request.getParameter("LM22")=="")?0:Integer.parseInt(request.getParameter("LM22")));
	 dsimList.put("XIAO", (request.getParameter("LM23")=="")?0:Integer.parseInt(request.getParameter("LM23")));
	 dsimList.put("DAN", (request.getParameter("LM24")=="")?0:Integer.parseInt(request.getParameter("LM24")));
	 dsimList.put("SHUANG", (request.getParameter("LM25")=="")?0:Integer.parseInt(request.getParameter("LM25")));
	 dsimList.put("LONG4", (request.getParameter("LM26")=="")?0:Integer.parseInt(request.getParameter("LM26")));
	 dsimList.put("HU4", (request.getParameter("LM27")=="")?0:Integer.parseInt(request.getParameter("LM27")));
	 
	 Map<String,Integer>  dwmList=new HashMap<String,Integer>(); //第五名投注数据
	 dwmList.put("DA", (request.getParameter("LM28")=="")?0:Integer.parseInt(request.getParameter("LM28")));
	 dwmList.put("XIAO", (request.getParameter("LM29")=="")?0:Integer.parseInt(request.getParameter("LM29")));
	 dwmList.put("DAN", (request.getParameter("LM30")=="")?0:Integer.parseInt(request.getParameter("LM30")));
	 dwmList.put("SHUANG", (request.getParameter("LM31")=="")?0:Integer.parseInt(request.getParameter("LM31")));
	 dwmList.put("LONG5", (request.getParameter("LM32")=="")?0:Integer.parseInt(request.getParameter("LM32")));
	 dwmList.put("HU5", (request.getParameter("LM33")=="")?0:Integer.parseInt(request.getParameter("LM33")));
	 
	 Map<String,Integer>  dlmList=new HashMap<String,Integer>(); //第六名投注数据
	 dlmList.put("DA", (request.getParameter("LM34")=="")?0:Integer.parseInt(request.getParameter("LM34")));
	 dlmList.put("XIAO", (request.getParameter("LM35")=="")?0:Integer.parseInt(request.getParameter("LM35")));
	 dlmList.put("DAN", (request.getParameter("LM36")=="")?0:Integer.parseInt(request.getParameter("LM36")));
	 dlmList.put("SHUANG", (request.getParameter("LM37")=="")?0:Integer.parseInt(request.getParameter("LM37")));
	 
	 Map<String,Integer>  dqmList=new HashMap<String,Integer>(); //第七名投注数据
	 dqmList.put("DA", (request.getParameter("LM38")=="")?0:Integer.parseInt(request.getParameter("LM38")));
	 dqmList.put("XIAO", (request.getParameter("LM39")=="")?0:Integer.parseInt(request.getParameter("LM39")));
	 dqmList.put("DAN", (request.getParameter("LM40")=="")?0:Integer.parseInt(request.getParameter("LM40")));
	 dqmList.put("SHUANG", (request.getParameter("LM41")=="")?0:Integer.parseInt(request.getParameter("LM41")));
	 
	 
	 Map<String,Integer>  dbmList=new HashMap<String,Integer>(); //第八名投注数据
	 dbmList.put("DA", (request.getParameter("LM42")=="")?0:Integer.parseInt(request.getParameter("LM42")));
	 dbmList.put("XIAO", (request.getParameter("LM43")=="")?0:Integer.parseInt(request.getParameter("LM43")));
	 dbmList.put("DAN", (request.getParameter("LM44")=="")?0:Integer.parseInt(request.getParameter("LM44")));
	 dbmList.put("SHUANG", (request.getParameter("LM45")=="")?0:Integer.parseInt(request.getParameter("LM45")));
	 
		 	 Map<String,Integer>  djmList=new HashMap<String,Integer>(); //第九名投注数据
		 	djmList.put("DA", (request.getParameter("LM46")=="")?0:Integer.parseInt(request.getParameter("LM47")));
		 	djmList.put("XIAO", (request.getParameter("LM47")=="")?0:Integer.parseInt(request.getParameter("LM48")));
		 	djmList.put("DAN", (request.getParameter("LM48")=="")?0:Integer.parseInt(request.getParameter("LM49")));
		 	djmList.put("SHUANG", (request.getParameter("LM49")=="")?0:Integer.parseInt(request.getParameter("LM49")));
	 
		 	 Map<String,Integer>  dssmList=new HashMap<String,Integer>(); //第十名投注数据
		 	dssmList.put("DA", (request.getParameter("LM50")=="")?0:Integer.parseInt(request.getParameter("LM50")));
		 	dssmList.put("XIAO", (request.getParameter("LM51")=="")?0:Integer.parseInt(request.getParameter("LM51")));
		 	dssmList.put("DAN", (request.getParameter("LM52")=="")?0:Integer.parseInt(request.getParameter("LM52")));
		 	dssmList.put("SHUANG", (request.getParameter("LM53")=="")?0:Integer.parseInt(request.getParameter("LM53")));
		 	
		 	

			 if (!gyzhList.isEmpty())  jsonBoCai.getLeafList().put("GYZH", gyzhList);
			 if (!gjList.isEmpty())  jsonBoCai.getLeafList().put("GJ", gjList);
			 if (!yjList.isEmpty())  jsonBoCai.getLeafList().put("YJ", yjList);
			 if (!dsmList.isEmpty())  jsonBoCai.getLeafList().put("DSM", dsmList);
			 if (!dsimList.isEmpty())  jsonBoCai.getLeafList().put("DSIM", dsimList);
			 if (!dwmList.isEmpty())  jsonBoCai.getLeafList().put("DWM", dwmList);
			 if (!dlmList.isEmpty())  jsonBoCai.getLeafList().put("DLM", dlmList);
			 if (!dqmList.isEmpty())  jsonBoCai.getLeafList().put("DQM", dqmList);
			 if (!dbmList.isEmpty())  jsonBoCai.getLeafList().put("DBM", dbmList);
			 if (!djmList.isEmpty())  jsonBoCai.getLeafList().put("DJM", djmList);
			 if (!dssmList.isEmpty())  jsonBoCai.getLeafList().put("DSSM", dssmList);
			
			 
			 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
			 String str_json_play=json_play.toString();
				 System.out.println(str_json_play);
				 Orders orders= new Orders();
				
				 //orders.setOid(10);
				orders.setOrderstatus(str_json_play);
				 jsksService.insertData(orders);
			 return  "redirect:/bjsc";
}
	
	
	@RequestMapping(value="/bjscdhdata")
	public String BJSC_DH_Data(HttpServletRequest request, HttpServletResponse response){
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("BJSC");   //北京赛车
		jsonBoCai.setSubCategory("DHWF");   //单号玩法
		
		 Map<String,Integer>  gjList=new HashMap<String,Integer>(); //冠军投注数据
		 gjList.put("ONE", (request.getParameter("DH0")=="")?0:Integer.parseInt(request.getParameter("DH0")));
		 gjList.put("TWO", (request.getParameter("DH1")=="")?0:Integer.parseInt(request.getParameter("DH1")));
		 gjList.put("THREE", (request.getParameter("DH2")=="")?0:Integer.parseInt(request.getParameter("DH2")));
		 gjList.put("FOUR", (request.getParameter("DH3")=="")?0:Integer.parseInt(request.getParameter("DH3")));
		 gjList.put("FIVE", (request.getParameter("DH4")=="")?0:Integer.parseInt(request.getParameter("DH4")));
		 gjList.put("SIX", (request.getParameter("DH5")=="")?0:Integer.parseInt(request.getParameter("DH5")));
		 gjList.put("SEVEN", (request.getParameter("DH6")=="")?0:Integer.parseInt(request.getParameter("DH6")));
		 gjList.put("EIGHT", (request.getParameter("DH7")=="")?0:Integer.parseInt(request.getParameter("DH7")));
		 gjList.put("NINE", (request.getParameter("DH8")=="")?0:Integer.parseInt(request.getParameter("DH8")));
		 gjList.put("TEN", (request.getParameter("DH9")=="")?0:Integer.parseInt(request.getParameter("DH9")));
		 
		 Map<String,Integer>  yjList=new HashMap<String,Integer>(); //亚军组合投注数据
		 yjList.put("ONE", (request.getParameter("DH10")=="")?0:Integer.parseInt(request.getParameter("DH10")));
		 yjList.put("TWO", (request.getParameter("DH11")=="")?0:Integer.parseInt(request.getParameter("DH11")));
		 yjList.put("THREE", (request.getParameter("DH12")=="")?0:Integer.parseInt(request.getParameter("DH12")));
		 yjList.put("FOUR", (request.getParameter("DH13")=="")?0:Integer.parseInt(request.getParameter("DH13")));
		 yjList.put("FIVE", (request.getParameter("DH14")=="")?0:Integer.parseInt(request.getParameter("DH14")));
		 yjList.put("SIX", (request.getParameter("DH15")=="")?0:Integer.parseInt(request.getParameter("DH15")));
		 yjList.put("SEVEN", (request.getParameter("DH16")=="")?0:Integer.parseInt(request.getParameter("DH16")));
		 yjList.put("EIGHT", (request.getParameter("DH17")=="")?0:Integer.parseInt(request.getParameter("DH17")));
		 yjList.put("NINE", (request.getParameter("DH18")=="")?0:Integer.parseInt(request.getParameter("DH18")));
		 yjList.put("TEN", (request.getParameter("DH19")=="")?0:Integer.parseInt(request.getParameter("DH19")));
		 
		 Map<String,Integer>  dsmList=new HashMap<String,Integer>(); //第三名投注数据
		 dsmList.put("ONE", (request.getParameter("DH20")=="")?0:Integer.parseInt(request.getParameter("DH20")));
		 dsmList.put("TWO", (request.getParameter("DH21")=="")?0:Integer.parseInt(request.getParameter("DH21")));
		 dsmList.put("THREE", (request.getParameter("DH22")=="")?0:Integer.parseInt(request.getParameter("DH22")));
		 dsmList.put("FOUR", (request.getParameter("DH23")=="")?0:Integer.parseInt(request.getParameter("DH23")));
		 dsmList.put("FIVE", (request.getParameter("DH24")=="")?0:Integer.parseInt(request.getParameter("DH24")));
		 dsmList.put("SIX", (request.getParameter("DH25")=="")?0:Integer.parseInt(request.getParameter("DH25")));
		 dsmList.put("SEVEN", (request.getParameter("DH26")=="")?0:Integer.parseInt(request.getParameter("DH26")));
		 dsmList.put("EIGHT", (request.getParameter("DH27")=="")?0:Integer.parseInt(request.getParameter("DH27")));
		 dsmList.put("NINE", (request.getParameter("DH28")=="")?0:Integer.parseInt(request.getParameter("DH28")));
		 dsmList.put("TEN", (request.getParameter("DH29")=="")?0:Integer.parseInt(request.getParameter("DH29")));
		 
		 Map<String,Integer>  dsimList=new HashMap<String,Integer>(); //第四名投注数据
		 dsimList.put("ONE", (request.getParameter("DH30")=="")?0:Integer.parseInt(request.getParameter("DH30")));
		 dsimList.put("TWO", (request.getParameter("DH31")=="")?0:Integer.parseInt(request.getParameter("DH31")));
		 dsimList.put("THREE", (request.getParameter("DH32")=="")?0:Integer.parseInt(request.getParameter("DH32")));
		 dsimList.put("FOUR", (request.getParameter("DH33")=="")?0:Integer.parseInt(request.getParameter("DH33")));
		 dsimList.put("FIVE", (request.getParameter("DH34")=="")?0:Integer.parseInt(request.getParameter("DH34")));
		 dsimList.put("SIX", (request.getParameter("DH35")=="")?0:Integer.parseInt(request.getParameter("DH35")));
		 dsimList.put("SEVEN", (request.getParameter("DH36")=="")?0:Integer.parseInt(request.getParameter("DH36")));
		 dsimList.put("EIGHT", (request.getParameter("DH37")=="")?0:Integer.parseInt(request.getParameter("DH37")));
		 dsimList.put("NINE", (request.getParameter("DH38")=="")?0:Integer.parseInt(request.getParameter("DH38")));
		 dsimList.put("TEN", (request.getParameter("DH39")=="")?0:Integer.parseInt(request.getParameter("DH39")));
		 
		 Map<String,Integer>  dwmList=new HashMap<String,Integer>(); //第五名投注数据
		 
		 dwmList.put("ONE", (request.getParameter("DH40")=="")?0:Integer.parseInt(request.getParameter("DH40")));
		 dwmList.put("TWO", (request.getParameter("DH41")=="")?0:Integer.parseInt(request.getParameter("DH41")));
		 dwmList.put("THREE", (request.getParameter("DH42")=="")?0:Integer.parseInt(request.getParameter("DH42")));
		 dwmList.put("FOUR", (request.getParameter("DH43")=="")?0:Integer.parseInt(request.getParameter("DH43")));
		 dwmList.put("FIVE", (request.getParameter("DH44")=="")?0:Integer.parseInt(request.getParameter("DH44")));
		 dwmList.put("SIX", (request.getParameter("DH45")=="")?0:Integer.parseInt(request.getParameter("DH45")));
		 dwmList.put("SEVEN", (request.getParameter("DH46")=="")?0:Integer.parseInt(request.getParameter("DH46")));
		 dwmList.put("EIGHT", (request.getParameter("DH47")=="")?0:Integer.parseInt(request.getParameter("DH47")));
		 dwmList.put("NINE", (request.getParameter("DH48")=="")?0:Integer.parseInt(request.getParameter("DH48")));
		 dwmList.put("TEN", (request.getParameter("DH49")=="")?0:Integer.parseInt(request.getParameter("DH49")));
		 
		 Map<String,Integer> dlmList =new HashMap<String,Integer>(); //第六名投注数据
		 //2018/2/3
		 dlmList.put("ONE", (request.getParameter("DH50")=="")?0:Integer.parseInt(request.getParameter("DH50")));
		 dlmList.put("TWO", (request.getParameter("DH51")=="")?0:Integer.parseInt(request.getParameter("DH51")));
		 dlmList.put("THREE", (request.getParameter("DH52")=="")?0:Integer.parseInt(request.getParameter("DH52")));
		 dlmList.put("FOUR", (request.getParameter("DH53")=="")?0:Integer.parseInt(request.getParameter("DH53")));
		 dlmList.put("FIVE", (request.getParameter("DH54")=="")?0:Integer.parseInt(request.getParameter("DH54")));
		 dlmList.put("SIX", (request.getParameter("DH55")=="")?0:Integer.parseInt(request.getParameter("DH55")));
		 dlmList.put("SEVEN", (request.getParameter("DH56")=="")?0:Integer.parseInt(request.getParameter("DH56")));
		 dlmList.put("EIGHT", (request.getParameter("DH57")=="")?0:Integer.parseInt(request.getParameter("DH57")));
		 dlmList.put("NINE", (request.getParameter("DH58")=="")?0:Integer.parseInt(request.getParameter("DH58")));
		 dlmList.put("TEN", (request.getParameter("DH59")=="")?0:Integer.parseInt(request.getParameter("DH59")));
		 
		 
		 Map<String,Integer>  dqmList=new HashMap<String,Integer>(); //第七名投注数据
		 dqmList.put("ONE", (request.getParameter("DH60")=="")?0:Integer.parseInt(request.getParameter("DH60")));
		 dqmList.put("TWO", (request.getParameter("DH61")=="")?0:Integer.parseInt(request.getParameter("DH61")));
		 dqmList.put("THREE", (request.getParameter("DH62")=="")?0:Integer.parseInt(request.getParameter("DH62")));
		 dqmList.put("FOUR", (request.getParameter("DH63")=="")?0:Integer.parseInt(request.getParameter("DH63")));
		 dqmList.put("FIVE", (request.getParameter("DH64")=="")?0:Integer.parseInt(request.getParameter("DH64")));
		 dqmList.put("SIX", (request.getParameter("DH65")=="")?0:Integer.parseInt(request.getParameter("DH65")));
		 dqmList.put("SEVEN", (request.getParameter("DH66")=="")?0:Integer.parseInt(request.getParameter("DH66")));
		 dqmList.put("EIGHT", (request.getParameter("DH67")=="")?0:Integer.parseInt(request.getParameter("DH67")));
		 dqmList.put("NINE", (request.getParameter("DH68")=="")?0:Integer.parseInt(request.getParameter("DH68")));
		 dqmList.put("TEN", (request.getParameter("DH69")=="")?0:Integer.parseInt(request.getParameter("DH69")));
		 
		 Map<String,Integer>  dbmList=new HashMap<String,Integer>(); //第八名投注数据
		 dbmList.put("ONE", (request.getParameter("DH70")=="")?0:Integer.parseInt(request.getParameter("DH70")));
		 dbmList.put("TWO", (request.getParameter("DH71")=="")?0:Integer.parseInt(request.getParameter("DH71")));
		 dbmList.put("THREE", (request.getParameter("DH72")=="")?0:Integer.parseInt(request.getParameter("DH72")));
		 dbmList.put("FOUR", (request.getParameter("DH73")=="")?0:Integer.parseInt(request.getParameter("DH73")));
		 dbmList.put("FIVE", (request.getParameter("DH74")=="")?0:Integer.parseInt(request.getParameter("DH74")));
		 dbmList.put("SIX", (request.getParameter("DH75")=="")?0:Integer.parseInt(request.getParameter("DH75")));
		 dbmList.put("SEVEN", (request.getParameter("DH76")=="")?0:Integer.parseInt(request.getParameter("DH76")));
		 dbmList.put("EIGHT", (request.getParameter("DH77")=="")?0:Integer.parseInt(request.getParameter("DH77")));
		 dbmList.put("NINE", (request.getParameter("DH78")=="")?0:Integer.parseInt(request.getParameter("DH78")));
		 dbmList.put("TEN", (request.getParameter("DH79")=="")?0:Integer.parseInt(request.getParameter("DH79")));
		 
		 
		 Map<String,Integer>  djmList=new HashMap<String,Integer>(); //第九名投注数据
		 djmList.put("ONE", (request.getParameter("DH80")=="")?0:Integer.parseInt(request.getParameter("DH80")));
		 djmList.put("TWO", (request.getParameter("DH81")=="")?0:Integer.parseInt(request.getParameter("DH81")));
		 djmList.put("THREE", (request.getParameter("DH82")=="")?0:Integer.parseInt(request.getParameter("DH82")));
		 djmList.put("FOUR", (request.getParameter("DH83")=="")?0:Integer.parseInt(request.getParameter("DH83")));
		 djmList.put("FIVE", (request.getParameter("DH84")=="")?0:Integer.parseInt(request.getParameter("DH84")));
		 djmList.put("SIX", (request.getParameter("DH85")=="")?0:Integer.parseInt(request.getParameter("DH85")));
		 djmList.put("SEVEN", (request.getParameter("DH86")=="")?0:Integer.parseInt(request.getParameter("DH86")));
		 djmList.put("EIGHT", (request.getParameter("DH87")=="")?0:Integer.parseInt(request.getParameter("DH87")));
		 djmList.put("NINE", (request.getParameter("DH88")=="")?0:Integer.parseInt(request.getParameter("DH88")));
		 djmList.put("TEN", (request.getParameter("DH89")=="")?0:Integer.parseInt(request.getParameter("DH89")));
		 
		 Map<String,Integer>  dssmList=new HashMap<String,Integer>(); //第十名投注数据
		 djmList.put("ONE", (request.getParameter("DH90")=="")?0:Integer.parseInt(request.getParameter("DH90")));
		 djmList.put("TWO", (request.getParameter("DH91")=="")?0:Integer.parseInt(request.getParameter("DH91")));
		 djmList.put("THREE", (request.getParameter("DH92")=="")?0:Integer.parseInt(request.getParameter("DH92")));
		 djmList.put("FOUR", (request.getParameter("DH93")=="")?0:Integer.parseInt(request.getParameter("DH93")));
		 djmList.put("FIVE", (request.getParameter("DH94")=="")?0:Integer.parseInt(request.getParameter("DH94")));
		 djmList.put("SIX", (request.getParameter("DH95")=="")?0:Integer.parseInt(request.getParameter("DH95")));
		 djmList.put("SEVEN", (request.getParameter("DH96")=="")?0:Integer.parseInt(request.getParameter("DH96")));
		 djmList.put("EIGHT", (request.getParameter("DH97")=="")?0:Integer.parseInt(request.getParameter("DH97")));
		 djmList.put("NINE", (request.getParameter("DH98")=="")?0:Integer.parseInt(request.getParameter("DH98")));
		 djmList.put("TEN", (request.getParameter("DH99")=="")?0:Integer.parseInt(request.getParameter("DH99")));
		 
		 
		 if (!gjList.isEmpty())  jsonBoCai.getLeafList().put("GJ", gjList);
		 if (!yjList.isEmpty())  jsonBoCai.getLeafList().put("YJ", yjList);
		 if (!dsmList.isEmpty())  jsonBoCai.getLeafList().put("DSM", dsmList);
		 if (!dsimList.isEmpty())  jsonBoCai.getLeafList().put("DSIM", dsimList);
		 if (!dwmList.isEmpty())  jsonBoCai.getLeafList().put("DWM", dwmList);
		 if (!dlmList.isEmpty())  jsonBoCai.getLeafList().put("DLM", dlmList);
		 if (!dqmList.isEmpty())  jsonBoCai.getLeafList().put("DQM", dqmList);
		 if (!dbmList.isEmpty())  jsonBoCai.getLeafList().put("DBM", dbmList);
		 if (!djmList.isEmpty())  jsonBoCai.getLeafList().put("DJM", djmList);
		 if (!dssmList.isEmpty())  jsonBoCai.getLeafList().put("DSSM", dssmList);
		 
		 
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			
			 //orders.setOid(10);
			orders.setOrderstatus(str_json_play);
			 jsksService.insertData(orders);
		 
		 return  "bjscDH";
		
	}
	@RequestMapping(value="/bjscgyzhdata")
	public String BJSC_GY_Data(HttpServletRequest request, HttpServletResponse response){
		
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("BJSC");   //北京赛车
		jsonBoCai.setSubCategory("GYJHWF");   //冠亚军和玩法
		
		 Map<String,Integer>  gyjhwfList=new HashMap<String,Integer>(); //冠亚合投注数据
		 gyjhwfList.put("THREE", (request.getParameter("GYZH1")=="")?0:Integer.parseInt(request.getParameter("GYZH1")));
		 gyjhwfList.put("FOUR", (request.getParameter("GYZH2")=="")?0:Integer.parseInt(request.getParameter("GYZH2")));
		 gyjhwfList.put("FIVE", (request.getParameter("GYZH3")=="")?0:Integer.parseInt(request.getParameter("GYZH3")));
		 gyjhwfList.put("SIX", (request.getParameter("GYZH4")=="")?0:Integer.parseInt(request.getParameter("GYZH4")));
		 gyjhwfList.put("SEVEN", (request.getParameter("GYZH5")=="")?0:Integer.parseInt(request.getParameter("GYZH5")));
		 gyjhwfList.put("EUGHT", (request.getParameter("GYZH6")=="")?0:Integer.parseInt(request.getParameter("GYZH6")));
		 gyjhwfList.put("NINE", (request.getParameter("GYZH7")=="")?0:Integer.parseInt(request.getParameter("GYZH7")));
		 gyjhwfList.put("TEN", (request.getParameter("GYZH8")=="")?0:Integer.parseInt(request.getParameter("GYZH8")));
		 gyjhwfList.put("ELEVEN", (request.getParameter("GYZH9")=="")?0:Integer.parseInt(request.getParameter("GYZH9")));
		 gyjhwfList.put("TWELVE", (request.getParameter("GYZH10")=="")?0:Integer.parseInt(request.getParameter("GYZH10")));
		 gyjhwfList.put("THIRTEEN", (request.getParameter("GYZH11")=="")?0:Integer.parseInt(request.getParameter("GYZH11")));
		 gyjhwfList.put("FOURTEEN", (request.getParameter("GYZH12")=="")?0:Integer.parseInt(request.getParameter("GYZH12")));
		 gyjhwfList.put("FIFTEEN", (request.getParameter("GYZH13")=="")?0:Integer.parseInt(request.getParameter("GYZH13")));
		 gyjhwfList.put("SIXTEEN", (request.getParameter("GYZH14")=="")?0:Integer.parseInt(request.getParameter("GYZH14")));
		 gyjhwfList.put("SENENTEEN", (request.getParameter("GYZH15")=="")?0:Integer.parseInt(request.getParameter("GYZH15")));
		 gyjhwfList.put("EIGHTEEN", (request.getParameter("GYZH16")=="")?0:Integer.parseInt(request.getParameter("GYZH16")));
		 gyjhwfList.put("NINETEEN", (request.getParameter("GYZH17")=="")?0:Integer.parseInt(request.getParameter("GYZH17")));
		 gyjhwfList.put("DA", (request.getParameter("GYZH18")=="")?0:Integer.parseInt(request.getParameter("GYZH18")));
		 gyjhwfList.put("XIAO", (request.getParameter("GYZH19")=="")?0:Integer.parseInt(request.getParameter("GYZH19")));
		 gyjhwfList.put("DAN", (request.getParameter("GYZH20")=="")?0:Integer.parseInt(request.getParameter("GYZH20")));
		 gyjhwfList.put("SHAUNG", (request.getParameter("GYZH21")=="")?0:Integer.parseInt(request.getParameter("GYZH21")));

		 if (!gyjhwfList.isEmpty())  jsonBoCai.getLeafList().put("GYJH", gyjhwfList);
		 
		 
		 JSONObject json_play = JSONObject.fromObject(jsonBoCai);
		 String str_json_play=json_play.toString();
			 System.out.println(str_json_play);
			 Orders orders= new Orders();
			
			 //orders.setOid(10);
			orders.setOrderstatus(str_json_play);
			 jsksService.insertData(orders);
		 

		 return "bjscGYJZH";
	}
}
