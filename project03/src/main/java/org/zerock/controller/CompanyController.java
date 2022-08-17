package org.zerock.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.CompanyVO;
import org.zerock.dto.CompanyLoginDTO;
import org.zerock.service.CompanyService;

@Controller
@RequestMapping("/company/*")
public class CompanyController {
	
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
	
	@Inject
	private CompanyService service;
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.zerock.mapper.CompanyMapper";
	
	@GetMapping("/companyjoin")
	public void companyjoinGET(CompanyVO company) throws Exception{
		logger.info("companyjoin get====================");
	}
	
	@PostMapping("/companyjoin")
	public String companyjoinPOST(CompanyVO company, RedirectAttributes rttr) throws Exception{
		logger.info("companyjoin post================");
		logger.info(company.toString());
		
		service.regist(company);
		
		return"redirect:/";
	}
	
	@GetMapping("/agreement")
	public void agreementGET(CompanyVO company) throws Exception{
		logger.info("company agreement get==============");
	}
	
	@RequestMapping(value="/idok", produces="text/plain;charset=UTF-8")
	public @ResponseBody String idCheck(String c_id) throws NumberFormatException, Exception{
		logger.info(c_id);
		
		int num = Integer.parseInt(service.idCheck(c_id));
		
		logger.info(service.idCheck(c_id));
		
		String result="";
		
		if(num == 0) {
			result = "사용할 수 있는 아이디입니다.";
		}else {
			result = "존재하는 아이디입니다.";
		}
		
		return result;
	}
	
	@GetMapping("/companylogin")
	public void companyloginGET() throws Exception{
		logger.info("company login get=================");
	}
	
	@PostMapping("/companylogin")
	public String companyloginPOST(CompanyLoginDTO dto, HttpSession session) throws Exception{
		logger.info("company login post===========");
		logger.info(dto.toString());
		
		CompanyVO vo = sqlSession.selectOne(namespace+".login",dto);
		
		if(vo != null) {
			session.setAttribute("c_id", vo.getC_id());
			session.setAttribute("c_name", vo.getC_name());
		}
		
		return"redirect:/";
		
	}
	
	@GetMapping("/companymenu")
	public void companymenuGET() throws Exception{
		logger.info("company menu get=================");
	}

}








