package com.game.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.pojo.Building;
import com.game.service.BuildingSercice;

/**
 * 
 * @author ���ΰ 2018��1��6������4:08:10
 * @parms
 */
@Controller
public class BuildTreeController {
	@Autowired
	private BuildingSercice BuildingSercice;

	/**
	 * 
	 * @return ��ҳ
	 */
	@RequestMapping(value = "/beijingsaiche")
	public String name() {

		return "beijingsaiche";

	}
/**
 * ��ѯ��
 * @return json���ṹ
 */
	@RequestMapping(value = "/selectBuildTree")
	@ResponseBody
	public Object getTreeList() {
		List<Map<String, Object>> treeList = BuildingSercice.getTreeList(null,
				null, null);
		return treeList;

	}
/**
 * ������
 * @param building pojo
 * @return �޸����ض�����ҳ
 */
	@RequestMapping(value = "/addBuildTree")
	public String addBuildTree(@ModelAttribute Building building) {

		BuildingSercice.insertBuilding(building);
		return "redirect:/test";

	}
/**
 * ɾ����
 * @param uuid �ֶ�Ψһ��ʶ
 * @return ɾ�����ض�����ҳ
 */
	@RequestMapping(value ="/deleBuildTree")
	public String deleBuildTree(String uuid) {
		BuildingSercice.seleectList(uuid);
		return "redirect:/test";
	}
	/**
	 * ������
	 * @param building pojo
	 * @return �������ض�����ҳ
	 */
@RequestMapping(value="/updateBuildingTree")
public String  updateBuildingTree(Building  building){
	BuildingSercice.updateBuildingTree(building);
	return "redirect:/test";
}
}
