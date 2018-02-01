package com.game.dao;

import org.apache.ibatis.annotations.SelectProvider;

import com.game.interceptor.OrdersDynaSqlProvider;
import com.game.pojo.Orders;


public interface OrdersDao {
	
	@SelectProvider(type = OrdersDynaSqlProvider.class, method = "insertOrders")
	Orders insertTzData(Orders orders);
}
