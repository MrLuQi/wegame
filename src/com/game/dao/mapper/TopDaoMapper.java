package com.game.dao.mapper;

public class TopDaoMapper {

	public String selectOrders(int id, String starTime, String endTime) {
		String sql = "SELECT SUBSTR(orderDate,1,10 ) as orderDate,substr(orderType,1,4) orderType,initAmount,hitAmount,backAmount from orders where mid='"
				+ id + "'";
		if (starTime != null && !starTime.equals("")) {
			sql += "and  SUBSTR(orderDate,1,10 )>='" + starTime
					+ "' and SUBSTR(orderDate,1,10 )<='" + endTime + "'";
		}

		return sql;
	}

	public String nowDateOrder(int id, String date) {
		String sql = "SELECT  orderno, orderdate,substr(ordertype,1,4) ordertype, substr(ordertype,6,9) orderwanfa,initamount,backamount,hitamount from orders where mid='"+id+"'and  substr(orderdate,1,10)='"+date+"'";
		return sql;

	}
}
