package com.game.interceptor;

import static com.game.util.common.gameConstants.GAME_ORDERS;

import org.apache.ibatis.jdbc.SQL;

import com.game.pojo.Orders;

public class OrdersDynaSqlProvider {
	public String  insertOrders(Orders orders) {
		
		return new SQL() {
			{
				INSERT_INTO(GAME_ORDERS);
				if(orders.getOid() != null&& !orders.getOid().equals("")){
					VALUES("oid", "'" + orders.getOid() + "'");
				}
				VALUES("mid", "'" + orders.getMid() + "'");
				VALUES("orderno", "'" + orders.getOrderno() + "'");
				VALUES("status", "'" + orders.getStatus() + "'");
				VALUES("hitflag", "'" + orders.getHitflag() + "'");
				VALUES("bigflag", "'" + orders.getBigflag() + "'");
				VALUES("ordertype", "'" + orders.getOrdertype() + "'");
				VALUES("initamount", "'" + orders.getInitamount() + "'");
				VALUES("hitamount", "'" + orders.getHitamount() + "'");
				VALUES("orderdate", "'" + orders.getOrderdate() + "'");
				VALUES("backamount", "'" + orders.getBackamount() + "'");
				VALUES("bonusamount", "'" + orders.getBonusamount() + "'");
				VALUES("orderstatus", "'" + orders.getOrderstatus() + "'");
				VALUES("periodno", "'" + orders.getPeriodno() + "'");
			}
		}.toString();
	}
}
