package com.game.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.TopDao;
import com.game.pojo.Orders;
import com.game.service.TopService;

@Service("topService")
public class TopServiceImp implements TopService {
@Autowired
private TopDao topDao;
	@Override
	public List<Orders> selectorders(int id, String startime, String endtime) {
		List<Orders> selectOrders = topDao.selectOrders(id, startime, endtime);
		return selectOrders;
	}
	@Override
	public List<Orders> selectNowDateOrder(int id) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calcur = Calendar.getInstance();
		
		String date= format.format(calcur.getTime());
		List<Orders> selectNowDateOrder = topDao.selectNowDateOrder(id, date);
		return selectNowDateOrder;
	}
	@Override
	public String[] getNobalance(Integer mid) {
		// TODO Auto-generated method stub
		return topDao.getNobalance(mid);
	}

}
