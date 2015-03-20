package com.termex.web.controllers;

import java.util.Date;
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

import com.termex.daos.ContactDAO;
import com.termex.db.model.ContactUs;
import com.termex.exceptions.ContactException;

@Controller
public class ContactanosController {

	private final Logger logger = LoggerFactory.getLogger(UsefulLinksController.class);

	@Autowired
	private ContactDAO contactDAO;

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = "{language}/contactanos", method = RequestMethod.GET)
	public String goContactanos(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {
		return "contactanos";
	}


	@RequestMapping(value = "{language}/contactanos", method = RequestMethod.POST)
	public String contactanos(@PathVariable("language") String language, ModelMap modelMap,
			HttpServletRequest request, Locale locale) {
		logger.info("Dentro del Contacto Form");
		String nombre = (String) request.getParameter("nombre");
		String correo = (String) request.getParameter("correo");
		String comentarios = (String) request.getParameter("comentarios");

		logger.info("Nombre: {}", nombre);
		logger.info("Correo: {}", correo);
		logger.info("Comentarios: {}", comentarios);

		ContactUs contact = new ContactUs();
		contact.setContEmail(correo == null ?"":correo);
		contact.setContTitle(nombre==null?"":nombre);
		contact.setContContent(comentarios==null?"":comentarios);
		contact.setContCreatedDate(new Date());

		try {
			contactDAO.addContactMessage(contact);
		} catch (ContactException e) {
			logger.error("Ha ocurrido un error al guardar el comentario ", e);
		}

		String message = messageSource.getMessage("label.contact.success", null, locale);
		modelMap.put("SUCCESS_MESSAGE", message);

		return "contactanos";
	}

}
