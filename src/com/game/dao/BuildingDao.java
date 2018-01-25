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
 * @author ���ΰ
 *2018��1��6������4:40:01
 *@parms
 */
public interface BuildingDao {
	/**
	 * ��ѯ��sql
	 * @return List<Building>build����
	 */
@Select(" SELECT * FROM  BUILDING ")
List<Building>  selectBuildings();
/**
 * ������sql
 * @param building pojo
 */
@SelectProvider(type=BuildMapper.class,method="insertBuilding")
 void addBuilding(Building building);
/**
 * ��ѯuuid�����нڵ���uuidsql
 * @param uuid
 * @return �ڵ������uuid
 */
@SelectProvider(type=BuildMapper.class,method="deleBuildTree")
List<Building> selectList(String uuid);
/**
 * ����selectList(String uuid)�õ���uuidɾ��������sql
 * @param building pojo
 */
@SelectProvider(type=BuildMapper.class,method="deleBuildTree2")
void deleBuildingTree(Map<String, Object>  building);

/**
 * ������sql
 * @param buildingpojo
 */
@SelectProvider(type=BuildMapper.class,method="updateBuildTree")
void updateBuildingTree(Building building);

}
 