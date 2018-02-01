package com.game.quartz;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import com.game.dao.PcddDao;
import com.game.util.common.json_KJ_Data;

public class Quartpcdd implements Job {
@Resource
private PcddDao pcddDao;
/**
 * 开奖数据存库
 * pcdd
 */
	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
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
	//System.out.println(num1);
	int totalNum=num1+num2+num3;
	System.out.println(totalNum);
	String expect = jsonObject.optString("expect").toString();
	String opentime=jsonObject.optString("opentime").toString();
	pcddDao.insertkj(expect, opentime, num1, num2, num3, totalNum);
		
	}

	

	
}
