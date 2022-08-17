package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.HotelFileVO;
import org.zerock.domain.HotelVO;
import org.zerock.domain.SellRoomVO;
import org.zerock.persistence.HotelDAO;

@Service
public class HotelServiceImpl implements HotelService{
	
	@Inject
	private HotelDAO dao;
	
	@Transactional
	@Override
	public void regist(HotelVO hotel) throws Exception {
		dao.insertHotel(hotel);
		
		
	}

	@Override
	public void registfile(HotelFileVO hotelfile, int h_uid) throws Exception {
		//∆ƒ¿œ√∑∫Œ
				String[] files = hotelfile.getFiles();
				
				System.out.println("=============== serviceimpl .. hotelfile ===========:"+hotelfile);
				
				if(files == null) { return; }
				
				for(String fileName:files) {
					System.out.println("====fileName====:"+fileName);
					System.out.println("====h_uid====:"+h_uid);
					dao.addAttack(fileName,h_uid);					
				}
	}

	@Override
	public List<HotelVO> listHotel() throws Exception {
		return dao.listHotel();
	}

	@Override
	public List<HotelVO> listPension() throws Exception {
		return dao.listPension();
	}

	@Override
	public void registsellroom(SellRoomVO sellroom) throws Exception {
		dao.registsellroom(sellroom);
		
	}
	
	
	
}
