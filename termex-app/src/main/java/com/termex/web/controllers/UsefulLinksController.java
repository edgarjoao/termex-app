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
public class UsefulLinksController {

	private final Logger logger = LoggerFactory.getLogger(UsefulLinksController.class);

	private static final String HEADER_MESSAGE ="HEADER_MESSAGE";
	private static final String CONTENT_MESSAGE ="CONTENT_MESSAGE";

	@RequestMapping(value = "{language}/vision", method = RequestMethod.GET)
	public String goVision(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {

		modelMap.put(HEADER_MESSAGE, "Visión");
		modelMap.put(CONTENT_MESSAGE, "Ser una empresa de primer nivel, propiciando el desarrollo económico de su personal y del Estado, contribuyendo a la calidad de vida de los Jaliscienses.");

		return "vision";
	}

	@RequestMapping(value = "{language}/mision", method = RequestMethod.GET)
	public String goMision(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {

		modelMap.put(HEADER_MESSAGE, "Misión");
		modelMap.put(CONTENT_MESSAGE, "Somos una empresa innovadora de la industria de la transformación, que fabricamos productos de este sector, impulsando el desarrollo del Estado de Jalisco. Contamos con una amplia experiencia en esta rama productiva, ya que tenemos más de 30 años produciendo los bienes que requieren nuestros clientes a nivel nacional.");

		return "mision";
	}

	@RequestMapping(value = "{language}/objetivos", method = RequestMethod.GET)
	public String goObjetivos(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {

		modelMap.put(HEADER_MESSAGE, "Objetivos");
		modelMap.put(CONTENT_MESSAGE, "Producir bienes y productos acordes con las necesidades de la industria automotriz del país y otras afines. < br/> Lograr ser una empresa que exporte sus productos, con la finalidad de lograr la expansión y superación económica de la empresa y de los elementos humanos con que cuenta.");

		return "objetivos";
	}

}
