package com.termex.web.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.termex.daos.CategoryDAO;
import com.termex.daos.ProductDAO;
import com.termex.db.model.CategoryDetail;
import com.termex.db.model.ProductDetail;
import com.termex.exceptions.CategoryException;
import com.termex.exceptions.ProductException;
import com.termex.services.CategoryService;
import com.termex.services.ProductService;
import com.termex.utils.LanguageUtils;
import com.termex.web.views.CategoryDetailView;

@Controller
public class ProductsController {

	private final Logger logger = LoggerFactory.getLogger(ProductsController.class);

	private final static String CUSTOM_EXCEPTION = "custom_exception";

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductService productService;

	@Autowired
	MessageSource messageSource;

	@RequestMapping(value = "{language}/{categoryId}/terminales", method = RequestMethod.GET)
	public String goProductos(@PathVariable("language") String language, @PathVariable("categoryId") String categoryId,
			ModelMap modelMap, HttpServletRequest request, HttpSession httpSession) throws ProductException, CategoryException {

		logger.info("Lenguage {}", language);

		try {
			List<CategoryDetailView> categorryDetails = categoryService.getCategoryViewListByLanguage(language);
			int lang = LanguageUtils.getLanguageId(language);
			modelMap.put("categories", categorryDetails);
			modelMap.put("lang", language);

			CategoryDetail categoryDetail = categoryDAO.getCategoryByIdAndLanguage(Integer.parseInt(categoryId), lang);
			modelMap.put("CATEGORY_DESCRIPTION", categoryDetail.getCatdDescription());

			List<ProductDetail> terminals = productDAO.getProductDetails(lang, Integer.parseInt(categoryId));
			modelMap.put("terminals", terminals);

		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
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

	@RequestMapping(value = "{language}/buscar_productos", method = RequestMethod.GET)
	public String searchProductos(@PathVariable("language") String language,@RequestParam("query") String queryTerm,
			ModelMap modelMap, HttpServletRequest request, HttpSession httpSession, Locale locale) throws ProductException, CategoryException {

		try {
			List<CategoryDetailView> categorryDetails = categoryService.getCategoryViewListByLanguage(language);
			int lang = LanguageUtils.getLanguageId(language);
			modelMap.put("nombreTerminal", lang ==1?"Terminales":"Terminals");
			modelMap.put("categories", categorryDetails);
			modelMap.put("lang", language);
			modelMap.put("queryTerm", queryTerm);

			String searchMessage = messageSource.getMessage("label.search.results", new Object[]{queryTerm}, locale);
			modelMap.put("SEARCH_DESCRIPTION", searchMessage);

			List<ProductDetail> productDetail = productDAO.searchProductDetail(queryTerm, lang);
			modelMap.put("terminals", productDetail);

		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
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

		return "buscar_productos";
	}

	@RequestMapping(value = "{language}/autocomplete", method = RequestMethod.GET)
	public @ResponseBody List<String> autocomplete(@PathVariable("language") String language,
			@RequestParam("queryTerm") String queryTerm, HttpServletResponse httpResponse) {
		List<String> response = new ArrayList<String>();
		response.add("erminales de Cobre");
		response.add("Terminales de Aluminio");
		response.add("Pinzas");
		httpResponse.setStatus(HttpServletResponse.SC_OK);
		return response;
	}

	@RequestMapping(value = "{language}/{productId}/detalle", method = RequestMethod.GET)
	public String goDetalleProductos(@PathVariable("language") String language, @PathVariable("productId") String productId,
			ModelMap modelMap, HttpServletRequest request, HttpSession httpSession) throws ProductException, CategoryException {

		logger.info("Product {} -  Lenguage {}", productId, language);

		try {
			List<CategoryDetailView> categorryDetails = categoryService.getCategoryViewListByLanguage(language);
			int lang = LanguageUtils.getLanguageId(language);
			modelMap.put("nombreTerminal", lang ==1?"Terminales":"Terminals");
			modelMap.put("categories", categorryDetails);
			modelMap.put("lang", language);

			ProductDetail productDetail = productDAO.getProductDetail(Integer.parseInt(productId), lang);
			modelMap.put("productDetail", productDetail);

		} catch (ProductException pException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, pException);
			throw pException;
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
		return "detalle";
	}


	@RequestMapping(value = "{productId}/imagen", method = RequestMethod.GET)
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
