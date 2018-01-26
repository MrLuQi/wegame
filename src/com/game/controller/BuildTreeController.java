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
 * @author 杨佳伟 2018年1月6日下午4:08:10
 * @parms
 */
@Controller
public class BuildTreeController {
	@Autowired
	private BuildingSercice BuildingSercice;

	/**
	 * 
	 * @return 主页
	 */
	@RequestMapping(value = "/beijingsaiche")
	public String name() {

		return "beijingsaiche";

	}
/**
 * 查询树
 * @return json树结构
 */
	@RequestMapping(value = "/selectBuildTree")
	@ResponseBody
	public Object getTreeList() {
		List<Map<String, Object>> treeList = BuildingSercice.getTreeList(null,
				null, null);
		return treeList;

	}
/**
 * 新增树
 * @param building pojo
 * @return 修改完重定向到主页
 */
	@RequestMapping(value = "/addBuildTree")
	public String addBuildTree(@ModelAttribute Building building) {

		BuildingSercice.insertBuilding(building);
		return "redirect:/test";

	}
/**
 * 删除树
 * @param uuid 字段唯一标识
 * @return 删除完重定向到主页
 */
	@RequestMapping(value ="/deleBuildTree")
	public String deleBuildTree(String uuid) {
		BuildingSercice.seleectList(uuid);
		return "redirect:/test";
	}
	/**
	 * 更新树
	 * @param building pojo
	 * @return 更新完重定向到主页
	 */
@RequestMapping(value="/updateBuildingTree")
public String  updateBuildingTree(Building  building){
	BuildingSercice.updateBuildingTree(building);
	return "redirect:/test";
}
}
