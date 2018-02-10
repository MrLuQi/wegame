package com.game.util.common;


/**
 * 北京赛车各玩法中奖校验类
 *
 */
public class Util_BJSC {
    /**
     * 两面玩法中--一个数判断是否大数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para          待校验的一个数
     * @return              中奖金额
     */
	public static double da_LM(Double unitValue, Integer para,double rate) {
		double rt = 0.0;
		if (unitValue != null) {
			if (para >= 6) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}

    /**
     * 两面玩法中--两个数的和判断是否大数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double da_LM(Double unitValue, Integer para1,Integer para2,double rate ) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) >= 6) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}

    /**
     * 两面玩法中--一个数判断是否小数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para          待校验的一个数
     * @return              中奖金额
     */
	public static double xiao_LM(Double unitValue, Integer para,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para <= 5) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}

    /**
     * 两面玩法中--两个数的和判断是否小数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double xiao_LM(Double unitValue, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) <= 5) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}

    /**
     * 两面玩法中--一个数判断是否单数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para          待校验的一个数
     * @return              中奖金额
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
     * 两面玩法中--两个数的和判断是否单数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double dan_LM(Double unitValue, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) % 2 != 0) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}

    /**
     * 两面玩法中--一个数判断是否双数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para          待校验的一个数
     * @return              中奖金额
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
     * 两面玩法中--两个数的和判断是否双数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double shuang_LM(Double unitValue, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) % 2 == 0) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}
	

    /**
     * 两面玩法中--判断是否为龙，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param mode          选择龙虎的选项(冠，亚，第三，第四，第五 这些选项)     
     * @param para1          待校验的一个数
     * @param para1          待校验的另一个数  
     * @return              中奖金额
     */
	public static double long_LM(Double unitValue,Integer mode, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if (para1>para2) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}	
	
	  /**
     * 两面玩法中--判断是否为虎，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param mode          选择龙虎的选项(冠，亚，第三，第四，第五 这些选项)     
     * @param para1          待校验的一个数
     * @param para1          待校验的另一个数  
     * @return              中奖金额
     */
	public static double hu_LM(Double unitValue,Integer mode, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		Integer daValue=0;
		if (!unitValue.isNaN()) {
			if (para1<para2) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}	
	
	
    /**
     * 单号1-10玩法中--一个数判断是否为1-10，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para          1-10中哪一个节点
     * @param para          待校验的一个数
     * @return              中奖金额
     */
	public static double  ten_DH(Double unitValue, Integer mode,Integer para,double rate) {
		double rt = 0.0;
		Double daValue=0.0;
		if (!unitValue.isNaN()) {
			switch (mode)
			{
			case 1:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 2:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 3:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 4:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 5:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 6:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 7:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 8:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 9:
				rt=((para)==mode)?unitValue* rate:0;
				break;
			case 10:	
			}
			}
		return rt;
	}	
	
    /**
     * 冠亚组合玩法中--判断冠亚组值是否为3-19，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para           3-19中哪一个节点
     * @param para          待校验的一个数
     * @param para          待校验的另一个数     
     * @return              中奖金额
     */
	public static double ninteen_GYZH(Double unitValue,Integer mode ,Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			
			switch (mode)
			{
			case 3:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 4:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 5:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 6:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 7:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 8:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 9:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 10:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 11:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 12:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 13:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 14:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 15:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 16:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 17:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 18:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;
			case 19:
				rt=((para1+para2)==mode)?unitValue* rate:0;
				break;}

		}
		return rt;
	}
	
    /**
     * 冠亚组合玩法中--两个数的和判断是否大数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double da_GYZH(Double unitValue, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) >= 6) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}	

    /**
     * 冠亚组合玩法中--两个数的和判断是否小数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double xiao_GYZH(Double unitValue, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) <= 5) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}	
	
    /**
     * 冠亚组合玩法中--两个数的和判断是否单数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para1          待校验的一个数
     * @param para2          待校验的另一个数
     * @return              中奖金额
     */
	public static double dan_GYZH(Double unitValue, Integer para1,Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) % 2 != 0) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}	
    /**
     * 冠亚组合玩法中--一个数判断是否双数，并且计算中奖金额
     * @param jsonObject    投注节点数据
     * @param para          待校验的一个数
     * @return              中奖金额
     */
	public static double shuang_GYZH(Double unitValue, Integer para1, Integer para2,double rate) {
		double rt = 0.0;
		if (!unitValue.isNaN()) {
			if ((para1 + para2) % 2 == 0) {
				rt = unitValue * rate;
			}
		}
		return rt;
	}	
}
