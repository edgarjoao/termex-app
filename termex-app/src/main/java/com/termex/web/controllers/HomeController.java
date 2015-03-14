package com.termex.web.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.termex.exceptions.CategoryException;
import com.termex.services.CategoryService;
import com.termex.utils.LanguageUtils;
import com.termex.web.views.CategoryDetailView;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "{language}/home", method = RequestMethod.GET)
	public String goLogin(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {

		logger.info("Lenguage {}", language);

		try {
			List<CategoryDetailView> categorryDetails = categoryService.getCategoryViewListByLanguage(language);
			int lang = LanguageUtils.getLanguageId(language);
			modelMap.put("nombreTerminal", lang ==1?"Terminales":"Terminals");
			modelMap.put("categories", categorryDetails);
			modelMap.put("lang", language);
		} catch (CategoryException e) {
			e.printStackTrace();
		}

		return "home";
	}
}
