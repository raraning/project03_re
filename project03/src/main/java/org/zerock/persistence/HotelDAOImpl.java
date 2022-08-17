package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.HotelFileVO;
import org.zerock.domain.HotelVO;
import org.zerock.domain.SellRoomVO;

@Repository
public class HotelDAOImpl implements HotelDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.zerock.mapper.HotelMapper";

	@Override
	public void insertHotel(HotelVO hotel) {
		sqlSession.insert(namespace+".insertHotel",hotel);
	}

	@Override
	public void addAttack(String fullName, int h_uid) throws Exception {
		System.out.println(h_uid);
		
		//mapper로 값을 여러개 전달시 객체에 담아서 전달 ★
		HotelFileVO vo = new HotelFileVO();
		vo.setFullName(fullName);
		vo.setH_uid(h_uid);
		
		System.out.println("==========last vo===========:"+vo.toString());
		sqlSession.insert(namespace+".addAttach",vo);
	}

	@Override
	public List<HotelVO> listHotel() throws Exception {
		return sqlSession.selectList(namespace+".listHotel");
	}

	@Override
	public List<HotelVO> listPension() throws Exception {
		return sqlSession.selectList(namespace+".listPension");
	}

	@Override
	public void registsellroom(SellRoomVO sellroom) throws Exception {
		sqlSession.insert(namespace+".insertSellRoom",sellroom);
		
	}
	
	
}
