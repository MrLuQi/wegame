package com.game.service.impl;

import net.sf.json.JSONObject;

import com.game.service.bjscService;
import com.game.util.common.Util_BJSC;

public class bjscServiceImpl implements bjscService {

	@Override
	public void BJSC_LM() {

		String json = null;//数据库获取的用户下注数据
		BJSC_LM_cal(json);
	}

	/**
	 * 北京赛车-两面 中奖分析
	 * @param json
	 * @return
	 */
	public static double  BJSC_LM_cal(String json)	
	{
	 int kaijian[]={10,1,4,3,7,5,6,2,8,9};
	 double sum=0;
	//  JSONObject myJsonObject = new JSONObject(json);
	  JSONObject topJson = JSONObject.fromObject(json); 
	  String category =topJson.get("category").toString();
	  String subcategory =topJson.get("subCategory").toString();
	  
	  JSONObject leafListJson=(JSONObject)topJson.get("leafList");
	  
	  JSONObject  gjzh  =(JSONObject)leafListJson.get("GYZH");
	  JSONObject  gj  =(JSONObject)leafListJson.get("GJ");
	  JSONObject  yj  =(JSONObject)leafListJson.get("YJ");
	  JSONObject  dsm  =(JSONObject)leafListJson.get("DSM");
	  JSONObject  dsim  =(JSONObject)leafListJson.get("DSIM");
	  JSONObject  dwm  =(JSONObject)leafListJson.get("DWM");
	  JSONObject  dlm  =(JSONObject)leafListJson.get("DLM");
	  JSONObject  dqm  =(JSONObject)leafListJson.get("DQM");
	  JSONObject  dbm  =(JSONObject)leafListJson.get("DBM");
	  JSONObject  djm  =(JSONObject)leafListJson.get("DJM");
	  JSONObject  dssm  =(JSONObject)leafListJson.get("DSSM");
	  
	  if (gjzh!=null)  //如果有投冠亚组合
	     {
		  sum=sum+Util_BJSC.da_LM(gjzh.optDouble("DA"),kaijian[0],kaijian[1],2.14);
		  sum=sum+Util_BJSC.xiao_LM(gjzh.optDouble("XIAO"),kaijian[0],kaijian[1],1.75);
		  sum=sum+Util_BJSC.dan_LM(gjzh.optDouble("DAN"),kaijian[0],kaijian[1],1.75);
		  sum=sum+Util_BJSC.shuang_LM(gjzh.optDouble("SHUANG"),kaijian[0],kaijian[1],2.14);
	     }
	  if (gj!=null)  //如果有投冠军
	     {
		  sum=sum+Util_BJSC.da_LM(gj.optDouble("DA"),kaijian[0],1.99);
		  sum=sum+Util_BJSC.xiao_LM(gj.optDouble("XIAO"),kaijian[0],1.99);
		  sum=sum+Util_BJSC.dan_LM(gj.optDouble("DAN"),kaijian[0],1.99);
		  sum=sum+Util_BJSC.shuang_LM(gj.optDouble("SHUANG"),kaijian[0],1.99);
		  sum=sum+Util_BJSC.long_LM(gj.optDouble("LONG1"),1,kaijian[0],kaijian[9],1.98);
		  sum=sum+Util_BJSC.hu_LM(gj.optDouble("HU1"),1,kaijian[0],kaijian[9],1.98);
		  
	     }
	  if (yj!=null)  //如果有投亚军
	     {
		  sum=sum+Util_BJSC.da_LM(yj.optDouble("DA"),kaijian[1],1.99);
		  sum=sum+Util_BJSC.xiao_LM(yj.optDouble("XIAO"),kaijian[1],1.99);
		  sum=sum+Util_BJSC.dan_LM(yj.optDouble("DAN"),kaijian[1],1.99);
		  sum=sum+Util_BJSC.shuang_LM(yj.optDouble("SHUANG"),kaijian[1],1.99);
		  sum=sum+Util_BJSC.long_LM(gj.optDouble("LONG2"),2,kaijian[1],kaijian[8],1.98);  
		  sum=sum+Util_BJSC.hu_LM(gj.optDouble("HU2"),2,kaijian[1],kaijian[8],1.98);
	     }
	  if (dsm!=null)  //如果有投第3名
	     {
		  sum=sum+Util_BJSC.da_LM(dsm.optDouble("DA"),kaijian[2],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dsm.optDouble("XIAO"),kaijian[2],1.99);
		  sum=sum+Util_BJSC.dan_LM(dsm.optDouble("DAN"),kaijian[2],1.99);
		  sum=sum+Util_BJSC.shuang_LM(dsm.optDouble("SHUANG"),kaijian[2],1.99);
		  sum=sum+Util_BJSC.long_LM(gj.optDouble("LONG3"),3,kaijian[2],kaijian[7],1.98);  
		  sum=sum+Util_BJSC.hu_LM(gj.optDouble("HU3"),3,kaijian[2],kaijian[7],1.98);
	     }
	  if (dsim!=null)  //如果有投第4名
	     {
		  sum=sum+Util_BJSC.da_LM(dsim.optDouble("DA"),kaijian[3],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dsim.optDouble("XIAO"),kaijian[3],1.99);
		  sum=sum+Util_BJSC.dan_LM(dsim.optDouble("DAN"),kaijian[3],1.99);
		  sum=sum+Util_BJSC.shuang_LM(dsim.optDouble("SHUANG"),kaijian[3],1.99);
		  sum=sum+Util_BJSC.long_LM(gj.optDouble("LONG4"),4,kaijian[3],kaijian[6],1.98);  
		  sum=sum+Util_BJSC.hu_LM(gj.optDouble("HU4"),4,kaijian[3],kaijian[6],1.98);
	     }
	  if (dwm!=null)  //如果有投第5名
	     {
		  sum=sum+Util_BJSC.da_LM(dwm.optDouble("DA"),kaijian[4],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dwm.optDouble("XIAO"),kaijian[4],1.99);
		  sum=sum+Util_BJSC.dan_LM(dwm.optDouble("DAN"),kaijian[4],1.99);
		  sum=sum+Util_BJSC.shuang_LM(dwm.optDouble("SHUANG"),kaijian[4],1.99);
		  sum=sum+Util_BJSC.long_LM(gj.optDouble("LONG5"),5,kaijian[4],kaijian[5],1.98);  
		  sum=sum+Util_BJSC.hu_LM(gj.optDouble("HU5"),5,kaijian[4],kaijian[5],1.98);
	     }
	  if (dlm!=null)  //如果有投第6名
	     {
		  sum=sum+Util_BJSC.da_LM(dlm.optDouble("DA"),kaijian[0],kaijian[5],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dlm.optDouble("XIAO"),kaijian[0],kaijian[5],1.99);
		 sum=sum+Util_BJSC.dan_LM(dlm.optDouble("DAN"),kaijian[0],kaijian[5],1.99);
		 sum=sum+Util_BJSC.shuang_LM(dlm.optDouble("SHUANG"),kaijian[0],kaijian[5],1.99);
	     }
	  if (dqm!=null)  //如果有投第7名
	     {
		  sum=sum+Util_BJSC.da_LM(dqm.optDouble("DA"),kaijian[0],kaijian[6],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dqm.optDouble("XIAO"),kaijian[0],kaijian[6],1.99);
		  sum=sum+Util_BJSC.dan_LM(dqm.optDouble("DAN"),kaijian[0],kaijian[6],1.99);
		  sum=sum+Util_BJSC.shuang_LM(dqm.optDouble("SHUANG"),kaijian[0],kaijian[6],1.99);
	     }	  
	  if (dbm!=null)  //如果有投第8名
	     {
		  sum=sum+Util_BJSC.da_LM(dbm.optDouble("DA"),kaijian[0],kaijian[7],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dbm.optDouble("XIAO"),kaijian[0],kaijian[7],1.99);
		  sum=sum+Util_BJSC.dan_LM(dbm.optDouble("DAN"),kaijian[0],kaijian[7],1.99);
		  sum=sum+Util_BJSC.shuang_LM(dbm.optDouble("SHUANG"),kaijian[0],kaijian[7],1.99);
	     }	  
	  if (djm!=null)  //如果有投第9名
	     {
		  sum=sum+Util_BJSC.da_LM(djm.optDouble("DA"),kaijian[0],kaijian[8],1.99);
		  sum=sum+Util_BJSC.xiao_LM(djm.optDouble("XIAO"),kaijian[0],kaijian[8],1.99);
		  sum=sum+Util_BJSC.dan_LM(djm.optDouble("DAN"),kaijian[0],kaijian[8],1.99);
		  sum=sum+Util_BJSC.shuang_LM(djm.optDouble("SHUANG"),kaijian[0],kaijian[8],1.99);
	     }	  
	  if (dssm!=null)  //如果有投第10名
	     {
		  sum=sum+Util_BJSC.da_LM(dssm.optDouble("DA"),kaijian[0],kaijian[9],1.99);
		  sum=sum+Util_BJSC.xiao_LM(dssm.optDouble("XIAO"),kaijian[0],kaijian[9],1.99);
		  sum=sum+Util_BJSC.dan_LM(dssm.optDouble("DAN"),kaijian[0],kaijian[9],1.99);
		  sum=sum+Util_BJSC.shuang_LM(dssm.optDouble("SHUANG"),kaijian[0],kaijian[9],1.99);
	     }	  
	  return sum;
	}
	
	
	
	
	@Override
	public void BJSC_GYJH() {
String json=null;
BJSC_GY_cal(json);

	}
	/**
	 * 北京赛车-冠亚军组合中奖分析
	 * @param json
	 * @return
	 */
	public static double  BJSC_GY_cal(String json){
		 int kaijian[]={10,1,4,3,7,5,6,2,8,9};
		double sum=0;
		
	//  JSONObject myJsonObject = new JSONObject(json);
		  JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();
		  String subcategory =topJson.get("subCategory").toString();
		  
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");
		  
		  JSONObject  gjzh  =(JSONObject)leafListJson.get("GYJH");
		if (!gjzh.isEmpty()) {
			
		sum= sum+Util_BJSC.da_GYZH(gjzh.optDouble("DA"), kaijian[0], kaijian[1], 2.14);
		sum= sum+Util_BJSC.xiao_GYZH(gjzh.optDouble("XIAO"), kaijian[0], kaijian[1], 1.75);
		sum= sum+Util_BJSC.dan_GYZH(gjzh.optDouble("DAN"), kaijian[0], kaijian[1], 1.75);
		sum= sum+Util_BJSC.shuang_GYZH(gjzh.optDouble("SHAUNG"), kaijian[0], kaijian[1], 2.14);
        sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("THREE"), 3, kaijian[0], kaijian[1], 39.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("FOUR"), 4, kaijian[0], kaijian[1], 39.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("FIVE"), 5, kaijian[0], kaijian[1], 18.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("SIX"), 6, kaijian[0], kaijian[1], 18.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("SEVEN"), 7, kaijian[0], kaijian[1], 12.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("EIGHT"), 8, kaijian[0], kaijian[1], 12.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("NINE"), 9, kaijian[0], kaijian[1], 9.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("TEN"), 10, kaijian[0], kaijian[1], 9.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("ELEVEN"), 11, kaijian[0], kaijian[1], 7.20);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("TWELVE"), 12, kaijian[0], kaijian[1], 9.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("THIRTEEN"), 13, kaijian[0], kaijian[1], 9.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("FOURTEEN"), 14, kaijian[0], kaijian[1], 12.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("FIFTEEN"), 15, kaijian[0], kaijian[1], 12.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("SIXTEEN"), 16, kaijian[0], kaijian[1], 18.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("SENENTEEN"), 17, kaijian[0], kaijian[1], 18.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("EIGHTEEN"), 18, kaijian[0], kaijian[1], 39.00);
		sum=sum+Util_BJSC.ninteen_GYZH(gjzh.optDouble("NINETEEN"), 19, kaijian[0], kaijian[1], 39.00);
		}
		
		return sum;
		
	}
	
	
	
	
	@Override
	public void BJSC_DH() {
		String json = null;
		BJSC_DH_cal(json);
		
	}
	public static double  BJSC_DH_cal(String json){
		int kaijiang[]={1,2,4,5,7,7,8,9,10,4};
		double sum=0;
		
		
	//  JSONObject myJsonObject = new JSONObject(json);
		  JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();
		  String subcategory =topJson.get("subCategory").toString();
		  
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");
		  
		  JSONObject  gj  =(JSONObject)leafListJson.get("GJ");
		  JSONObject  yj  =(JSONObject)leafListJson.get("YJ");
		  JSONObject  dsm  =(JSONObject)leafListJson.get("DSM");
		  JSONObject  dsim  =(JSONObject)leafListJson.get("DSIM");
		  JSONObject  dwm  =(JSONObject)leafListJson.get("DWM");
		  JSONObject  dlm  =(JSONObject)leafListJson.get("DLM");
		  JSONObject  dqm  =(JSONObject)leafListJson.get("DQM");
		  JSONObject  dbm  =(JSONObject)leafListJson.get("DBM");
		  JSONObject  djm  =(JSONObject)leafListJson.get("DJM");
		  JSONObject  dssm  =(JSONObject)leafListJson.get("DSSM");
		  
		  
		  
		  if (gj!=null)  //如果有投冠军
		     {
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("ONE"), 1, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("TWO"), 2, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("THRE"), 3, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("FOUR"), 4, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("FIVE"), 5, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("SIX"), 6, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("SENEN"), 7, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("EIGHT"), 8, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("NINE"), 9, kaijiang[0], 9.95);
			 sum=sum+Util_BJSC.ten_DH(gj.optDouble("TEN"), 10, kaijiang[0], 9.95);
		     }
		  if (yj!=null)  //如果有投亚军
		     {
			     sum=sum+Util_BJSC.ten_DH(yj.optDouble("ONE"), 1, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("TWO"), 2, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("THRE"), 3, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("FOUR"), 4, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("FIVE"), 5, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("SIX"), 6, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("SENEN"), 7, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("EIGHT"), 8, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("NINE"), 9, kaijiang[1], 9.95);
				 sum=sum+Util_BJSC.ten_DH(yj.optDouble("TEN"), 10, kaijiang[1], 9.95);
		     }
		  if (dsm!=null)  //如果有投第3名
		     {
			     sum=sum+Util_BJSC.ten_DH(dsm.optDouble("ONE"), 1, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("TWO"), 2, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("THRE"), 3, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("FOUR"), 4, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("FIVE"), 5, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("SIX"), 6, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("SENEN"), 7, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("EIGHT"), 8, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("NINE"), 9, kaijiang[2], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsm.optDouble("TEN"), 10, kaijiang[2], 9.95);
		     }
		  if (dsim!=null)  //如果有投第4名
		     {
			     sum=sum+Util_BJSC.ten_DH(dsim.optDouble("ONE"), 1, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("TWO"), 2, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("THRE"), 3, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("FOUR"), 4, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("FIVE"), 5, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("SIX"), 6, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("SENEN"), 7, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("EIGHT"), 8, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("NINE"), 9, kaijiang[3], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dsim.optDouble("TEN"), 10, kaijiang[3], 9.95);
		     }
		  if (dwm!=null)  //如果有投第5名
		     {
			     sum=sum+Util_BJSC.ten_DH(dwm.optDouble("ONE"), 1, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("TWO"), 2, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("THRE"), 3, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("FOUR"), 4, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("FIVE"), 5, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("SIX"), 6, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("SENEN"), 7, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("EIGHT"), 8, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("NINE"), 9, kaijiang[4], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dwm.optDouble("TEN"), 10, kaijiang[4], 9.95);
		     }
		  if (dlm!=null)  //如果有投第6名
		     {
			     sum=sum+Util_BJSC.ten_DH(dlm.optDouble("ONE"), 1, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("TWO"), 2, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("THRE"), 3, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("FOUR"), 4, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("FIVE"), 5, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("SIX"), 6, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("SENEN"), 7, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("EIGHT"), 8, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("NINE"), 9, kaijiang[5], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dlm.optDouble("TEN"), 10, kaijiang[5], 9.95);
		     }
		  if (dqm!=null)  //如果有投第7名
		     {
			     sum=sum+Util_BJSC.ten_DH(dqm.optDouble("ONE"), 1, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("TWO"), 2, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("THRE"), 3, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("FOUR"), 4, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("FIVE"), 5, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("SIX"), 6, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("SENEN"), 7, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("EIGHT"), 8, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("NINE"), 9, kaijiang[6], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dqm.optDouble("TEN"), 10, kaijiang[6], 9.95);
		     }	  
		  if (dbm!=null)  //如果有投第8名
		     {
			     sum=sum+Util_BJSC.ten_DH(dbm.optDouble("ONE"), 1, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("TWO"), 2, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("THRE"), 3, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("FOUR"), 4, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("FIVE"), 5, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("SIX"), 6, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("SENEN"), 7, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("EIGHT"), 8, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("NINE"), 9, kaijiang[7], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dbm.optDouble("TEN"), 10, kaijiang[7], 9.95);
		     }	  
		  if (djm!=null)  //如果有投第9名
		     {
			     sum=sum+Util_BJSC.ten_DH(dbm.optDouble("ONE"), 1, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("TWO"), 2, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("THRE"), 3, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("FOUR"), 4, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("FIVE"), 5, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("SIX"), 6, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("SENEN"), 7, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("EIGHT"), 8, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("NINE"), 9, kaijiang[8], 9.95);
				 sum=sum+Util_BJSC.ten_DH(djm.optDouble("TEN"), 10, kaijiang[8], 9.95);
		     }	  
		  if (dssm!=null)  //如果有投第10名
		     {
			     sum=sum+Util_BJSC.ten_DH(dssm.optDouble("ONE"), 1, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("TWO"), 2, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("THRE"), 3, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("FOUR"), 4, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("FIVE"), 5, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("SIX"), 6, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("SENEN"), 7, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("EIGHT"), 8, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("NINE"), 9, kaijiang[9], 9.95);
				 sum=sum+Util_BJSC.ten_DH(dssm.optDouble("TEN"), 10, kaijiang[9], 9.95);
		     }	  
		 
		  
		  
		return sum;
		
	}
}
