package com.game.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import com.game.dao.mapper.TopDaoMapper;
import com.game.pojo.Orders;


public interface TopDao {

	@SelectProvider(type=TopDaoMapper.class,method="selectOrders")
	List<Orders> selectOrders(int id, String startime,String endtime);
	@SelectProvider(type=TopDaoMapper.class,method="nowDateOrder")
	List<Orders> selectNowDateOrder(int id,String date);
	@Select("select initamount FROM orders where mid=#{mid};")
	String[] getNobalance(Integer mid);
}
