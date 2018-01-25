package com.game.service; 

import java.util.List;
import java.util.Map;

import com.game.pojo.Building;



/**
 * 
 * @author ���ΰ
 *2018��1��6������4:40:16
 *@parms
 */
public interface BuildingSercice {
	/**
	 * ��ѯ����service
	 * @return List<Building>���ṹ����
	 */
List<Building> selectBuildings();
/**
 * 
 * @param kpi ����
 * @param listmap ����
 * @param list  ����
 * @return ���ݵݹ�õ��ļ���
 */
List<Map<String, Object>> getTreeList(Building kpi,List<Map<String, Object>> listmap,List<Building> list);
/**
 * ������service
 * @param building
 */
void  insertBuilding( Building building);
/**
 * ɾ����sevice
 * @param uuid
 */
void seleectList(String uuid);

/**
 * ������service
 * @param building
 */
void  updateBuildingTree(Building building);

}
 