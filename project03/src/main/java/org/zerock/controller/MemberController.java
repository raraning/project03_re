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
import org.zerock.domain.MemberVO;
import org.zerock.dto.LoginDTO;
import org.zerock.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService service;
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.zerock.mapper.MemberMapper";
	
	@GetMapping("/memberjoin")
	public void memberjoinGET(MemberVO member) throws Exception{
		logger.info("memberjoin get================");
	}
	
	@GetMapping("/join")
	public void joinGET(MemberVO member) throws Exception{
		logger.info("join get================");
	}
	
	@PostMapping("/memberjoin")
	public String memberjoinPOST(MemberVO member, RedirectAttributes rttr) throws Exception{
		logger.info("join post==============");
		logger.info(member.toString());
		
		service.regist(member);
		
		return"redirect:/";
	}
	
	@GetMapping("/agreement")
	public void agreementGET(MemberVO member) throws Exception{
		logger.info("agreement get==============");
	}
	
	@GetMapping("/login")
	public void loginGET() throws Exception{
		logger.info("login get==============");
	}
	
	@GetMapping("/logintype")
	public void logintypeGET() throws Exception{
		logger.info("logintype get==============");
	}

	@PostMapping("/login")
	public String loginPOST(LoginDTO dto, HttpSession session) throws Exception{
		logger.info("login post==============");
		logger.info(dto.toString());
		
		MemberVO vo = sqlSession.selectOne(namespace+".login",dto);
		
		if(vo != null) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", vo.getMembername());
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/idok", produces="text/plain;charset=UTF-8")
	public @ResponseBody String idCheck(String id) throws NumberFormatException, Exception {
		logger.info(id);
		
		int num = Integer.parseInt(service.idCheck(id));
		
		logger.info(service.idCheck(id));
		
		String result = "";
		
		if(num == 0) {
			result = "사용할 수 있는 아이디입니다.";
		}else {
			result = "존재하는 아이디입니다.";
		}
		
		return result;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/mymenu")
	public void mymenuGET(MemberVO member) throws Exception{
		logger.info("mymenu get===========");
	}
}







