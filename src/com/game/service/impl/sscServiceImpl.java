package com.game.service.impl;

import net.sf.json.JSONObject;

import com.game.service.sscService;
import com.game.util.common.Util_SSC;

public class sscServiceImpl implements sscService  {
	/**
	 * 时时彩--两面玩法
	 * @param json
	 * @return 中奖金额
	 */
	@Override
	public double SSC_LM_cal(String json) {
		//开奖号码
		 int kaijiang[]={3,6,1,9,4};
		 //开奖号码总和
		 int nums=kaijiang[0]+kaijiang[1]+kaijiang[2]+kaijiang[3]+kaijiang[4];
		 //中奖金额
		 double sum=0.0;
		//  JSONObject myJsonObject = new JSONObject(json);
		  JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();//时时彩
		  String subcategory =topJson.get("subCategory").toString();//两面玩法
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");//页面数据		  
		  JSONObject  zh  =(JSONObject)leafListJson.get("ZH");
		  JSONObject  lhh  =(JSONObject)leafListJson.get("LHH");
		  JSONObject  ww  =(JSONObject)leafListJson.get("WW");
		  JSONObject  qw  =(JSONObject)leafListJson.get("QW");
		  JSONObject  bw  =(JSONObject)leafListJson.get("BW");
		  JSONObject  sw  =(JSONObject)leafListJson.get("SW");
		  JSONObject  gw  =(JSONObject)leafListJson.get("GW");
		  JSONObject  qsq  =(JSONObject)leafListJson.get("QSQ");
		  JSONObject  zsq  =(JSONObject)leafListJson.get("ZSQ");
		  JSONObject  hsq  =(JSONObject)leafListJson.get("HSQ");
		  if(zh != null)//如有投总和
		  {
			sum=sum+Util_SSC.daNums_LM(zh.optDouble("DA"), nums, 1.98);
			sum=sum+Util_SSC.xiaoNums_LM(zh.optDouble("XIAO"), nums, 1.98); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), nums, 1.98);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), nums, 1.98); 
		  }
		  if(lhh != null)//如有投龙虎和
		  {
			sum=sum+Util_SSC.long_LM(lhh.optDouble("LONG"), kaijiang[0], kaijiang[4], 1.98);
			sum=sum+Util_SSC.hu_LM(lhh.optDouble("HU"), kaijiang[0], kaijiang[4], 1.98); 
			sum=sum+Util_SSC.he_LM(lhh.optDouble("HE"), kaijiang[0], kaijiang[4], 8.80) ;
		  }
		  if(ww != null)//如有投万位
		  {
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("ZERO"), 0, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("ONE"), 1, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("TWO"), 2, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("THREE"), 3, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("FOUR"), 4, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("FIVE"), 5, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("SIX"), 6, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("SEVEN"), 7, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("EIGHT"), 8, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(ww.optDouble("NINE"), 9, kaijiang[0], 9.95);		
		  }
		  if(qw != null)//如有投千位
		  {
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("ZERO"), 0, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("ONE"), 1, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("TWO"), 2, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("THREE"), 3, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("FOUR"), 4, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("FIVE"), 5, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("SIX"), 6, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("SEVEN"), 7, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("EIGHT"), 8, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(qw.optDouble("NINE"), 9, kaijiang[1], 9.95);		
		  }
		  if(bw != null)//如有投百位
		  {
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("ZERO"), 0, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("ONE"), 1, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("TWO"), 2, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("THREE"), 3, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("FOUR"), 4, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("FIVE"), 5, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("SIX"), 6, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("SEVEN"), 7, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("EIGHT"), 8, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(bw.optDouble("NINE"), 9, kaijiang[2], 9.95);		
		  }
		  if(sw != null)//如有投十位
		  {
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("ZERO"), 0, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("ONE"), 1, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("TWO"), 2, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("THREE"), 3, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("FOUR"), 4, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("FIVE"), 5, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("SIX"), 6, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("SEVEN"), 7, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("EIGHT"), 8, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(sw.optDouble("NINE"), 9, kaijiang[3], 9.95);		
		  }
		  if(gw != null)//如有投个位
		  {
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("ZERO"), 0, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("ONE"), 1, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("TWO"), 2, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("THREE"), 3, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("FOUR"), 4, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("FIVE"), 5, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("SIX"), 6, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("SEVEN"), 7, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("EIGHT"), 8, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(gw.optDouble("NINE"), 9, kaijiang[4], 9.95);		
		  }
		  if(qsq!=null)//如有投前三球
		  {
			 sum=sum+Util_SSC.bz_LM(qsq.optDouble("BAOZI"), kaijiang[0], kaijiang[1], kaijiang[2], 69.00);
			 sum=sum+Util_SSC.sz_LM(qsq.optDouble("SHUNZI"), kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			 sum=sum+Util_SSC.dz_LM(qsq.optDouble("DUIZI"), kaijiang[0], kaijiang[1], kaijiang[2], 2.55);
			 sum=sum+Util_SSC.bs_LM(qsq.optDouble("BANSHUN"), kaijiang[0], kaijiang[1], kaijiang[2], 1.80);
			 sum=sum+Util_SSC.zl_LM(qsq.optDouble("ZALIU"), kaijiang[0], kaijiang[1], kaijiang[2], 2.00);
		  }
		  if(zsq!=null)//如有投中三球
		  {
			 sum=sum+Util_SSC.bz_LM(zsq.optDouble("BAOZI"), kaijiang[1], kaijiang[2], kaijiang[3], 69.00);
			 sum=sum+Util_SSC.dz_LM(zsq.optDouble("SHUNZI"), kaijiang[1], kaijiang[2], kaijiang[3], 11.00);
			 sum=sum+Util_SSC.sz_LM(zsq.optDouble("DUIZI"), kaijiang[1], kaijiang[2], kaijiang[3], 2.55);
			 sum=sum+Util_SSC.bs_LM(zsq.optDouble("BANSHUN"), kaijiang[1], kaijiang[2], kaijiang[3], 1.80);
			 sum=sum+Util_SSC.zl_LM(zsq.optDouble("ZALIU"), kaijiang[1], kaijiang[2], kaijiang[3], 2.00);
		  }
		  if(hsq!=null)//如有投后三球
		  {
			 sum=sum+Util_SSC.bz_LM(hsq.optDouble("BAOZI"), kaijiang[2], kaijiang[3], kaijiang[4], 69.00);
			 sum=sum+Util_SSC.sz_LM(hsq.optDouble("SHUNZI"), kaijiang[2], kaijiang[3], kaijiang[4], 11.00);
			 sum=sum+Util_SSC.dz_LM(hsq.optDouble("DUIZI"), kaijiang[2], kaijiang[3], kaijiang[4], 2.55);
			 sum=sum+Util_SSC.bs_LM(hsq.optDouble("BANSHUN"), kaijiang[2], kaijiang[3], kaijiang[4], 1.80);
			 sum=sum+Util_SSC.zl_LM(hsq.optDouble("ZALIU"), kaijiang[2], kaijiang[3], kaijiang[4], 2.00);
		  }
		return sum;		
	}
	/**
	 * 时时彩--第一球玩法
	 * @param json
	 * @return 中奖金额
	 */
	@Override
	public double SSC_DYIQ_cal(String json) {
		//开奖号码
		int kaijiang[]={3,6,1,9,4};
		//开奖号码总和
		 int nums=kaijiang[0]+kaijiang[1]+kaijiang[2]+kaijiang[3]+kaijiang[4];
		 //第一球
		 int num=kaijiang[0];
		 //中奖金额
		 double sum=0.0;
		 JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();//时时彩
		  String subcategory =topJson.get("subCategory").toString();//第一球玩法
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");//页面数据		  
		  JSONObject  dh  =(JSONObject)leafListJson.get("DH");
		  JSONObject  zh  =(JSONObject)leafListJson.get("ZH");
		  JSONObject  lhh  =(JSONObject)leafListJson.get("LHH");
		  JSONObject  qsq  =(JSONObject)leafListJson.get("QSQ");
		  JSONObject  zsq  =(JSONObject)leafListJson.get("ZSQ");
		  JSONObject  hsq  =(JSONObject)leafListJson.get("HSQ");
		  if(dh != null)//如有投单号
		  {
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ZERO"), 0, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ONE"), 1, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("TWO"), 2, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("THREE"), 3, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FOUR"), 4, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FIVE"), 5, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SIX"), 6, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SEVEN"), 7, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("EIGHT"), 8, kaijiang[0], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("NINE"), 9, kaijiang[0], 9.95);
			sum=sum+Util_SSC.da_LM(zh.optDouble("DA"), num, 1.99);
			sum=sum+Util_SSC.xiao_LM(zh.optDouble("XIAO"), num, 1.99); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), num, 1.99);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), num, 1.99); 
		  }
		  if(zh != null)//如有投总和
		  {
			sum=sum+Util_SSC.daNums_LM(zh.optDouble("DA"), nums, 1.98);
			sum=sum+Util_SSC.xiaoNums_LM(zh.optDouble("XIAO"), nums, 1.98); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), nums, 1.98);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), nums, 1.98); 
		  }
		  if(lhh != null)//如有投龙虎和
		  {
			sum=sum+Util_SSC.long_LM(lhh.optDouble("LONG"), kaijiang[0], kaijiang[4], 1.98);
			sum=sum+Util_SSC.hu_LM(lhh.optDouble("HU"), kaijiang[0], kaijiang[4], 1.98); 
			sum=sum+Util_SSC.he_LM(lhh.optDouble("HE"), kaijiang[0], kaijiang[4], 8.80) ;
		  }
		  if(qsq!=null)//如有投前三球
		  {
			 sum=sum+Util_SSC.bz_LM(qsq.optDouble("BAOZI"), kaijiang[0], kaijiang[1], kaijiang[2], 69.00);
			 sum=sum+Util_SSC.sz_LM(qsq.optDouble("SHUNZI"), kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			 sum=sum+Util_SSC.dz_LM(qsq.optDouble("DUIZI"), kaijiang[0], kaijiang[1], kaijiang[2], 2.55);
			 sum=sum+Util_SSC.bs_LM(qsq.optDouble("BANSHUN"), kaijiang[0], kaijiang[1], kaijiang[2], 1.80);
			 sum=sum+Util_SSC.zl_LM(qsq.optDouble("ZALIU"), kaijiang[0], kaijiang[1], kaijiang[2], 2.00);
		  }
		  if(zsq!=null)//如有投中三球
		  {
			 sum=sum+Util_SSC.bz_LM(zsq.optDouble("BAOZI"), kaijiang[1], kaijiang[2], kaijiang[3], 69.00);
			 sum=sum+Util_SSC.dz_LM(zsq.optDouble("SHUNZI"), kaijiang[1], kaijiang[2], kaijiang[3], 11.00);
			 sum=sum+Util_SSC.sz_LM(zsq.optDouble("DUIZI"), kaijiang[1], kaijiang[2], kaijiang[3], 2.55);
			 sum=sum+Util_SSC.bs_LM(zsq.optDouble("BANSHUN"), kaijiang[1], kaijiang[2], kaijiang[3], 1.80);
			 sum=sum+Util_SSC.zl_LM(zsq.optDouble("ZALIU"), kaijiang[1], kaijiang[2], kaijiang[3], 2.00);
		  }
		  if(hsq!=null)//如有投后三球
		  {
			 sum=sum+Util_SSC.bz_LM(hsq.optDouble("BAOZI"), kaijiang[2], kaijiang[3], kaijiang[4], 69.00);
			 sum=sum+Util_SSC.sz_LM(hsq.optDouble("SHUNZI"), kaijiang[2], kaijiang[3], kaijiang[4], 11.00);
			 sum=sum+Util_SSC.dz_LM(hsq.optDouble("DUIZI"), kaijiang[2], kaijiang[3], kaijiang[4], 2.55);
			 sum=sum+Util_SSC.bs_LM(hsq.optDouble("BANSHUN"), kaijiang[2], kaijiang[3], kaijiang[4], 1.80);
			 sum=sum+Util_SSC.zl_LM(hsq.optDouble("ZALIU"), kaijiang[2], kaijiang[3], kaijiang[4], 2.00);
		  }
		return sum;
	}
	/**
	 * 时时彩--第二球玩法
	 * @param json
	 * @return 中奖金额
	 */
	@Override
	public double SSC_DERQ_cal(String json) {
		//开奖号码
		int kaijiang[]={3,6,1,9,4};
		//开奖号码总和
		 int nums=kaijiang[0]+kaijiang[1]+kaijiang[2]+kaijiang[3]+kaijiang[4];
		 //第二球
		 int num=kaijiang[1];
		 //中奖金额
		 double sum=0.0;
		 JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();//时时彩
		  String subcategory =topJson.get("subCategory").toString();//第二球玩法
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");//页面数据		  
		  JSONObject  dh  =(JSONObject)leafListJson.get("DH");
		  JSONObject  zh  =(JSONObject)leafListJson.get("ZH");
		  JSONObject  lhh  =(JSONObject)leafListJson.get("LHH");
		  JSONObject  qsq  =(JSONObject)leafListJson.get("QSQ");
		  JSONObject  zsq  =(JSONObject)leafListJson.get("ZSQ");
		  JSONObject  hsq  =(JSONObject)leafListJson.get("HSQ");
		  if(dh != null)//如有投单号
		  {
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ZERO"), 0, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ONE"), 1, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("TWO"), 2, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("THREE"), 3, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FOUR"), 4, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FIVE"), 5, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SIX"), 6, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SEVEN"), 7, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("EIGHT"), 8, kaijiang[1], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("NINE"), 9, kaijiang[1], 9.95);
			sum=sum+Util_SSC.da_LM(zh.optDouble("DA"), num, 1.99);
			sum=sum+Util_SSC.xiao_LM(zh.optDouble("XIAO"), num, 1.99); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), num, 1.99);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), num, 1.99); 
		  }
		  if(zh != null)//如有投总和
		  {
			sum=sum+Util_SSC.daNums_LM(zh.optDouble("DA"), nums, 1.98);
			sum=sum+Util_SSC.xiaoNums_LM(zh.optDouble("XIAO"), nums, 1.98); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), nums, 1.98);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), nums, 1.98); 
		  }
		  if(lhh != null)//如有投龙虎和
		  {
			sum=sum+Util_SSC.long_LM(lhh.optDouble("LONG"), kaijiang[0], kaijiang[4], 1.98);
			sum=sum+Util_SSC.hu_LM(lhh.optDouble("HU"), kaijiang[0], kaijiang[4], 1.98); 
			sum=sum+Util_SSC.he_LM(lhh.optDouble("HE"), kaijiang[0], kaijiang[4], 8.80) ;
		  }
		  if(qsq!=null)//如有投前三球
		  {
			 sum=sum+Util_SSC.bz_LM(qsq.optDouble("BAOZI"), kaijiang[0], kaijiang[1], kaijiang[2], 69.00);
			 sum=sum+Util_SSC.sz_LM(qsq.optDouble("SHUNZI"), kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			 sum=sum+Util_SSC.dz_LM(qsq.optDouble("DUIZI"), kaijiang[0], kaijiang[1], kaijiang[2], 2.55);
			 sum=sum+Util_SSC.bs_LM(qsq.optDouble("BANSHUN"), kaijiang[0], kaijiang[1], kaijiang[2], 1.80);
			 sum=sum+Util_SSC.zl_LM(qsq.optDouble("ZALIU"), kaijiang[0], kaijiang[1], kaijiang[2], 2.00);
		  }
		  if(zsq!=null)//如有投中三球
		  {
			 sum=sum+Util_SSC.bz_LM(zsq.optDouble("BAOZI"), kaijiang[1], kaijiang[2], kaijiang[3], 69.00);
			 sum=sum+Util_SSC.dz_LM(zsq.optDouble("SHUNZI"), kaijiang[1], kaijiang[2], kaijiang[3], 11.00);
			 sum=sum+Util_SSC.sz_LM(zsq.optDouble("DUIZI"), kaijiang[1], kaijiang[2], kaijiang[3], 2.55);
			 sum=sum+Util_SSC.bs_LM(zsq.optDouble("BANSHUN"), kaijiang[1], kaijiang[2], kaijiang[3], 1.80);
			 sum=sum+Util_SSC.zl_LM(zsq.optDouble("ZALIU"), kaijiang[1], kaijiang[2], kaijiang[3], 2.00);
		  }
		  if(hsq!=null)//如有投后三球
		  {
			 sum=sum+Util_SSC.bz_LM(hsq.optDouble("BAOZI"), kaijiang[2], kaijiang[3], kaijiang[4], 69.00);
			 sum=sum+Util_SSC.sz_LM(hsq.optDouble("SHUNZI"), kaijiang[2], kaijiang[3], kaijiang[4], 11.00);
			 sum=sum+Util_SSC.dz_LM(hsq.optDouble("DUIZI"), kaijiang[2], kaijiang[3], kaijiang[4], 2.55);
			 sum=sum+Util_SSC.bs_LM(hsq.optDouble("BANSHUN"), kaijiang[2], kaijiang[3], kaijiang[4], 1.80);
			 sum=sum+Util_SSC.zl_LM(hsq.optDouble("ZALIU"), kaijiang[2], kaijiang[3], kaijiang[4], 2.00);
		  }
		return sum;	
	}
	/**
	 * 时时彩--第三球玩法
	 * @param json
	 * @return 中奖金额
	 */
	@Override
	public double SSC_DSANQ_cal(String json) {
		//开奖号码
		int kaijiang[]={3,6,1,9,4};
		//开奖号码总和
		 int nums=kaijiang[0]+kaijiang[1]+kaijiang[2]+kaijiang[3]+kaijiang[4];
		 //第三球
		 int num=kaijiang[2];
		 //中奖金额
		 double sum=0.0;
		 JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();//时时彩
		  String subcategory =topJson.get("subCategory").toString();//第三球玩法
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");//页面数据		  
		  JSONObject  dh  =(JSONObject)leafListJson.get("DH");
		  JSONObject  zh  =(JSONObject)leafListJson.get("ZH");
		  JSONObject  lhh  =(JSONObject)leafListJson.get("LHH");
		  JSONObject  qsq  =(JSONObject)leafListJson.get("QSQ");
		  JSONObject  zsq  =(JSONObject)leafListJson.get("ZSQ");
		  JSONObject  hsq  =(JSONObject)leafListJson.get("HSQ");
		  if(dh != null)//如有投单号
		  {
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ZERO"), 0, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ONE"), 1, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("TWO"), 2, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("THREE"), 3, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FOUR"), 4, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FIVE"), 5, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SIX"), 6, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SEVEN"), 7, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("EIGHT"), 8, kaijiang[2], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("NINE"), 9, kaijiang[2], 9.95);
			sum=sum+Util_SSC.da_LM(zh.optDouble("DA"), num, 1.99);
			sum=sum+Util_SSC.xiao_LM(zh.optDouble("XIAO"), num, 1.99); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), num, 1.99);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), num, 1.99); 
		  }
		  if(zh != null)//如有投总和
		  {
			sum=sum+Util_SSC.daNums_LM(zh.optDouble("DA"), nums, 1.98);
			sum=sum+Util_SSC.xiaoNums_LM(zh.optDouble("XIAO"), nums, 1.98); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), nums, 1.98);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), nums, 1.98); 
		  }
		  if(lhh != null)//如有投龙虎和
		  {
			sum=sum+Util_SSC.long_LM(lhh.optDouble("LONG"), kaijiang[0], kaijiang[4], 1.98);
			sum=sum+Util_SSC.hu_LM(lhh.optDouble("HU"), kaijiang[0], kaijiang[4], 1.98); 
			sum=sum+Util_SSC.he_LM(lhh.optDouble("HE"), kaijiang[0], kaijiang[4], 8.80) ;
		  }
		  if(qsq!=null)//如有投前三球
		  {
			 sum=sum+Util_SSC.bz_LM(qsq.optDouble("BAOZI"), kaijiang[0], kaijiang[1], kaijiang[2], 69.00);
			 sum=sum+Util_SSC.sz_LM(qsq.optDouble("SHUNZI"), kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			 sum=sum+Util_SSC.dz_LM(qsq.optDouble("DUIZI"), kaijiang[0], kaijiang[1], kaijiang[2], 2.55);
			 sum=sum+Util_SSC.bs_LM(qsq.optDouble("BANSHUN"), kaijiang[0], kaijiang[1], kaijiang[2], 1.80);
			 sum=sum+Util_SSC.zl_LM(qsq.optDouble("ZALIU"), kaijiang[0], kaijiang[1], kaijiang[2], 2.00);
		  }
		  if(zsq!=null)//如有投中三球
		  {
			 sum=sum+Util_SSC.bz_LM(zsq.optDouble("BAOZI"), kaijiang[1], kaijiang[2], kaijiang[3], 69.00);
			 sum=sum+Util_SSC.dz_LM(zsq.optDouble("SHUNZI"), kaijiang[1], kaijiang[2], kaijiang[3], 11.00);
			 sum=sum+Util_SSC.sz_LM(zsq.optDouble("DUIZI"), kaijiang[1], kaijiang[2], kaijiang[3], 2.55);
			 sum=sum+Util_SSC.bs_LM(zsq.optDouble("BANSHUN"), kaijiang[1], kaijiang[2], kaijiang[3], 1.80);
			 sum=sum+Util_SSC.zl_LM(zsq.optDouble("ZALIU"), kaijiang[1], kaijiang[2], kaijiang[3], 2.00);
		  }
		  if(hsq!=null)//如有投后三球
		  {
			 sum=sum+Util_SSC.bz_LM(hsq.optDouble("BAOZI"), kaijiang[2], kaijiang[3], kaijiang[4], 69.00);
			 sum=sum+Util_SSC.sz_LM(hsq.optDouble("SHUNZI"), kaijiang[2], kaijiang[3], kaijiang[4], 11.00);
			 sum=sum+Util_SSC.dz_LM(hsq.optDouble("DUIZI"), kaijiang[2], kaijiang[3], kaijiang[4], 2.55);
			 sum=sum+Util_SSC.bs_LM(hsq.optDouble("BANSHUN"), kaijiang[2], kaijiang[3], kaijiang[4], 1.80);
			 sum=sum+Util_SSC.zl_LM(hsq.optDouble("ZALIU"), kaijiang[2], kaijiang[3], kaijiang[4], 2.00);
		  }
		return sum;
	}
	/**
	 * 时时彩--第四球玩法
	 * @param json
	 * @return 中奖金额
	 */
	@Override
	public double SSC_DSIQ_cal(String json) {
		//开奖号码
		int kaijiang[]={3,6,1,9,4};
		//开奖号码总和
		 int nums=kaijiang[0]+kaijiang[1]+kaijiang[2]+kaijiang[3]+kaijiang[4];
		 //第四球
		 int num=kaijiang[3];
		 //中奖金额
		 double sum=0.0;
		 JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();//时时彩
		  String subcategory =topJson.get("subCategory").toString();//第四球玩法
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");//页面数据		  
		  JSONObject  dh  =(JSONObject)leafListJson.get("DH");
		  JSONObject  zh  =(JSONObject)leafListJson.get("ZH");
		  JSONObject  lhh  =(JSONObject)leafListJson.get("LHH");
		  JSONObject  qsq  =(JSONObject)leafListJson.get("QSQ");
		  JSONObject  zsq  =(JSONObject)leafListJson.get("ZSQ");
		  JSONObject  hsq  =(JSONObject)leafListJson.get("HSQ");
		  if(dh != null)//如有投单号
		  {
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ZERO"), 0, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ONE"), 1, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("TWO"), 2, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("THREE"), 3, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FOUR"), 4, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FIVE"), 5, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SIX"), 6, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SEVEN"), 7, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("EIGHT"), 8, kaijiang[3], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("NINE"), 9, kaijiang[3], 9.95);
			sum=sum+Util_SSC.da_LM(zh.optDouble("DA"), num, 1.99);
			sum=sum+Util_SSC.xiao_LM(zh.optDouble("XIAO"), num, 1.99); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), num, 1.99);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), num, 1.99); 
		  }
		  if(zh != null)//如有投总和
		  {
			sum=sum+Util_SSC.daNums_LM(zh.optDouble("DA"), nums, 1.98);
			sum=sum+Util_SSC.xiaoNums_LM(zh.optDouble("XIAO"), nums, 1.98); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), nums, 1.98);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), nums, 1.98); 
		  }
		  if(lhh != null)//如有投龙虎和
		  {
			sum=sum+Util_SSC.long_LM(lhh.optDouble("LONG"), kaijiang[0], kaijiang[4], 1.98);
			sum=sum+Util_SSC.hu_LM(lhh.optDouble("HU"), kaijiang[0], kaijiang[4], 1.98); 
			sum=sum+Util_SSC.he_LM(lhh.optDouble("HE"), kaijiang[0], kaijiang[4], 8.80) ;
		  }
		  if(qsq!=null)//如有投前三球
		  {
			 sum=sum+Util_SSC.bz_LM(qsq.optDouble("BAOZI"), kaijiang[0], kaijiang[1], kaijiang[2], 69.00);
			 sum=sum+Util_SSC.sz_LM(qsq.optDouble("SHUNZI"), kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			 sum=sum+Util_SSC.dz_LM(qsq.optDouble("DUIZI"), kaijiang[0], kaijiang[1], kaijiang[2], 2.55);
			 sum=sum+Util_SSC.bs_LM(qsq.optDouble("BANSHUN"), kaijiang[0], kaijiang[1], kaijiang[2], 1.80);
			 sum=sum+Util_SSC.zl_LM(qsq.optDouble("ZALIU"), kaijiang[0], kaijiang[1], kaijiang[2], 2.00);
		  }
		  if(zsq!=null)//如有投中三球
		  {
			 sum=sum+Util_SSC.bz_LM(zsq.optDouble("BAOZI"), kaijiang[1], kaijiang[2], kaijiang[3], 69.00);
			 sum=sum+Util_SSC.dz_LM(zsq.optDouble("SHUNZI"), kaijiang[1], kaijiang[2], kaijiang[3], 11.00);
			 sum=sum+Util_SSC.sz_LM(zsq.optDouble("DUIZI"), kaijiang[1], kaijiang[2], kaijiang[3], 2.55);
			 sum=sum+Util_SSC.bs_LM(zsq.optDouble("BANSHUN"), kaijiang[1], kaijiang[2], kaijiang[3], 1.80);
			 sum=sum+Util_SSC.zl_LM(zsq.optDouble("ZALIU"), kaijiang[1], kaijiang[2], kaijiang[3], 2.00);
		  }
		  if(hsq!=null)//如有投后三球
		  {
			 sum=sum+Util_SSC.bz_LM(hsq.optDouble("BAOZI"), kaijiang[2], kaijiang[3], kaijiang[4], 69.00);
			 sum=sum+Util_SSC.sz_LM(hsq.optDouble("SHUNZI"), kaijiang[2], kaijiang[3], kaijiang[4], 11.00);
			 sum=sum+Util_SSC.dz_LM(hsq.optDouble("DUIZI"), kaijiang[2], kaijiang[3], kaijiang[4], 2.55);
			 sum=sum+Util_SSC.bs_LM(hsq.optDouble("BANSHUN"), kaijiang[2], kaijiang[3], kaijiang[4], 1.80);
			 sum=sum+Util_SSC.zl_LM(hsq.optDouble("ZALIU"), kaijiang[2], kaijiang[3], kaijiang[4], 2.00);
		  }
		return sum;
		
	}
	/**
	 * 时时彩--第五球玩法
	 * @param json
	 * @return 中奖金额
	 */
	@Override
	public double SSC_DWUQ_cal(String json) {
		//开奖号码
		int kaijiang[]={3,6,1,9,4};
		//开奖号码总和
		 int nums=kaijiang[0]+kaijiang[1]+kaijiang[2]+kaijiang[3]+kaijiang[4];
		 //第五球
		 int num=kaijiang[4];
		 //中奖金额
		 double sum=0.0;
		 JSONObject topJson = JSONObject.fromObject(json); 
		  String category =topJson.get("category").toString();//时时彩
		  String subcategory =topJson.get("subCategory").toString();//第五球玩法
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");//页面数据		  
		  JSONObject  dh  =(JSONObject)leafListJson.get("DH");
		  JSONObject  zh  =(JSONObject)leafListJson.get("ZH");
		  JSONObject  lhh  =(JSONObject)leafListJson.get("LHH");
		  JSONObject  qsq  =(JSONObject)leafListJson.get("QSQ");
		  JSONObject  zsq  =(JSONObject)leafListJson.get("ZSQ");
		  JSONObject  hsq  =(JSONObject)leafListJson.get("HSQ");
		  if(dh != null)//如有投单号
		  {
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ZERO"), 0, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("ONE"), 1, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("TWO"), 2, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("THREE"), 3, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FOUR"), 4, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("FIVE"), 5, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SIX"), 6, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("SEVEN"), 7, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("EIGHT"), 8, kaijiang[4], 9.95);
			sum=sum+Util_SSC.ssc_DH(dh.optDouble("NINE"), 9, kaijiang[4], 9.95);
			sum=sum+Util_SSC.da_LM(zh.optDouble("DA"), num, 1.99);
			sum=sum+Util_SSC.xiao_LM(zh.optDouble("XIAO"), num, 1.99); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), num, 1.99);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), num, 1.99); 
		  }
		  if(zh != null)//如有投总和
		  {
			sum=sum+Util_SSC.daNums_LM(zh.optDouble("DA"), nums, 1.98);
			sum=sum+Util_SSC.xiaoNums_LM(zh.optDouble("XIAO"), nums, 1.98); 
			sum=sum+Util_SSC.dan_LM(zh.optDouble("DAN"), nums, 1.98);
			sum=sum+Util_SSC.shuang_LM(zh.optDouble("SHUANG"), nums, 1.98); 
		  }
		  if(lhh != null)//如有投龙虎和
		  {
			sum=sum+Util_SSC.long_LM(lhh.optDouble("LONG"), kaijiang[0], kaijiang[4], 1.98);
			sum=sum+Util_SSC.hu_LM(lhh.optDouble("HU"), kaijiang[0], kaijiang[4], 1.98); 
			sum=sum+Util_SSC.he_LM(lhh.optDouble("HE"), kaijiang[0], kaijiang[4], 8.80) ;
		  }
		  if(qsq!=null)//如有投前三球
		  {
			 sum=sum+Util_SSC.bz_LM(qsq.optDouble("BAOZI"), kaijiang[0], kaijiang[1], kaijiang[2], 69.00);
			 sum=sum+Util_SSC.sz_LM(qsq.optDouble("SHUNZI"), kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			 sum=sum+Util_SSC.dz_LM(qsq.optDouble("DUIZI"), kaijiang[0], kaijiang[1], kaijiang[2], 2.55);
			 sum=sum+Util_SSC.bs_LM(qsq.optDouble("BANSHUN"), kaijiang[0], kaijiang[1], kaijiang[2], 1.80);
			 sum=sum+Util_SSC.zl_LM(qsq.optDouble("ZALIU"), kaijiang[0], kaijiang[1], kaijiang[2], 2.00);
		  }
		  if(zsq!=null)//如有投中三球
		  {
			 sum=sum+Util_SSC.bz_LM(zsq.optDouble("BAOZI"), kaijiang[1], kaijiang[2], kaijiang[3], 69.00);
			 sum=sum+Util_SSC.dz_LM(zsq.optDouble("SHUNZI"), kaijiang[1], kaijiang[2], kaijiang[3], 11.00);
			 sum=sum+Util_SSC.sz_LM(zsq.optDouble("DUIZI"), kaijiang[1], kaijiang[2], kaijiang[3], 2.55);
			 sum=sum+Util_SSC.bs_LM(zsq.optDouble("BANSHUN"), kaijiang[1], kaijiang[2], kaijiang[3], 1.80);
			 sum=sum+Util_SSC.zl_LM(zsq.optDouble("ZALIU"), kaijiang[1], kaijiang[2], kaijiang[3], 2.00);
		  }
		  if(hsq!=null)//如有投后三球
		  {
			 sum=sum+Util_SSC.bz_LM(hsq.optDouble("BAOZI"), kaijiang[2], kaijiang[3], kaijiang[4], 69.00);
			 sum=sum+Util_SSC.sz_LM(hsq.optDouble("SHUNZI"), kaijiang[2], kaijiang[3], kaijiang[4], 11.00);
			 sum=sum+Util_SSC.dz_LM(hsq.optDouble("DUIZI"), kaijiang[2], kaijiang[3], kaijiang[4], 2.55);
			 sum=sum+Util_SSC.bs_LM(hsq.optDouble("BANSHUN"), kaijiang[2], kaijiang[3], kaijiang[4], 1.80);
			 sum=sum+Util_SSC.zl_LM(hsq.optDouble("ZALIU"), kaijiang[2], kaijiang[3], kaijiang[4], 2.00);
		  }
		return sum;	
	}
	
}
