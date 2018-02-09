package com.game.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.game.pojo.Members;

public interface MembersDao {
	@Select("select * from  members  where memberno = #{memberno} and passpwd = #{passpwd};")
	Members findMember(@Param("memberno") String memberno,@Param("passpwd") String passpwd);
	
	@Select("select balance from  members  where mid = #{mid};")
	Integer findMemberBalance(Integer mid);

}
