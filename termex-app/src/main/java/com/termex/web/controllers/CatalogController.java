package com.termex.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CatalogController {

	private final Logger logger = LoggerFactory.getLogger(CatalogController.class);

	@RequestMapping(value = "catalogo_online", method = RequestMethod.GET)
	public String categoryHome(Model modelMap, HttpServletRequest request) {
		return "catalogo_online";
	}
}
