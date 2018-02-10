package com.game.service;

import java.util.List;

import com.game.pojo.Orders;

public interface TopService {
	/**
	 * 
	 * @param id session id 
	 * @param startime 开始时间
	 * @param endtime结束时间
	 * @return 已未结订单
	 */
List<Orders> selectorders(int id, String startime,String endtime);
List<Orders> selectNowDateOrder(int id);
}
