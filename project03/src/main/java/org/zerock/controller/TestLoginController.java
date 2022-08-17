package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.dto.TestLoginDTO;

@Controller
@RequestMapping("/test/*")
public class TestLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestLoginController.class);
	
	
	@GetMapping("/login")
	public void loginGET() throws Exception{
		logger.info("test login get=============");
	}
	
	@PostMapping("/login")
	public String loginPOST(TestLoginDTO dto) throws Exception{
		logger.info("test login post=============");
		logger.info(dto.toString());
		
		return"redirect:/login";
	}
}
