package com.game.controller;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import com.game.service.pcddService;

@Controller
public class PcddController {
	@Autowired 
	private pcddService pcddService;
	
	
	@RequestMapping(value = "/q")
	public String name(String a) {
		System.out.println("aaaaaaaaaa");
		pcddService.kiangJiangjson();
	return "pcdandan";
	}
}
