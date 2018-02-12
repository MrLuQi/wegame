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
	 * �Զ�ע��JsksService
	 * */
	
	@Autowired
	@Qualifier("jsksService")
	private JsksService jsksService;
	/**
	 * ����ʱʱ�������淨Ͷע���ݷ�װ
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/sscLMdata")
	public String sscLMdata(HttpServletRequest request, HttpServletResponse response,String times,String Periodno) {
		// ʱʱ�������� �淨 ��Ͷע����
				JsonBoCai jsonBoCai = new JsonBoCai();
				jsonBoCai.setCategory("SSC");   //����ʱʱ��
				jsonBoCai.setSubCategory("LM");   //�����淨
				//����ʱʱ�������淨Ͷע���ݷ�װ
				 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //�ܺ�
				 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //��
				 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //С
				 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //�� 
				 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //˫ 
				 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //������		
				 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //��
				 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //��
				 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //��
				 Map<String,Integer>  wwList=new HashMap<String,Integer>(); //��λ
				 wwList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //��
				 wwList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //С
				 wwList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //�� 
				 wwList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //˫
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
				 Map<String,Integer>  qwList=new HashMap<String,Integer>(); //ǧλ
				 qwList.put("DA", (request.getParameter("DA2")=="")?0:Integer.parseInt(request.getParameter("DA2")));    //��
				 qwList.put("XIAO", (request.getParameter("XIAO2")=="")?0:Integer.parseInt(request.getParameter("XIAO2")));  //С
				 qwList.put("DAN", (request.getParameter("DAN2")=="")?0:Integer.parseInt(request.getParameter("DAN2")));   //�� 
				 qwList.put("SHUANG", (request.getParameter("SHUANG2")=="")?0:Integer.parseInt(request.getParameter("SHUANG2")));  //˫
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
				Map<String,Integer>  bwList=new HashMap<String,Integer>(); //��λ
				 bwList.put("DA", (request.getParameter("DA3")=="")?0:Integer.parseInt(request.getParameter("DA3")));    //��
				 bwList.put("XIAO", (request.getParameter("XIAO3")=="")?0:Integer.parseInt(request.getParameter("XIAO3")));  //С
				 bwList.put("DAN", (request.getParameter("DAN3")=="")?0:Integer.parseInt(request.getParameter("DAN3")));   //�� 
				 bwList.put("SHUANG", (request.getParameter("SHUANG3")=="")?0:Integer.parseInt(request.getParameter("SHUANG3")));  //˫
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
				   Map<String,Integer>  swList=new HashMap<String,Integer>(); //ʮλ
				 swList.put("DA", (request.getParameter("DA4")=="")?0:Integer.parseInt(request.getParameter("DA4")));    //��
				 swList.put("XIAO", (request.getParameter("XIAO4")=="")?0:Integer.parseInt(request.getParameter("XIAO4")));  //С
				 swList.put("DAN", (request.getParameter("DAN4")=="")?0:Integer.parseInt(request.getParameter("DAN4")));   //�� 
				 swList.put("SHUANG", (request.getParameter("SHUANG4")=="")?0:Integer.parseInt(request.getParameter("SHUANG4")));  //˫
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
				 Map<String,Integer>  gwList=new HashMap<String,Integer>(); //��λ
				 gwList.put("DA", (request.getParameter("DA5")=="")?0:Integer.parseInt(request.getParameter("DA5")));    //��
				 gwList.put("XIAO", (request.getParameter("XIAO5")=="")?0:Integer.parseInt(request.getParameter("XIAO5")));  //С
				 gwList.put("DAN", (request.getParameter("DAN5")=="")?0:Integer.parseInt(request.getParameter("DAN5")));   //�� 
				 gwList.put("SHUANG", (request.getParameter("SHUANG5")=="")?0:Integer.parseInt(request.getParameter("SHUANG5")));  //˫
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
				  Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //ǰ����
				 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //����
				 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //˳��
				 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //����
				 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //��˳
				 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //����
				 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //������
				 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //����
				 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //˳��
				 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //����
				 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //��˳
				 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //����
				 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //������
				 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //����
				 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //˳��
				 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //����
				 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //��˳
				 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //����
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
				 orders.setMid(null);//��ԱID
				  orders.setStatus("0");//ע��״̬
				 orders.setOrderstatus(str_json_play);
				 orders.setInitamount(null);//ע��ԭʼ���
				 orders.setOrdertype("sscLM");//��Ϸ����
				 orders.setOrderdate(times);//��עʱ��
				 orders.setPeriodno(Periodno);	
				 jsksService.insertData(orders);
		return "ssc";

	}
	/**
	 * ����ʱʱ�ʵ�һ���淨Ͷע���ݷ�װ
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/sscONEdata")
	public String sscONEdata(HttpServletRequest request, HttpServletResponse response) {
		// ʱʱ�������� �淨 ��Ͷע����
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //����ʱʱ��
		jsonBoCai.setSubCategory("DYIQ");   //��һ���淨
		//����ʱʱ�ʵ�һ���淨Ͷע���ݷ�װ
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //����
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //��
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //С
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //�� 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //˫
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
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //�ܺ�
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //��
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //С
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //�� 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //˫ 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //������		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //��
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //��
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //��
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //ǰ����
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //����
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //˳��
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //����
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //��˳
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //����
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //������
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //����
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //˳��
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //����
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //��˳
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //����
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //������
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //����
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //˳��
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //����
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //��˳
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //����
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
			 orders.setMid(null);//��ԱID
			  orders.setStatus("0");//ע��״̬
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//ע��ԭʼ���
			 orders.setOrdertype("sscONE");//��Ϸ����
			 orders.setOrderdate(null);//��עʱ��
			 orders.setPeriodno("1");			
			
			 jsksService.insertData(orders);
		return "sscONE";
		
	}
	/**
	 * ����ʱʱ�ʵڶ����淨Ͷע���ݷ�װ
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/sscTWOdata")
	public String sscERdata(HttpServletRequest request, HttpServletResponse response) {
		// ʱʱ�������� �淨 ��Ͷע����
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //����ʱʱ��
		jsonBoCai.setSubCategory("DERQ");   //�ڶ����淨
		//����ʱʱ�ʵڶ����淨Ͷע���ݷ�װ
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //����
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //��
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //С
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //�� 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //˫
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
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //�ܺ�
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //��
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //С
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //�� 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //˫ 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //������		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //��
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //��
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //��
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //ǰ����
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //����
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //˳��
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //����
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //��˳
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //����
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //������
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //����
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //˳��
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //����
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //��˳
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //����
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //������
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //����
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //˳��
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //����
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //��˳
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //����
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
			 orders.setMid(null);//��ԱID
			  orders.setStatus("0");//ע��״̬
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//ע��ԭʼ���
			 orders.setOrdertype("sscTWO");//��Ϸ����
			 orders.setOrderdate(null);//��עʱ��
			 orders.setPeriodno("1");					
			 jsksService.insertData(orders);
		return "sscTWO";
		
	}
	/**
	 * ����ʱʱ�ʵ������淨Ͷע���ݷ�װ
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/sscTHREEdata")
	public String sscTHREEdata(HttpServletRequest request, HttpServletResponse response) {
		// ʱʱ�������� �淨 ��Ͷע����
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //����ʱʱ��
		jsonBoCai.setSubCategory("DSANQ");   //�������淨
		//����ʱʱ�ʵ������淨Ͷע���ݷ�װ
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //����
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //��
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //С
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //�� 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //˫
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
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //�ܺ�
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //��
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //С
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //�� 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //˫ 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //������		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //��
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //��
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //��
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //ǰ����
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //����
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //˳��
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //����
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //��˳
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //����
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //������
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //����
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //˳��
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //����
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //��˳
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //����
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //������
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //����
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //˳��
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //����
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //��˳
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //����
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
			 orders.setMid(null);//��ԱID
			  orders.setStatus("0");//ע��״̬
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//ע��ԭʼ���
			 orders.setOrdertype("sscTHREE");//��Ϸ����
			 orders.setOrderdate(null);//��עʱ��
			 orders.setPeriodno("1");		 
			 jsksService.insertData(orders);
		return "sscTHREE";
		
	}
	/**
	 * ����ʱʱ�ʵ������淨Ͷע���ݷ�װ
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/sscFOURdata")
	public String sscFOURdata(HttpServletRequest request, HttpServletResponse response) {
		// ʱʱ�������� �淨 ��Ͷע����
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //����ʱʱ��
		jsonBoCai.setSubCategory("DSIQ");   //�������淨
		//����ʱʱ�ʵ������淨Ͷע���ݷ�װ
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //����
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //��
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //С
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //�� 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //˫
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
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //�ܺ�
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //��
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //С
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //�� 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //˫ 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //������		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //��
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //��
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //��
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //ǰ����
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //����
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //˳��
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //����
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //��˳
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //����
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //������
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //����
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //˳��
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //����
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //��˳
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //����
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //������
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //����
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //˳��
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //����
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //��˳
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //����
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
			 orders.setMid(null);//��ԱID
			  orders.setStatus("0");//ע��״̬
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//ע��ԭʼ���
			 orders.setOrdertype("sscFOUR");//��Ϸ����
			 orders.setOrderdate(null);//��עʱ��
			 orders.setPeriodno("1");		 
			 jsksService.insertData(orders);
		return "sscFOUR";
		
	}
	/**
	 * ����ʱʱ�ʵ������淨Ͷע���ݷ�װ
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/sscFIVEdata")
	public String sscFIVEdata(HttpServletRequest request, HttpServletResponse response,String times,String Periodno) {
		// ʱʱ�������� �淨 ��Ͷע����
		JsonBoCai jsonBoCai = new JsonBoCai();
		jsonBoCai.setCategory("SSC");   //����ʱʱ��
		jsonBoCai.setSubCategory("DWUQ");   //�������淨
		//����ʱʱ�ʵ������淨Ͷע���ݷ�װ
		Map<String,Integer>  dhList=new HashMap<String,Integer>(); //����
		 dhList.put("DA", (request.getParameter("DA1")=="")?0:Integer.parseInt(request.getParameter("DA1")));    //��
		 dhList.put("XIAO", (request.getParameter("XIAO1")=="")?0:Integer.parseInt(request.getParameter("XIAO1")));  //С
		 dhList.put("DAN", (request.getParameter("DAN1")=="")?0:Integer.parseInt(request.getParameter("DAN1")));   //�� 
		 dhList.put("SHUANG", (request.getParameter("SHUANG1")=="")?0:Integer.parseInt(request.getParameter("SHUANG1")));  //˫
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
		 Map<String,Integer>  zhList=new HashMap<String,Integer>(); //�ܺ�
		 zhList.put("DA", (request.getParameter("DA")=="")?0:Integer.parseInt(request.getParameter("DA")));    //��
		 zhList.put("XIAO", (request.getParameter("XIAO")=="")?0:Integer.parseInt(request.getParameter("XIAO")));  //С
		 zhList.put("DAN", (request.getParameter("DAN")=="")?0:Integer.parseInt(request.getParameter("DAN")));   //�� 
		 zhList.put("SHUANG", (request.getParameter("SHUANG")=="")?0:Integer.parseInt(request.getParameter("SHUANG")));  //˫ 
		 Map<String,Integer>  lhhList=new HashMap<String,Integer>(); //������		
		 lhhList.put("LONG", (request.getParameter("LONG")=="")?0:Integer.parseInt(request.getParameter("LONG")));   //��
		 lhhList.put("HU", (request.getParameter("HU")=="")?0:Integer.parseInt(request.getParameter("HU")));     //��
		 lhhList.put("HE", (request.getParameter("HE")=="")?0:Integer.parseInt(request.getParameter("HE")));  //��
		 Map<String,Integer>  qsqList=new HashMap<String,Integer>(); //ǰ����
		 qsqList.put("BAOZI", (request.getParameter("BAOZI")=="")?0:Integer.parseInt(request.getParameter("BAOZI")));  //����
		 qsqList.put("SHUNZI", (request.getParameter("SHUNZI")=="")?0:Integer.parseInt(request.getParameter("SHUNZI")));   //˳��
		 qsqList.put("DUIZI", (request.getParameter("DUIZI")=="")?0:Integer.parseInt(request.getParameter("DUIZI")));  //����
		 qsqList.put("BANSHUN", (request.getParameter("BANSHUN")=="")?0:Integer.parseInt(request.getParameter("BANSHUN")));  //��˳
		 qsqList.put("ZALIU", (request.getParameter("ZALIU")=="")?0:Integer.parseInt(request.getParameter("ZALIU")));  //����
		 Map<String,Integer>  zsqList=new HashMap<String,Integer>(); //������
		 zsqList.put("BAOZI", (request.getParameter("BAOZI1")=="")?0:Integer.parseInt(request.getParameter("BAOZI1")));  //����
		 zsqList.put("SHUNZI", (request.getParameter("SHUNZI1")=="")?0:Integer.parseInt(request.getParameter("SHUNZI1")));   //˳��
		 zsqList.put("DUIZI", (request.getParameter("DUIZI1")=="")?0:Integer.parseInt(request.getParameter("DUIZI1")));  //����
		 zsqList.put("BANSHUN", (request.getParameter("BANSHUN1")=="")?0:Integer.parseInt(request.getParameter("BANSHUN1")));  //��˳
		 zsqList.put("ZALIU", (request.getParameter("ZALIU1")=="")?0:Integer.parseInt(request.getParameter("ZALIU1")));  //����
		 Map<String,Integer>  hsqList=new HashMap<String,Integer>(); //������
		 hsqList.put("BAOZI", (request.getParameter("BAOZI2")=="")?0:Integer.parseInt(request.getParameter("BAOZI2")));  //����
		 hsqList.put("SHUNZI", (request.getParameter("SHUNZI2")=="")?0:Integer.parseInt(request.getParameter("SHUNZI2")));   //˳��
		 hsqList.put("DUIZI", (request.getParameter("DUIZI2")=="")?0:Integer.parseInt(request.getParameter("DUIZI2")));  //����
		 hsqList.put("BANSHUN", (request.getParameter("BANSHUN2")=="")?0:Integer.parseInt(request.getParameter("BANSHUN2")));  //��˳
		 hsqList.put("ZALIU", (request.getParameter("ZALIU2")=="")?0:Integer.parseInt(request.getParameter("ZALIU2")));  //����
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
			 orders.setMid(null);//��ԱID
			  orders.setStatus("0");//ע��״̬
			 orders.setOrderstatus(str_json_play);
			 orders.setInitamount(null);//ע��ԭʼ���
			 orders.setOrdertype("sscFIVE");//��Ϸ����
			 orders.setOrderdate(null);//��עʱ��
			 orders.setPeriodno("1");
			 jsksService.insertData(orders);
		return "sscFIVE";
		
	}
}
