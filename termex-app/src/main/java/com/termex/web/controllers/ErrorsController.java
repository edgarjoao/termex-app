package com.termex.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorsController {

	private final Logger logger = LoggerFactory.getLogger(ErrorsController.class);

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String goAdmin(Model model) {
		logger.info("Hubo un error en la Aplicación");
		return "redirect:/es/home.html";
	}

	@RequestMapping(value="/error_404", method = RequestMethod.GET)
	public String showErrorCodeGet(HttpServletRequest request){
		logger.info("Error 404 Message");
		return "error_404";
	}

}
