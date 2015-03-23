package com.termex.web.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsefulLinksController {

	private final Logger logger = LoggerFactory.getLogger(UsefulLinksController.class);

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = "{language}/vision", method = RequestMethod.GET)
	public String goVision(@PathVariable("language") String language,
			ModelMap modelMap, HttpServletRequest request) {
		return "vision";
	}

	@RequestMapping(value = "{language}/mision", method = RequestMethod.GET)
	public String goMision(@PathVariable("language") String language, ModelMap modelMap,
			HttpServletRequest request, Locale locale) {
		return "mision";
	}

	@RequestMapping(value = "{language}/objetivos", method = RequestMethod.GET)
	public String goObjetivos(@PathVariable("language") String language, ModelMap modelMap,
			HttpServletRequest request, Locale locale) {
		return "objetivos";
	}

}
