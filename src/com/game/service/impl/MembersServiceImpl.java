package com.game.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.MembersDao;
import com.game.pojo.Members;
import com.game.service.MembersService;
@Service("membersService")
public class MembersServiceImpl implements MembersService {

	@Autowired
	private MembersDao membersDao;
	
	
	@Override
	public Members findMember(String memberno, String passpwd) {
		// TODO Auto-generated method stub
		return membersDao.findMember(memberno,passpwd);
	}


	@Override
	public Integer findMemberBalance(Integer mid) {
		// TODO Auto-generated method stub
		return membersDao.findMemberBalance(mid);
	}

}
