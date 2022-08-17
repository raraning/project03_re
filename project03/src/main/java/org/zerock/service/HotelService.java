package org.zerock.service;

import java.util.List;

import org.zerock.domain.HotelFileVO;
import org.zerock.domain.HotelVO;
import org.zerock.domain.SellRoomVO;

public interface HotelService {
	
	public void regist(HotelVO hotel) throws Exception;
	public void registfile(HotelFileVO hotelfile, int h_uid) throws Exception;
	public List<HotelVO> listHotel() throws Exception;
	public List<HotelVO> listPension() throws Exception;
	public void registsellroom(SellRoomVO sellroom) throws Exception;
}
