package com.game.dao.mapper;
import static com.game.util.common.gameConstants.GAME_ORDERS;

import org.apache.ibatis.jdbc.SQL;


public class MembersMapper {
public String updateBalance(Integer mid,Integer banlace){
		
	String sql="UPDATE members SET balance =  '"+banlace+"' WHERE mid = '"+mid+"' ";
	return sql; 
}

}
