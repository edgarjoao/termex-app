package com.termex.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.multipart.MultipartFile;

import com.termex.exceptions.CategoryException;
import com.termex.exceptions.ProductException;
import com.termex.services.CategoryService;
import com.termex.services.ProductService;
import com.termex.web.views.ProductView;

@Controller
@RequestMapping(value="/admin/terminales/")
public class ProductAdminController {

	private final Logger logger = LoggerFactory.getLogger(ProductAdminController.class);
	
	private final static String CUSTOM_EXCEPTION = "custom_exception";
	private final static String SUCCESS_MESSAGE = "SUCCESS_MESSAGE";
	
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "terminales", method = RequestMethod.GET)
	public String terminalesHome(Model modelMap, HttpServletRequest request, HttpSession httpSession) throws ProductException, CategoryException {
		try {			
			modelMap.addAttribute("categoriesView", categoryService.getCategoryViewList());			
			modelMap.addAttribute("productViews", productService.getProductViews());			
		} catch (CategoryException cException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		} catch(Exception e){			
			ProductException cException = new ProductException(e, 
					ProductException.LAYER_CONTROLLER, ProductException.ACTION_SELECT);
			logger.error("Ha ocurrido un error Producto Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}		
		return "terminales";
	}
	
	
	@RequestMapping(value = "agregar_terminal", method = RequestMethod.GET)
	public String addProductGet(Model modelMap, HttpServletRequest request) throws CategoryException{

		try{
			ProductView productView = new ProductView();
			modelMap.addAttribute("productView", productView);		
			modelMap.addAttribute("categories", categoryService.getCategoryViewList());
		} catch (CategoryException cException) {
			HttpSession httpSession = request.getSession(true);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
		
		return "agregar_terminal";
	}
	
	@RequestMapping(value = "agregar_terminal", method = RequestMethod.POST)
	public String addProductPost(@ModelAttribute("productView") ProductView productView, @RequestParam("image") MultipartFile image, 
			Model modelMap, HttpServletRequest request, HttpSession httpSession) throws ProductException{

		try {			
			productView.setProductImage(image.getBytes());
			productService.addProduct(productView);
			httpSession.setAttribute(SUCCESS_MESSAGE, "La Terminal " + productView.getProductCode() + " ha sido agregada satisfactoriamente.");
		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
		} catch(Exception e){			
			ProductException cException = new ProductException(e, 
					ProductException.LAYER_CONTROLLER, ProductException.ACTION_SELECT);
			logger.error("Ha ocurrido un error Producto Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
		
		return "redirect:/admin/terminales/terminales.html";
	}
	
	@RequestMapping(value = "{productId}/editar_terminal", method = RequestMethod.GET)
	public String editProductGet(@PathVariable("productId") Integer productId, Model modelMap, 
			HttpServletRequest request, HttpSession httpSession) throws ProductException{

		try{
			modelMap.addAttribute("productView", productService.getProductViewById(productId));
		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
		} catch(Exception e){			
			ProductException cException = new ProductException(e, 
					ProductException.LAYER_CONTROLLER, ProductException.ACTION_SELECT);
			logger.error("Ha ocurrido un error Producto Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
		
		return "editar_terminal";
	}
	
	
	@RequestMapping(value = "eliminar_terminal", method = RequestMethod.GET)
	public String deleteCategory(@RequestParam("productId") Integer productId, 
			HttpServletRequest request, HttpSession httpSession) throws ProductException{

		try {			
			productService.deleteProductById(productId);
			httpSession.setAttribute(SUCCESS_MESSAGE, "La terminal se ha sido eliminado satisfactoriamente.");
		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
		} catch(Exception e){			
			ProductException cException = new ProductException(e, 
					ProductException.LAYER_CONTROLLER, ProductException.ACTION_SELECT);
			logger.error("Ha ocurrido un error Producto Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}		
		return "redirect:/admin/terminales/terminales.html";
	}
	
	@RequestMapping(value = "{productId}/imagen_terminal", method = RequestMethod.GET)
	public void showProductById(@PathVariable("productId") Integer productId, HttpServletRequest request, 
			HttpServletResponse response, HttpSession httpSession) throws ProductException{
		
		try{
			 response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			 response.getOutputStream().write(productService.getProductImageById(productId));
			 response.getOutputStream().close();		 
		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
		} catch(Exception e){			
			ProductException cException = new ProductException(e, 
					ProductException.LAYER_CONTROLLER, ProductException.ACTION_SELECT);
			logger.error("Ha ocurrido un error Producto Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, cException);
			throw cException;
		}
	}
	

}
