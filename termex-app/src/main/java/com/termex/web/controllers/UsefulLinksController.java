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

	private static final String HEADER_MESSAGE ="HEADER_MESSAGE";
	private static final String CONTENT_MESSAGE ="CONTENT_MESSAGE";

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = "{language}/vision", method = RequestMethod.GET)
	public String goVision(@PathVariable("language") String language,Locale locale, ModelMap modelMap, HttpServletRequest request) {

		String vision = messageSource.getMessage("label.vision", null, locale);
		StringBuilder visionMessage = new StringBuilder();
		visionMessage.append(messageSource.getMessage("label.vision1", null, locale))
		.append(messageSource.getMessage("label.vision2", null, locale));

		modelMap.put(HEADER_MESSAGE, vision);
		modelMap.put(CONTENT_MESSAGE, visionMessage.toString());

		return "vision";
	}

	@RequestMapping(value = "{language}/mision", method = RequestMethod.GET)
	public String goMision(@PathVariable("language") String language, ModelMap modelMap,
			HttpServletRequest request, Locale locale) {

		String mision = messageSource.getMessage("label.mission", null, locale);

		StringBuilder missionMsg = new StringBuilder();
		missionMsg.append(messageSource.getMessage("label.mission1", null, locale))
		.append(messageSource.getMessage("label.mission2", null, locale))
		.append(messageSource.getMessage("label.mission3", null, locale))
		.append(messageSource.getMessage("label.mission4", null, locale));

		modelMap.put(HEADER_MESSAGE, mision);
		modelMap.put(CONTENT_MESSAGE, missionMsg.toString());

		return "mision";
	}

	@RequestMapping(value = "{language}/objetivos", method = RequestMethod.GET)
	public String goObjetivos(@PathVariable("language") String language, ModelMap modelMap,
			HttpServletRequest request, Locale locale) {

		String objetives = messageSource.getMessage("label.objetives", null, locale);

		StringBuilder objMessage = new StringBuilder();
		objMessage.append(messageSource.getMessage("label.objetives1", null, locale))
		.append(messageSource.getMessage("label.objetives2", null, locale))
		.append(messageSource.getMessage("label.objetives3", null, locale));

		modelMap.put(HEADER_MESSAGE, objetives);
		modelMap.put(CONTENT_MESSAGE, objMessage.toString());

		return "objetivos";
	}

}
