package org.zerock.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;

	@Override
	public void regist(MemberVO member) throws Exception {
		dao.insertMember(member);
	}

	@Override
	public String idCheck(String id) throws Exception {
		return dao.idCheck(id);		
	}
	
	
}
