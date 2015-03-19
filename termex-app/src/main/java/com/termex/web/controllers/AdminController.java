package com.termex.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/admin")
public class AdminController {

	private final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value = "inicio", method = RequestMethod.GET)
	public String goAdmin(Model model) {
		logger.info("Dentro de la consola de Administracion");
		return "inicio";
	}
}
