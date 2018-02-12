package com.game.util.common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PCDD_Periods {
	private static int i=0;//初始值
	/**
	 * 在初始值上自增1
	 * @return 期数
	 */
	public static String Plus(){
		  SimpleDateFormat simpleDateFormat;
		  simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
		  Date date = new Date();
		  String str = simpleDateFormat.format(date);
		i++;
		String s = "P"+str+"00000"+i; 
		return s;
		//return s.substring(s.length()-6);
	}
	/**
	 * 测试
	 * @param s
	 */
	public static void main(String[] args) {
		//System.out.println( Plus());
		//System.out.println( Plus());
	}
}
