package com.game.service;

import com.game.pojo.Members;
/**
 * 
 * @author LUQI
 *
 */
public interface MembersService {

	Members findMember(String memberno, String passpwd);

}