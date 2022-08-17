package org.zerock.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.HotelFileVO;
import org.zerock.domain.HotelVO;
import org.zerock.domain.SellRoomVO;
import org.zerock.service.HotelService;

@Controller
@RequestMapping("/hotel/*")
public class HotelController {
	
	private static final Logger logger = LoggerFactory.getLogger(HotelController.class);
	
	@Inject
	private HotelService service;
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.zerock.mapper.HotelMapper";
	
	@GetMapping("/hotelmain")
	public void hotelmainGET() throws Exception{
		logger.info("hotelmain get=============");
	}
	
	@GetMapping("/hotelregist")
	public void hotelregistGET() throws Exception{
		logger.info("hotel regist get=============");
	}
	
	// 첨부파일 저장 경로
	// servlet-context.xml에 있는 bean id="uploadPath" 경로 매칭
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@PostMapping("/hotelregist")
	public String hotelregistPOST(HotelVO hotel, RedirectAttributes rttr) throws Exception{
		logger.info("hotel regist post=============");
		logger.info(hotel.toString());
		
		service.regist(hotel);
		rttr.addFlashAttribute("h_name", hotel.getH_name());
		
		return"redirect:/hotel/hotelfileregist";
	}
	
	@GetMapping("/hotelfileregist")
	public void hotelfileregistGET(HotelVO hotel, RedirectAttributes rttr, Model model) throws Exception{
		logger.info("hotel file regist get=============");
		int h_uid = sqlSession.selectOne(namespace+".selectHuid");
		
		model.addAttribute("h_uid", h_uid);
		
	}
	
	@PostMapping("/hotelfileregist")
	public String hotelfileregistPOST(HotelFileVO hotelfile, MultipartFile[] file, RedirectAttributes rttr,@RequestParam(name="h_uid",defaultValue="0") int h_uid) throws Exception{
		logger.info("hotel file regist post=============");
		logger.info("h_uid : "+h_uid);
		logger.info("file.length : "+file.length);
		
		String savedName[] = new String[file.length];
		String signdate = "";
		
		for(int i=0;i<file.length;i++) {
			
			if(file[i].getSize() > 0) {
				
				logger.info("originalName : "+file[i].getOriginalFilename());
				logger.info("size : "+file[i].getSize());
				logger.info("contentType : "+file[i].getContentType());
				
				Date today = new Date();
				SimpleDateFormat cal = new SimpleDateFormat("yyyyMMddhhmmss");
				signdate = cal.format(today);
				
				savedName[i] = signdate+"_"+file[i].getOriginalFilename();
				byte[] fileData = file[i].getBytes();
				
				logger.info("savedName["+i+"] : "+savedName);
				
				File target = new File(uploadPath, savedName[i]);
				
				FileCopyUtils.copy(fileData, target);
			}
		}
		
		rttr.addFlashAttribute("savedName",savedName);
		rttr.addFlashAttribute("fullName",savedName);
		rttr.addFlashAttribute("regdate",signdate);
		
		//hotelfile.setFullName(savedName);
		hotelfile.setRegdate(signdate);
		hotelfile.setFiles(savedName);
		hotelfile.setH_uid(h_uid);
		
		logger.info(hotelfile.toString());
		service.registfile(hotelfile,h_uid);
		
		return"redirect:/company/companymenu";
	}
	
	//숙소상품 판매하기
	@GetMapping("/hotelsellregist")
	public void hotelsellregistGET(Model model, RedirectAttributes rttr) throws Exception{
		logger.info("hotel sell regist get=============");
		
		model.addAttribute("listhotel",service.listHotel());
		model.addAttribute("listpension",service.listPension());
	}
	//숙소상품 판매하기
	@PostMapping("/hotelsellregist")
	public String hotelsellregistPOST(SellRoomVO sellroom, RedirectAttributes rttr) throws Exception{
		logger.info("hotel sell regist post=============");
		logger.info(sellroom.toString());
		
		service.registsellroom(sellroom);
		rttr.addFlashAttribute("h_uid", sellroom.getH_uid());
		
		return"redirect:/hotel/hotelfileregist";
	}
	
	
}








