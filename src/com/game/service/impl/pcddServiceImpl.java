package com.game.service.impl;


import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.PcddDao;
import com.game.pojo.Orders;
import com.game.service.pcddService;
import com.game.util.common.Util_PCDD;
import com.game.util.common.json_KJ_Data;

@Service
public class pcddServiceImpl implements pcddService {
	/**
	 * 模拟用户下注数据,从数据库取出string数据
	 */
@Autowired
private PcddDao pcddDao;


}
