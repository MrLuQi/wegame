package com.game.util.common;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class json_KJ_Data{
	public static JSONObject httpRequest(String requestUrl, String requestMethod) {
		JSONObject jsonObject = null;
		StringBuffer buffer = new StringBuffer();
		try {

			URL url = new URL(requestUrl);
			// http协议传输
			HttpURLConnection httpUrlConn = (HttpURLConnection) url
					.openConnection();

			httpUrlConn.setDoOutput(true);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);
			// 设置请求方式（GET/POST）
			httpUrlConn.setRequestMethod(requestMethod);

			if ("GET".equalsIgnoreCase(requestMethod))
				httpUrlConn.connect();
			// 将返回的输入流转换成字符串
			InputStream inputStream = httpUrlConn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(
					inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(
					inputStreamReader);

			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();
			// 释放资源
			inputStream.close();
			inputStream = null;
			httpUrlConn.disconnect();
			jsonObject = JSONObject.fromObject(buffer.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonObject;
	}

	public static void main(String[] args) {

	/*	JSONObject httpRequest = httpRequest(
				"http://f.apiplus.net/bjkl8-1.json", "GET");

		
		String string = httpRequest.get("data").toString();
		JSONArray fromObject = JSONArray.fromObject(string);
		JSONObject jsonObject = fromObject.getJSONObject(0);
	    System.out.println(jsonObject.get("expect").toString());	
		String aString = httpRequest.toString();
		System.out.println(aString);*/
	}
	}
