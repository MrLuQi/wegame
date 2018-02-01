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
				if(orders.getMid() != null&& !orders.getMid().equals("")){
				VALUES("mid", "'" + orders.getMid() + "'");
				}
				if(orders.getOrderno() != null&& !orders.getOrderno().equals("")){
					VALUES("orderno", "'" + orders.getOrderno() + "'");	
				}
				if(orders.getStatus() != null&& !orders.getStatus().equals("")){
					VALUES("status", "'" + orders.getStatus() + "'");
				}
				if(orders.getHitflag() != null&& !orders.getHitflag().equals("")){
					VALUES("hitflag", "'" + orders.getHitflag() + "'");
				}
				if(orders.getBigflag() != null&& !orders.getBigflag().equals("")){
					VALUES("bigflag", "'" + orders.getBigflag() + "'");
				}
				if(orders.getOrdertype() != null&& !orders.getOrdertype().equals("")){
					VALUES("ordertype", "'" + orders.getOrdertype() + "'");
				}
				if(orders.getInitamount() != null&& !orders.getInitamount().equals("")){
					VALUES("initamount", "'" + orders.getInitamount() + "'");
				}
				if(orders.getHitamount() != null&& !orders.getHitamount().equals("")){
					VALUES("hitamount", "'" + orders.getHitamount() + "'");
				}
				if(orders.getOrderdate() != null&& !orders.getOrderdate().equals("")){
					VALUES("orderdate", "'" + orders.getOrderdate() + "'");
				}
				if(orders.getBackamount() != null&& !orders.getBackamount().equals("")){
					VALUES("backamount", "'" + orders.getBackamount() + "'");
				}
				if(orders.getBonusamount() != null&& !orders.getBonusamount().equals("")){
					VALUES("bonusamount", "'" + orders.getBonusamount() + "'");
				}
				if(orders.getOrderstatus() != null&& !orders.getOrderstatus().equals("")){
					VALUES("orderstatus", "'" + orders.getOrderstatus() + "'");
				}
				if(orders.getPeriodno() != null&& !orders.getPeriodno().equals("")){
					VALUES("periodno", "'" + orders.getPeriodno() + "'");
				}
			}
		}.toString();
	}
}
