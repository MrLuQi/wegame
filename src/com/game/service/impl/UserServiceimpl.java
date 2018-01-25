package com.game.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.UserDao;
import com.game.pojo.User;
import com.game.service.UserService;



/**
 * @author 杨佳伟 E-mail:
 * @version 创建时间：2017年12月23日 下午2:42:48 类说明
 */
@Service("userService")
public class UserServiceimpl implements UserService {
	@Autowired
	private UserDao userDao;

	/*@Override
	public User findUser() {
		User findUser = userDao.findUser();
		return findUser;
	}*/

	@Override
	public User findUser(String loginname, String password) {
		
		return userDao.findUser(loginname,password);
	}

}
