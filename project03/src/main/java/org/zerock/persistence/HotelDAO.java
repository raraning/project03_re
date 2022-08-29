package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.HotelVO;
import org.zerock.domain.SellRoomVO;

public interface HotelDAO {
	
	public void insertHotel(HotelVO hotel);
	public void addAttack(String fullName, int h_uid) throws Exception;
	public List<HotelVO> listHotel() throws Exception;
	public List<HotelVO> listPension() throws Exception;
	public void registsellroom(SellRoomVO sellroom) throws Exception;
	public void commasellroom(SellRoomVO sellroom) throws Exception;
	public List<SellRoomVO> hotelsellList() throws Exception;
	
	public List<SellRoomVO> hotelsellPage(int page) throws Exception;
	public List<SellRoomVO> listCriteria(Criteria cri) throws Exception;
}
