package org.zerock.persistence;

import org.zerock.domain.MemberVO;

public interface MemberDAO {
	
	public String getTime();
	public void insertMember(MemberVO vo);
	public String idCheck(String id);
}
