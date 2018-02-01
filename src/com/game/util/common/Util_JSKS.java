package com.game.util.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

/**
 * ���տ������淨�н�У����
 * @author LUQI
 *
 */
public class Util_JSKS {
    /**
     * �󣬲��Ҽ����н����
     * @param jsonObject    Ͷע�ڵ�����
     * @param para          ��У���һ����
     * @return              �н����
     */
	public static double DA_DXTB(Double unitValue, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1+para2+para3)>=11&&(para1+para2+para3)<=17) {
				rt = unitValue * rate;
			}		
		}
		return rt;
	}
	/**
	 * С�����Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @return			�н����
	 */
	public static double XIAO_DXTB(Double unitValue, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1+para2+para3)>=4&&(para1+para2+para3)<=10) {
				rt = unitValue * rate;
			}		
		}
		return rt;
	}
	/**
	 * ���������Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @param mode		ѡ�����ӵ���
	 * @return			�н����
	 */
	public static double SJ_DXTB(Double unitValue, Integer mode, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if(mode==para1){
				rt = unitValue * rate;
				}
			if(mode==para2){
				rt = unitValue * rate;
				}
			if(mode==para3){
				rt = unitValue * rate;
				}
		}
		return rt;
	}
	/**
	 * ȫ�������Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @return			�н����
	 */
	public static double QT_DXTB(Double unitValue, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if(para1==para2&&para1==para3&&para2==para3){
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	/**
	 * Χ�������Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @param mode		ѡ�����ӵ���
	 * @return			�н����
	 */
	public static double WT_DXTB(Double unitValue, Integer mode, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if(para1==para2&&para1==para3&&para2==para3){
				if(mode==para1){
					rt = unitValue * rate;
				}
			}
		}
		return rt;
	}
	/**
	 * ���������Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @param mode		ѡ�����ӵ���
	 * @return			�н����
	 */
	public static double DS_DXTB(Double unitValue,Integer mode, Integer para1, Integer para2, Integer para3 ,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if((para1+para2+para3)==mode){
				rt=unitValue*rate;
			}
		}
		return rt;
	}
	/**
	 * ���ƣ����Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @param mode		ѡ�����ӵ���
	 * @param rate     	����
	 * @return			�н����
	 */
	public static double CP_DXTB(Double unitValue, Integer mode, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		Map<Integer, String> map = new HashMap<Integer, String>(); 
		map.put(1, "1,2");map.put(2, "1,3");map.put(3, "1,4");map.put(4, "1,5");map.put(5, "1,6");
		map.put(6, "2,3");map.put(7, "2,4");map.put(8, "2,5");map.put(9, "2,6");map.put(10, "3,4");
		map.put(11, "3,5");map.put(12, "3,6");map.put(13, "4,5");map.put(14, "4,6");map.put(15, "5,6");
		if (!unitValue.isNaN()) {
			//int kaijiang[]={para1,para2,para3};
			String[] valueStrings=map.get(mode).split(",");
			Integer tz1=Integer.parseInt(valueStrings[0]);
			Integer tz2=Integer.parseInt(valueStrings[1]);
			List<Integer> tz=new ArrayList<>();
			tz.add(para1);tz.add(para2);tz.add(para3);
			if(tz.contains(tz1)==true&&tz.contains(tz2)==true){
				rt=unitValue*rate;
			}
		}
		return rt;
	}
	/**
	 * ���ƣ����Ҽ����н����
	 * @param jsonObject Ͷע�ڵ�����
	 * @param para1		��У���һ����
	 * @param para2		��У���һ����
	 * @param para3		��У���һ����
	 * @param mode		ѡ�����ӵ���
	 * @param rate     	����
	 * @return			�н����
	 */
	public static double DP_DXTB(Double unitValue,Integer mode, Integer para1, Integer para2, Integer para3,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para1==para2||para1==para3||para2==para3) {
				if(mode==para1&&mode==para2){
					rt=unitValue*rate;
				}
				if (mode==para1&&mode==para3) {
					rt=unitValue*rate;
				}
				if (mode==para3&&mode==para2) {
					rt=unitValue*rate;
				}
			}
		}
		
		return rt;
	}
}
