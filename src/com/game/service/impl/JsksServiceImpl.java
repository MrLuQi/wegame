package com.game.service.impl;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.OrdersDao;
import com.game.pojo.Orders;
import com.game.service.JsksService;
import com.game.util.common.Util_JSKS;

@Service("jsksService")
public class JsksServiceImpl implements JsksService {
	@Autowired
	private OrdersDao orderDao;


	@Override
	public Orders insertData(Orders orders) {
		return orderDao.insertTzData(orders);
	}
	
	@Override
	public void JsksKJ() {
		String json=null;
		 double  jsks_dxtb_cal=JSKS_DXTB_cal(json);
		 System.out.println("中奖金额:"+jsks_dxtb_cal);
	}
	
	
	
	public static double  JSKS_DXTB_cal (String json)	
	{
		int kaijiang[]={1,3,1};
		double sum=0;
		  JSONObject topJson = JSONObject.fromObject(json); 
		//  String category =topJson.get("category").toString();
		//  String subcategory =topJson.get("subCategory").toString();
		  
		  JSONObject leafListJson=(JSONObject)topJson.get("leafList");
		  
		  JSONObject  sj  =(JSONObject)leafListJson.get("SJ");
		  JSONObject  da  =(JSONObject)leafListJson.get("DA");
		  JSONObject  xiao  =(JSONObject)leafListJson.get("XIAO");
		  JSONObject  wei  =(JSONObject)leafListJson.get("WEI");
		  JSONObject  quan  =(JSONObject)leafListJson.get("QUAN");
		  JSONObject  ds  =(JSONObject)leafListJson.get("DS");
		  JSONObject  cp  =(JSONObject)leafListJson.get("CP");
		  JSONObject  dp  =(JSONObject)leafListJson.get("DP");
		
		  if (sj!=null)//如果投注三军
		  	{
			  sum=sum+Util_JSKS.SJ_DXTB(sj.optDouble("SANJUN1"), 1, kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
			  sum=sum+Util_JSKS.SJ_DXTB(sj.optDouble("SANJUN2"), 2, kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
			  sum=sum+Util_JSKS.SJ_DXTB(sj.optDouble("SANJUN3"), 3, kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
			  sum=sum+Util_JSKS.SJ_DXTB(sj.optDouble("SANJUN4"), 4, kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
			  sum=sum+Util_JSKS.SJ_DXTB(sj.optDouble("SANJUN5"), 5, kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
			  sum=sum+Util_JSKS.SJ_DXTB(sj.optDouble("SANJUN6"), 6, kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
		  	}
		  if (da!=null)//如果投注大
		  	{
			  sum=sum+Util_JSKS.DA_DXTB(da.optDouble("DA"), kaijiang[0], kaijiang[1], kaijiang[2], 1.99);	
			}
		  if (xiao!=null)//如果投注小
		  	{
			  sum=sum+Util_JSKS.XIAO_DXTB(xiao.optDouble("XIAO"),  kaijiang[0], kaijiang[1], kaijiang[2], 1.99);
			}
		  if (wei!=null)//如果投注围骰
		  	{
			  sum=sum+Util_JSKS.WT_DXTB(wei.optDouble("WEI1"), 1,  kaijiang[0], kaijiang[1], kaijiang[2], 185.00);
			  sum=sum+Util_JSKS.WT_DXTB(wei.optDouble("WEI2"), 2,  kaijiang[0], kaijiang[1], kaijiang[2], 185.00);
			  sum=sum+Util_JSKS.WT_DXTB(wei.optDouble("WEI3"), 3,  kaijiang[0], kaijiang[1], kaijiang[2], 185.00);
			  sum=sum+Util_JSKS.WT_DXTB(wei.optDouble("WEI4"), 4,  kaijiang[0], kaijiang[1], kaijiang[2], 185.00);
			  sum=sum+Util_JSKS.WT_DXTB(wei.optDouble("WEI5"), 5,  kaijiang[0], kaijiang[1], kaijiang[2], 185.00);
			  sum=sum+Util_JSKS.WT_DXTB(wei.optDouble("WEI6"), 6,  kaijiang[0], kaijiang[1], kaijiang[2], 185.00);
			}
		  if (quan!=null) //如果投注全骰
		  	{
			  sum=sum+Util_JSKS.QT_DXTB(quan.optDouble("QUAN"),  kaijiang[0], kaijiang[1], kaijiang[2], 30.80);
			}
		  if (ds!=null) //如果投注点数
		  	{
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("four"),4, kaijiang[0], kaijiang[1], kaijiang[2],54.50);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("five"),5, kaijiang[0], kaijiang[1], kaijiang[2],28.20);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("six"),6,  kaijiang[0], kaijiang[1], kaijiang[2],17.45);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("seven"),7,  kaijiang[0], kaijiang[1], kaijiang[2],11.30);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("eight"),8,  kaijiang[0], kaijiang[1], kaijiang[2],8.10);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("nine"), 9, kaijiang[0], kaijiang[1], kaijiang[2],6.30);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("ten"), 10, kaijiang[0], kaijiang[1], kaijiang[2],6.30);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("eleven"),11,  kaijiang[0], kaijiang[1], kaijiang[2],6.30);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("twelve"),12,  kaijiang[0], kaijiang[1], kaijiang[2],6.30);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("thirteen"),13,  kaijiang[0], kaijiang[1], kaijiang[2],8.10);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("fourteen"),14,  kaijiang[0], kaijiang[1], kaijiang[2],11.30);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("fifteen"),15,  kaijiang[0], kaijiang[1], kaijiang[2],17.45);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("sixteen"),16, kaijiang[0], kaijiang[1], kaijiang[2],28.20);
			  sum=sum+Util_JSKS.DS_DXTB(ds.optDouble("seventeen"),17,  kaijiang[0], kaijiang[1], kaijiang[2],54.50);
			}
		  if (cp!=null)//如果投注长牌
		  	{
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp1"),1, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp2"),2, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp3"),3, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp4"),4, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp5"),5, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp6"),6, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp7"),7, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp8"),8, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp9"),9, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp10"),10, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp11"),11, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp12"),12, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp13"),13, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp14"),14, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			  sum=sum+Util_JSKS.CP_DXTB(cp.optDouble("cp15"),15, kaijiang[0], kaijiang[1], kaijiang[2], 6.70);
			}
		  if (dp!=null) //如果投注短牌
		  	{
			  sum=sum+Util_JSKS.DP_DXTB(dp.optDouble("dp1"),1, kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			  sum=sum+Util_JSKS.DP_DXTB(dp.optDouble("dp2"),2, kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			  sum=sum+Util_JSKS.DP_DXTB(dp.optDouble("dp3"),3, kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			  sum=sum+Util_JSKS.DP_DXTB(dp.optDouble("dp4"),4, kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			  sum=sum+Util_JSKS.DP_DXTB(dp.optDouble("dp5"),5, kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			  sum=sum+Util_JSKS.DP_DXTB(dp.optDouble("dp6"),6, kaijiang[0], kaijiang[1], kaijiang[2], 11.00);
			}
		return sum;
		
	}



	
	
}
