package com.game.util.common;

import java.util.Arrays;

import net.sf.json.JSONObject;

/**
 * 
 * @author �Ӵ���
 *
 */
public class Util_SSC {
	/**
     * �����淨��--��������֮���ж��Ƿ���������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param nums          ��У���һ����
     * @return              �н����
     */
	public static double daNums_LM(Double unitValue, Integer nums,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (nums >= 23) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	
	/**
     * �����淨��--һ�����ж��Ƿ���������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param para          ��У���һ����
     * @return              �н����
     */
	public static double da_LM(Double unitValue, Integer para,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para >= 5) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	
	 /**
     * �����淨��--��������֮���ж��Ƿ�С�������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param nums         ��У���һ����
     * @return              �н����
     */
	public static double xiaoNums_LM(Double unitValue, Integer nums,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (nums <= 23) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	
	 /**
     * �����淨��--��������֮���ж��Ƿ�С�������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param para         ��У���һ����
     * @return              �н����
     */
	public static double xiao_LM(Double unitValue, Integer para,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para <= 4) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	
	/**
     * �����淨��--һ�����ж��Ƿ��������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param para          ��У���һ����
     * @return              �н����
     */
	public static double dan_LM(Double unitValue, Integer para,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para % 2 != 0) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	
	/**
     * �����淨��--һ�����ж��Ƿ�˫�������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param para          ��У���һ����
     * @return              �н����
     */
	public static double shuang_LM(Double unitValue, Integer para,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para % 2 == 0) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	/**
     * �����淨��--�ж��Ƿ�Ϊ�������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double long_LM(Double unitValue,Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para1>para2) {
				rt = unitValue * rate;
			}
		}
		return rt;
}
	/**
     * �����淨��--�ж��Ƿ�Ϊ�������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double hu_LM(Double unitValue,Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para1<para2) {
				rt = unitValue * rate;
			}
		}
		return rt;
}
	/**
     * �����淨��--�ж��Ƿ�Ϊ�ͣ����Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double he_LM(Double unitValue,Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para1==para2) {

				rt = unitValue * rate;
			}
		}
		return rt;
}
	
	/**
     * �����淨��--һ�����ж��Ƿ�Ϊ0-9�����Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param para          0-9����һ���ڵ�
     * @param para          ��У���һ����
     * @return              �н����
     */
	public static double  ssc_DH(Double unitValue, Integer mode,Integer para,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			
			switch (mode)
			{
			case 0:
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 1:
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 2:
				
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 3:
			
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 4:
				
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 5:
				
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 6:
				
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 7:
				
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 8:
				
				rt=(para==mode)?unitValue* rate:0;
				break;
			case 9:
				rt=(para==mode)?unitValue* rate:0;
				break;
			}
		}
		return rt;
	}
	/**
     * �����淨��--�ж��Ƿ�Ϊ���Ӳ��Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double bz_LM(Double daValue,Integer para1,Integer para2,Integer para3,double rate) {
		double rt = 0.0;
		int sorts[]={para1,para2,para3};
		Arrays.sort(sorts);
		if (!daValue.isNaN()){
			if (sorts[0]==sorts[1] && sorts[1]==sorts[2]) {			
				rt = daValue * rate;		
			}
		}
		return rt;
}
	/**
     * �����淨��--�ж��Ƿ�Ϊ˳�Ӳ��Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double sz_LM(Double daValue,Integer para1,Integer para2,Integer para3,double rate) {
		double rt = 0.0;
		int sorts[]={para1,para2,para3};
		Arrays.sort(sorts);
		if (!daValue.isNaN()){
				if (sorts[0]==sorts[1] && sorts[1]==sorts[2]) {			
					rt = 0.0;		
				}
				else if(sorts[0]==sorts[1]-1 && sorts[1]+1==sorts[2]){
				rt = daValue * rate;
		}
			}
		return rt;
}
	/**
     * �����淨��--�ж��Ƿ�Ϊ���Ӳ��Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double dz_LM(Double daValue,Integer para1,Integer para2,Integer para3,double rate) {
		double rt = 0.0;
		int sorts[]={para1,para2,para3};
		Arrays.sort(sorts);
		if (!daValue.isNaN()){
			if (sorts[0]==sorts[1] && sorts[1]==sorts[2]) {			
				rt = 0.0;		
			}else if(sorts[0]==sorts[1]-1 && sorts[1]+1==sorts[2]){
				rt = 0.0;
			}else if(para1==para2 || para2==para3 || para1==para3){
				rt = daValue * rate;
			}
		}
		return rt;
}
	/**
     * �����淨��--�ж��Ƿ�Ϊ��˳���Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double bs_LM(Double daValue,Integer para1,Integer para2,Integer para3,double rate) {
		double rt = 0.0;
		int sorts[]={para1,para2,para3};
		Arrays.sort(sorts);
		if (!daValue.isNaN()){
			if (sorts[0]==sorts[1] && sorts[1]==sorts[2]) {			
				rt = 0.0;		
			}else if(sorts[0]==sorts[1]-1 && sorts[1]+1==sorts[2]){
				rt = 0.0;
			}else if(para1==para2 || para2==para3 || para1==para3){
				rt = 0.0;
			}else if(sorts[0]==sorts[1]-1 && sorts[1]+1!=sorts[2] || sorts[0]!=sorts[1]-1 && sorts[1]+1==sorts[2]){
				rt = daValue * rate;
			}
		}
		return rt;
}
	/**
     * �����淨��--�ж��Ƿ�Ϊ�������Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����   
     * @param para1          ��У���һ����
     * @param para1          ��У�����һ����  
     * @return              �н����
     */
	public static double zl_LM(Double daValue,Integer para1,Integer para2,Integer para3,double rate) {
		double rt = 0.0;
		int sorts[]={para1,para2,para3};
		Arrays.sort(sorts);
		if (!daValue.isNaN()){
			if (sorts[0]==sorts[1] && sorts[1]==sorts[2]) {			
				rt = daValue * 0.0;		
			}else if(sorts[0]==sorts[1]-1 && sorts[1]+1==sorts[2]){
				rt = daValue * 0.0;
			}else if(para1==para2 || para2==para3 || para1==para3){
				rt = daValue * 0.0;
			}else if(sorts[0]==sorts[1]-1 && sorts[1]+1!=sorts[2] || sorts[0]!=sorts[1]-1 && sorts[1]+1==sorts[2]){
				rt = daValue * 0.0;
			}else {
				rt = daValue * rate;
			}
		}
		return rt;
}
}