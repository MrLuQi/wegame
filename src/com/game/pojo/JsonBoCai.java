package com.game.pojo;

import java.util.HashMap;
import java.util.Map;

/**
 * 封装类：封装各类型彩的各类玩法的投注数据
 * @author huanghai
 *
 */
public class JsonBoCai {
	/*
	 * 博采种类 取值: JSKS(江苏快3) BJSC(北京赛车) PCDD(PC蛋蛋) SSC(时时彩) LHC(六合彩)
	 */
	private String category;
	/*
	 * 博采种类子类 取值 : 
	 *     江苏快3(大小骰宝: DXTB) 
	 *     北京赛车(两面: LM 单号1-10：DH 冠亚组合： GYZH)
	 *     重庆时时彩(两面：LM 一球 :YQ 二球：EQ 三球：SQ 四球：SQ 五球：WQ) 
	 *     PC蛋蛋(PC蛋蛋： PCDD）
	 */
	private String subCategory;

	/*
	 * 每个子类下的具体玩法投注数据
	 */
	private Map<String, Map<String, Integer>> leafList = new HashMap<String, Map<String, Integer>>();

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}

	public Map<String, Map<String, Integer>> getLeafList() {
		return leafList;
	}

	public void setLeafList(Map<String, Map<String, Integer>> leafList) {
		this.leafList = leafList;
	}

	public static void main(String[] args) {
		 
	}

}
