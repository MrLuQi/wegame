package com.game.service; 

import java.util.List;
import java.util.Map;

import com.game.pojo.Building;



/**
 * 
 * @author 杨佳伟
 *2018年1月6日下午4:40:16
 *@parms
 */
public interface BuildingSercice {
	/**
	 * 查询树的service
	 * @return List<Building>树结构数据
	 */
List<Building> selectBuildings();
/**
 * 
 * @param kpi 对象
 * @param listmap 集合
 * @param list  集合
 * @return 数据递归得到的集合
 */
List<Map<String, Object>> getTreeList(Building kpi,List<Map<String, Object>> listmap,List<Building> list);
/**
 * 新增树service
 * @param building
 */
void  insertBuilding( Building building);
/**
 * 删除树sevice
 * @param uuid
 */
void seleectList(String uuid);

/**
 * 更新树service
 * @param building
 */
void  updateBuildingTree(Building building);

}
 