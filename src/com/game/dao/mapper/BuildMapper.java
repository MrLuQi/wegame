package com.game.dao.mapper; 





import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

import com.game.pojo.Building;


/** 
 * @author 杨佳伟 E-mail: 
 * @version 创建时间：2018年1月6日 下午4:25:14 
 * 类说明 
 */
public class BuildMapper {
	/**
	 * insertBuilding接口的实现类
	 * @param building
	 * @return sql
	 */
public String insertBuilding(@Param(value = "building") Building building){
	return new SQL(){
		{
			
			INSERT_INTO("building");
			if(building.getName() != null && !building.getName().equals("")){
				VALUES("name", "#{name}");
			}
			if(building.getParentuuid() != null && !building.getParentuuid().equals("")){
				VALUES("parentuuid", "#{parentuuid}");
			}else {
				VALUES("parentuuid", "0");
			}
		}
	}.toString();
}
/**
 * deleBuildTree接口的实现类
 * @param uuid
 * @return  sql
 */
public String deleBuildTree(String uuid){
	String sql="select  uuid from building where FIND_IN_SET(uuid, getChildLst("+uuid+"))";
	return sql;
}
/**
 * deleBuildTree2接口的实现类
 * @param building
 * @return sql
 */
public String deleBuildTree2(Map<String, Object> building){
 @SuppressWarnings("unchecked")
List<Integer>  newbuilding= (List<Integer>) building.get("newList");
 String s = StringUtils.strip(newbuilding.toString(),"[]");
 String sql="DELETE from  building where uuid in("+s+")   " ;  
 return sql;
}
/**
 * updateBuildTree接口实现类
 * @param building
 * @return sql
 */
public String  updateBuildTree(Building building) {
	return new SQL(){
		{
			UPDATE("building");
			if(building.getName() != null){
				SET(" name = #{name} ");
			}
			WHERE(" uuid = #{uuid} ");
		}
	}.toString();
}

}
 