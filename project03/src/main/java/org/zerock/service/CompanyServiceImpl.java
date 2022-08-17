package org.zerock.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.CompanyVO;
import org.zerock.persistence.CompanyDAO;

@Service
public class CompanyServiceImpl implements CompanyService{
	
	@Inject
	private CompanyDAO dao;

	@Override
	public void regist(CompanyVO company) throws Exception {
		dao.insertCompany(company);
	}

	@Override
	public String idCheck(String c_id) throws Exception {
		return dao.idCheck(c_id);
	}
	
	
	
}
