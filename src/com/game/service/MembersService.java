package com.game.service;

import com.game.pojo.Members;

public interface MembersService {

	Members findMember(String memberno, String passpwd);

	Integer findMemberBalance(Integer mid);
	
	 void updateMemberBalance(Integer id,Integer newBalance);

	void insertMemberno(String memberno, String passpwd);
}
