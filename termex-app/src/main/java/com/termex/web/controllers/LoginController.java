package com.termex.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 
 * @author joao
 *
 */
@Controller
public class LoginController {
	
	private final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(value = "admin/login", method = RequestMethod.GET)
	public String goLogin(Model model) {
		logger.info("Into Login Conroller");
		
		return "login";
	}

}
