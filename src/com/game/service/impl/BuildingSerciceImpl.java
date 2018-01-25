package com.game.service.impl; 

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.aspectj.weaver.Iterators;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.BuildingDao;
import com.game.pojo.Building;
import com.game.service.BuildingSercice;


/** 
 * @author ���ΰ E-mail: 
 * @version ����ʱ�䣺2018��1��4�� ����5:01:45 
 * ��˵�� 
 */
@Service
public class BuildingSerciceImpl implements BuildingSercice {
@Autowired
private BuildingDao buildingDao;

	@Override
	public List<Building> selectBuildings() {
		List<Building> buildList=buildingDao.selectBuildings();
		return buildList;
	}
	
	
	public List<Map<String, Object>> getTreeList(Building kpi,List<Map<String, Object>> listmap,List<Building> list) {
		        if(listmap == null || list == null ) {
		        	//List<Building> list2 = BuildingSercice.selectBuildings();
		        	 list= buildingDao.selectBuildings();
		             listmap = new ArrayList<Map<String,Object>>();
		             for(Building k: list) {
		                 if(k.getParentuuid() == null || "0".equals(k.getParentuuid()+"" ) || "null".equals(k.getParentuuid()+"" )) {
		                     Map<String, Object> map = new HashMap<String, Object>();
		                     map.put("id", k.getUuid().toString());
		                     map.put("text", k.getName());
		                     listmap.add(map);
		                 }
		             }
		             getTreeList(kpi,listmap,list);
		             
		         } else if(listmap.size()>0 && list.size()>0) {
		             for(Map<String, Object> mp:listmap) {
		                 List<Map<String, Object>> childlist = new ArrayList<Map<String,Object>>();
		                 for(Building k:list) {
		                     String id = mp.get("id")+"";
		                    String pid = k.getParentuuid()+"";
		                     if(id.equals(pid)) {
		                         Map<String, Object> m = new HashMap<String, Object>();
		                         m.put("id", k.getUuid().toString());
		                         m.put("text", k.getName());
		                         childlist.add(m);
		                     }
		                 }
		                 if(childlist.size()>0) {		                	
		                     List<String> sizelist = new ArrayList<String>();
		                     sizelist.add(childlist.size()+"");	                    
		                     mp.put("nodes", childlist);
		                     mp.put("tags", sizelist);
		                     getTreeList(kpi,childlist,list);
		                 }
		             }
		         }
//		         return JSONArray.fromObject(listmap).toString();
		        return  listmap;

			}
/**
 * 
 */

	@Override
	public void insertBuilding(Building building) {
		buildingDao.addBuilding(building);
		
	}


@Override
public void seleectList(String uuid) {
	
  List<Building> selectList = buildingDao.selectList(uuid);
  List<Integer > newList= new ArrayList<Integer>();
  Map<String, Object> map = new HashMap<String, Object>();
  map.put("newList", newList); 
  
  Iterator<Building> it=selectList.iterator();
  while (it.hasNext()) {	  
  Building nextString=it.next();
  System.out.println(nextString.getUuid());
   newList.add(nextString.getUuid());
}
buildingDao.deleBuildingTree(map);
	
}


@Override
public void updateBuildingTree(Building building) {
	buildingDao.updateBuildingTree(building);
}
}
 


