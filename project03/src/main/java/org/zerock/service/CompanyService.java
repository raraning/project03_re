package org.zerock.service;

import org.zerock.domain.CompanyVO;

public interface CompanyService {
	public void regist(CompanyVO company) throws Exception;
	public String idCheck(String c_id) throws Exception;
}
