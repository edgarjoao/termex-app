package com.termex.web.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.HandlerMapping;

import com.termex.daos.BannerDAO;
import com.termex.daos.ProductDAO;
import com.termex.db.model.ProductDetail;
import com.termex.exceptions.BannerException;
import com.termex.exceptions.CategoryException;
import com.termex.exceptions.ProductException;
import com.termex.services.CategoryService;
import com.termex.utils.LanguageUtils;
import com.termex.web.views.CategoryDetailView;

@Controller
public class HomeController {

	private final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private BannerDAO bannerDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = "{language}/home", method = RequestMethod.GET)
	public String goLogin(@PathVariable("language") String language, ModelMap modelMap, HttpServletRequest request) {

		logger.info("Lenguage {}", language);

		try {

			List<CategoryDetailView> categorryDetails = categoryService.getCategoryViewListByLanguage(language);
			int lang = LanguageUtils.getLanguageId(language);
			modelMap.put("nombreTerminal", lang ==1?"Terminales":"Terminals");
			modelMap.put("categories", categorryDetails);
			modelMap.put("lang", language);
			modelMap.put("banners", bannerDAO.getBannerDetailList(lang));
			List<ProductDetail> productDetails = productDAO.getProductDetailsRandom(lang);
			modelMap.put("terminals_random", productDetails);

			List<ProductDetail> productDetailsAudio= productDAO.getProductDetailsAudioRandom(lang);
			modelMap.put("terminals_audio", productDetailsAudio);

		} catch (CategoryException e) {
			e.printStackTrace();
		} catch (BannerException e) {
			e.printStackTrace();
		} catch (ProductException e) {
			e.printStackTrace();
		}

		return "home";
	}
}
