package com.termex.web.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.termex.exceptions.CategoryException;
import com.termex.services.CategoryService;
import com.termex.web.views.CategoryView;

@Controller
@RequestMapping(value="/admin/categorias/")
public class CategoryAdminController {

	private final Logger logger = LoggerFactory.getLogger(CategoryAdminController.class);
	
	private final static String CUSTOM_EXCEPTION = "custom_exception";
	private final static String SUCCESS_MESSAGE = "SUCCESS_MESSAGE";
	
	@Autowired
	private CategoryService categoryService;	

	@RequestMapping(value = "categorias", method = RequestMethod.GET)
	public String categoryHome(Model modelMap, HttpServletRequest request) throws CategoryException {
		try {
			List<CategoryView> categoriesView = categoryService.getCategoryViewList();
			modelMap.addAttribute("categoriesView", categoriesView);
		} catch (CategoryException cException) {
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		} catch(Exception e){			
			CategoryException cException = new CategoryException(e, 
					CategoryException.LAYER_CONTROLLER, CategoryException.ACTION_SELECT);
			logger.info("Ha ocurrido un error Categoria Controller {}", e);
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}		
		return "categorias";
	}
	
	@RequestMapping(value = "agregar_categoria", method = RequestMethod.GET)
	public String addCategory(Model modelMap, HttpServletRequest request) throws CategoryException{

		CategoryView categoryView = new CategoryView();
		modelMap.addAttribute("categoryView", categoryView);
		
		return "agregar_categoria";
	}
	
	@RequestMapping(value = "agregar_categoria", method = RequestMethod.POST)
	public String addCategoryPost(@ModelAttribute("categoryView") CategoryView categoryView, Model modelMap, 
			HttpServletRequest request, HttpSession session) throws CategoryException{

		try {
			categoryService.addCategory(categoryView);
			session.setAttribute(SUCCESS_MESSAGE, "La Categoria " + categoryView.getCode() + " ha sido agregada satisfactoriamente.");
		} catch (CategoryException cException) {
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		} catch(Exception e){			
			CategoryException cException = new CategoryException(e, 
					CategoryException.LAYER_CONTROLLER, CategoryException.ACTION_SELECT);
			logger.info("Ha ocurrido un error Categoria Controller {}", e);
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
		
		return "redirect:/admin/categorias/categorias.html";
	}
	
	
	
	@RequestMapping(value = "{categoryId}/editar_categoria", method = RequestMethod.GET)
	public String editCategory(@PathVariable Integer categoryId, Model modelMap, 
			HttpServletRequest request) throws CategoryException{

		try {
			CategoryView categoryView = categoryService.getCategoryById(categoryId);
			modelMap.addAttribute("categoryView", categoryView);
		} catch (CategoryException cException) {
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		} catch(Exception e){			
			CategoryException cException = new CategoryException(e, 
					CategoryException.LAYER_CONTROLLER, CategoryException.ACTION_SELECT);
			logger.info("Ha ocurrido un error Categoria Controller {}", e);
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
		return "editar_categoria";
	}
	

	@RequestMapping(value = "{categoryId}/editar_categoria", method = RequestMethod.POST)
	public String editCategoryPost(@PathVariable Integer categoryId, @ModelAttribute("categoryView") CategoryView categoryView,
			Model modelMap, HttpServletRequest request, HttpSession httpSession) throws CategoryException{

		try {
			categoryService.editCategory(categoryView);
			httpSession.setAttribute(SUCCESS_MESSAGE, "La Categoria " + categoryView.getCode() + " ha sido editada satisfactoriamente.");
		} catch (CategoryException cException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		} catch(Exception e){			
			CategoryException cException = new CategoryException(e, 
					CategoryException.LAYER_CONTROLLER, CategoryException.ACTION_SELECT);
			logger.info("Ha ocurrido un error Categoria Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
		return "redirect:/admin/categorias/categorias.html";
	}
	
	
	@RequestMapping(value = "eliminar_categoria", method = RequestMethod.GET)
	public String deleteCategory(@RequestParam("catId") Integer catId, Model modelMap, 
			HttpServletRequest request, HttpSession session) throws CategoryException{

		try {			
			categoryService.deleteCategory(catId);
			session.setAttribute(SUCCESS_MESSAGE, "La Categoria se ha sido eliminado satisfactoriamente.");
		} catch (CategoryException cException) {
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		} catch(Exception e){			
			CategoryException cException = new CategoryException(e, 
					CategoryException.LAYER_CONTROLLER, CategoryException.ACTION_SELECT);
			logger.info("Ha ocurrido un error Categoria Controller {}", e);
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}		
		return "redirect:/admin/categorias/categorias.html";
	}
}
