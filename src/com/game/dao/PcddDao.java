package com.game.dao;

import org.apache.ibatis.annotations.SelectProvider;

import com.game.dao.mapper.PcddMapper;

public interface PcddDao {

	@SelectProvider(type=PcddMapper.class,method="insertkj")
	void insertkj(String periodNo,String openDate,int num1, int num2 ,int num3,int totalNum);
	
}
