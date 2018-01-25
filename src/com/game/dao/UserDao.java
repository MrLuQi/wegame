package com.game.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.game.pojo.User;

public interface UserDao {
	@Select("select * from  user  where loginname = #{loginname} and PASSWORD = #{password};")
	User findUser(@Param("loginname") String loginname,@Param("password") String password);
}
