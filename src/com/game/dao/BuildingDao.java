package com.game.dao; 

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import com.game.dao.mapper.BuildMapper;
import com.game.pojo.Building;


/**
 * 
 * @author 杨佳伟
 *2018年1月6日下午4:40:01
 *@parms
 */
public interface BuildingDao {
	/**
	 * 查询树sql
	 * @return List<Building>build集合
	 */
@Select(" SELECT * FROM  BUILDING ")
List<Building>  selectBuildings();
/**
 * 新增树sql
 * @param building pojo
 */
@SelectProvider(type=BuildMapper.class,method="insertBuilding")
 void addBuilding(Building building);
/**
 * 查询uuid下所有节点树uuidsql
 * @param uuid
 * @return 节点的所有uuid
 */
@SelectProvider(type=BuildMapper.class,method="deleBuildTree")
List<Building> selectList(String uuid);
/**
 * 根据selectList(String uuid)得到的uuid删除其数据sql
 * @param building pojo
 */
@SelectProvider(type=BuildMapper.class,method="deleBuildTree2")
void deleBuildingTree(Map<String, Object>  building);

/**
 * 更新树sql
 * @param buildingpojo
 */
@SelectProvider(type=BuildMapper.class,method="updateBuildTree")
void updateBuildingTree(Building building);

}
 