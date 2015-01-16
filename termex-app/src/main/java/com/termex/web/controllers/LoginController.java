package com.termex.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.termex.exceptions.CategoryException;
import com.termex.services.CategoryService;
import com.termex.web.views.CategoryDetailView;
import com.termex.web.views.CategoryView;

/**
 * 
 * @author joao
 *
 */
@Controller
public class LoginController {
	
	private final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private CategoryService categoryService;	

	@RequestMapping(value = "admin/login", method = RequestMethod.GET)
	public String goLogin(Model model) {
		logger.info("Into Login Conroller");
		
		try {
			/*
			CategoryView catView = new CategoryView();
			catView.setCode("0006");
			catView.setStatus("A");
			
			CategoryDetailView catdView1 = new CategoryDetailView();			
			catdView1.setDescription("Test Manguera Espanol");
			catdView1.setLanguageId(1);
			
			CategoryDetailView catdView2 = new CategoryDetailView();			
			catdView2.setDescription("Test Manguera English");
			catdView2.setLanguageId(2);
			
			catView.getCategoryDetails().add(catdView1);
			catView.getCategoryDetails().add(catdView2);
			
			categoryService.addCategory(catView);
			*/
			
			
			CategoryView cView = categoryService.getCategoryById(9);
			logger.info("{} {}", cView.getCategoryId(), cView.getCode());			
			logger.info("{} {}", cView.getStatus(), cView.getCategoryDetails().size());
			
			
			
			/*
			CategoryView cView = categoryService.getCategoryById(9);
			cView.setCode("0006-T");
			cView.setStatus("I");
									
			cView.getCategoryDetails().get(0).setDescription("Test Manguera Espanol - U");						
			cView.getCategoryDetails().get(1).setDescription("Test Manguera English - U");
			categoryService.editCategory(cView);
			*/			
			
			/*
			categoryService.deleteCategory(8);
			*/
					
		} catch (CategoryException ce) {
			logger.error("There was an exception trying to get the list of languages");
		}
		
		return "login";
	}

}
