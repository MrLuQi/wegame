package com.game.service; 

import com.game.pojo.User;



/** 
 * @author 杨佳伟 E-mail: 
 * @version 创建时间：2017年12月23日 下午2:41:23 
 * 类说明 
 */
public interface UserService {
	/**
	 * 查找账号密码
	 * @param loginname
	 * @param password
	 * @return
	 */
User findUser(String loginname, String password);

}
 