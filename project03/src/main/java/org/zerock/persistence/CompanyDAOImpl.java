package org.zerock.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.CompanyVO;

@Repository
public class CompanyDAOImpl implements CompanyDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.zerock.mapper.CompanyMapper";
	
	@Override
	public String getTime() {
		return sqlSession.selectOne(namespace+".getTime");
	}

	@Override
	public void insertCompany(CompanyVO vo) {
		sqlSession.insert(namespace+".insertCompany",vo);
	}

	@Override
	public String idCheck(String c_id) {
		return sqlSession.selectOne(namespace+".idCheck",c_id);
	}
	
	
	
}
