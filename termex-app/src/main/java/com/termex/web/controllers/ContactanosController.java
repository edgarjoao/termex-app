package com.termex.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactanosController {

	private final Logger logger = LoggerFactory.getLogger(UsefulLinksController.class);

	@RequestMapping(value = "{language}/contactanos", method = RequestMethod.GET)
	public String goContactanos(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {


		return "contactanos";
	}

}
