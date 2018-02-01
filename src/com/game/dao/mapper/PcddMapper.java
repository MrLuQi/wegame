package com.game.dao.mapper;

public class PcddMapper {
public String  insertkj(String periodNo,String openDate,int num1, int num2 ,int num3,int totalNum) {
	
	
	
	String sql="insert into pcdd VALUES('"+periodNo+"','"+openDate+"',"+num1+","+num2+","+num3+","+totalNum+")";
	return sql;

}
}
