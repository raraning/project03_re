package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {
	public void regist(MemberVO member) throws Exception;
	public String idCheck(String id) throws Exception;
}
