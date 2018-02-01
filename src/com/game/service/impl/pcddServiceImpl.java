package com.game.service.impl;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.PcddDao;
import com.game.service.pcddService;
import com.game.util.common.Util_PCDD;
import com.game.util.common.json_KJ_Data;

@Service
public class pcddServiceImpl implements pcddService {
	/**
	 * 模拟用户下注数据,从数据库取出string数据
	 */
@Autowired
private PcddDao pcddDao;

	@Override
	public void PCDD_PC() {
		// TODO Auto-generated method stub
		String json = null;
		double pcdd_pcdd_cal = PCDD_pcdd_cal(json);
	}
	@Override
	public void kiangJiangjson() {
		// TODO Auto-generated method stub
		JSONObject httpRequest = json_KJ_Data.httpRequest(
				"http://f.apiplus.net/bjkl8-1.json", "GET");
		// 开奖数据
		String jsonData = httpRequest.get("data").toString();
		JSONArray new_jsonData = JSONArray.fromObject(jsonData);
		JSONObject jsonObject = new_jsonData.getJSONObject(0);
		String opencode = jsonObject.optString("opencode").toString();
		String[] s = opencode.split(",");
	int num1 =(Integer.parseInt(s[0])+Integer.parseInt(s[1])+Integer.parseInt(s[2])+Integer.parseInt(s[3])+Integer.parseInt(s[4])+Integer.parseInt(s[5]))%10;
	int num2 =(Integer.parseInt(s[6])+Integer.parseInt(s[7])+Integer.parseInt(s[8])+Integer.parseInt(s[9])+Integer.parseInt(s[10])+Integer.parseInt(s[11]))%10;
	int num3 =(Integer.parseInt(s[12])+Integer.parseInt(s[13])+Integer.parseInt(s[14])+Integer.parseInt(s[15])+Integer.parseInt(s[16])+Integer.parseInt(s[17]))%10;
	System.out.println(num1);
	int totalNum=num1+num2+num3;
	String expect = jsonObject.optString("expect").toString();
	String opentime=jsonObject.optString("opentime").toString();
	pcddDao.insertkj("a1DDZa", opentime, num1, num2, num3, totalNum);
		System.out.println(opencode);	
	}
	
	/**
	 * 
	 * @param json
	 *            用户下注情况数据
	 * @return 奖金
	 */
	public static double PCDD_pcdd_cal(String json) {
		Integer kaijiang = 7;
		double sum = 0;
		JSONObject topJson = JSONObject.fromObject(json);
		// String category =topJson.get("category").toString();
		// String subcategory =topJson.get("subCategory").toString();
		JSONObject leafListJson = (JSONObject) topJson.get("leafList");
		JSONObject hhwf = (JSONObject) leafListJson.get("HHWF");
		JSONObject dmwf = (JSONObject) leafListJson.get("DMWF");
		// 混合玩法
		if (hhwf != null) {
			sum = sum + Util_PCDD.da_HH(hhwf.optDouble("DA"), kaijiang, 2.00);
			sum = sum
					+ Util_PCDD.xiao_HH(hhwf.optDouble("XIAO"), kaijiang, 2.00);
			sum = sum + Util_PCDD.dan_HH(hhwf.optDouble("DAN"), kaijiang, 2.00);
			sum = sum
					+ Util_PCDD.shuang_HH(hhwf.optDouble("SHUANG"), kaijiang,
							2.00);
			sum = sum
					+ Util_PCDD.daShuang_HH(hhwf.optDouble("DASHUANG"),
							kaijiang, 4.00);
			sum = sum
					+ Util_PCDD.daDan_HH(hhwf.optDouble("DADAN"), kaijiang,
							4.10);
			sum = sum
					+ Util_PCDD.xiaoDan_HH(hhwf.optDouble("XIAODAN"), kaijiang,
							4.00);
			sum = sum
					+ Util_PCDD.xiaoShuang_HH(hhwf.optDouble("XIAOSHUANG"),
							kaijiang, 4.10);
			sum = sum
					+ Util_PCDD
							.jiDa_HH(hhwf.optDouble("JIDA"), kaijiang, 15.00);
			sum = sum
					+ Util_PCDD.jixiao_HH(hhwf.optDouble("JIXIAO"), kaijiang,
							15.00);
		}
		if (dmwf != null) {
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("ZERO"), 0,
							kaijiang, 800.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("ONE"), 1,
							kaijiang, 260.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWO"), 2,
							kaijiang, 130.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("THREE"), 3,
							kaijiang, 80.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("FOUR"), 4,
							kaijiang, 53.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("FIVE"), 5,
							kaijiang, 38.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("SIX"), 6,
							kaijiang, 28.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("SEVEN"), 7,
							kaijiang, 22.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("EIGHT"), 8,
							kaijiang, 18.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("NINE"), 9,
							kaijiang, 15.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TEN"), 10,
							kaijiang, 13.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("ELEVEN"), 11,
							kaijiang, 13.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWELVE"), 12,
							kaijiang, 12.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("THIRTEEN"), 13,
							kaijiang, 12.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("FOURTEEN"), 14,
							kaijiang, 12.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("FIFTEEN"), 15,
							kaijiang, 12.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("SIXTEEN"), 16,
							kaijiang, 13.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("SENENTEEN"), 17,
							kaijiang, 13.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("EIGHTEEN"), 18,
							kaijiang, 15.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("NINETEEN"), 19,
							kaijiang, 18.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY"), 20,
							kaijiang, 22.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-ONE"),
							21, kaijiang, 28.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-TWO"),
							22, kaijiang, 38.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-THREE"),
							23, kaijiang, 53.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-FOUR"),
							24, kaijiang, 80.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-FIVE"),
							25, kaijiang, 130.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-SIX"),
							26, kaijiang, 260.00);
			sum = sum
					+ Util_PCDD.twentySeven_DM(dmwf.optDouble("TWENTY-SEVEN"),
							27, kaijiang, 800.00);

		}
		return sum;
	}

	public static void main(String[] args) {
	//	kiangJiangjson();
		// System.out.println("dada");

		// JsonBoCai hh =PCDD_PC();
		// JSONObject json_hh = JSONObject.fromObject(hh);
		// String str_json_hh=json_hh.toString();
		// System.out.println(str_json_hh);

		// Object bean = JSONObject.toBean(json_hh, JsonBoCai.class);
		// System.out.println("恭喜你");
		// double totalHit_hh = PCDD_pcdd_cal(str_json_hh);
		// System.out.println("开奖结果"+totalHit_hh);

	}

}
