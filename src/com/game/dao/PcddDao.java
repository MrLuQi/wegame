package com.game.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import com.game.pojo.Orders;
import com.game.dao.mapper.PcddMapper;


public interface PcddDao {

	@SelectProvider(type=PcddMapper.class,method="insertkj")
	void insertkj(String periodNo,String openDate,int num1, int num2 ,int num3,int totalNum);
	
	@Select("SELECT SUBSTRING(periodNo,2,15)AS A FROM orders ORDER BY A LIMIT 1")
	String selectPeriodNo();
	@Select("select * from orders where periodNo=#{periodNo}")
   List<Orders> selectHitamount(String periodNo );
}
