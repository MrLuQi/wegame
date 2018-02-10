package com.game.util.common;



public class Util_PCDD {
/**
 * 	  混合玩法中---一个数判断是否大数，并且计算中奖金额
 * @param daValue  投注节点数据
 * @param para 待校验的一个数
 * @param rate 倍率
 * @return 中奖金额
 */
	public static double da_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para >= 14) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否小数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double xiao_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para <= 13) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否单数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double dan_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para%2!= 0) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否双数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double shuang_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para%2== 0) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否大单数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double daDan_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para%2!= 0&&para>=14) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否大双数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double daShuang_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para%2== 0&&para>=14) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否小单数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double xiaoDan_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para%2!=0&&para<=13) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否小双数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double xiaoShuang_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para%2==0&&para<=13) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否极大数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double jiDa_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para>=23) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
	/**
	 * 	  混合玩法中---一个数判断是否极小数，并且计算中奖金额
	 * @param daValue  投注节点数据
	 * @param para 待校验的一个数
	 * @param rate 倍率
	 * @return 中奖金额
	 */
	public static double jixiao_HH(Double daValue, Integer para,double rate) {
		double rt = 0.0;
		if (!daValue.isNaN()) {
			if (para<=4) {
				rt = daValue * rate;
			}
		}
		return rt;
	}
    /**
     * 单号0-27玩法中--一个数判断是否为0-27，并且计算中奖金额
     * @param daValue    投注节点数据
     * @param  mode          0-27中哪一个节点
     * @param para          待校验的一个数
     * @return              中奖金额
     */	
	public static double  twentySeven_DM(Double daValue, Integer mode,Integer para,double rate) {
		double rt = 0.0;
	
		if (!daValue.isNaN()) {
			
			switch (mode)
			{
			case 0:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 1:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 2:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 3:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 4:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 5:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 6:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 7:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 8:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 9:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 10:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 11:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 12:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 13:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 14:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 15:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 16:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 17:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 18:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 19:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 20:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 21:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 22:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 23:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 24:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 25:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 26:
				rt=(para==mode)?daValue* rate:0;
				break;
			case 27:
				rt=(para==mode)?daValue* rate:0;
				break;
			}
		}
		return rt;
	}	
	
	
}

