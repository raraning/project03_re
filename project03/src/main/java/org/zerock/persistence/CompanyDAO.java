package org.zerock.persistence;

import org.zerock.domain.CompanyVO;

public interface CompanyDAO {
	
	public String getTime();
	public void insertCompany(CompanyVO vo);
	public String idCheck(String c_id);
}
