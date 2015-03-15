package com.termex.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.termex.daos.BannerDAO;
import com.termex.exceptions.BannerException;
import com.termex.exceptions.ProductException;
/**
 *
 * @author rioslore
 *
 */
@Controller
public class BannerController {

	private final Logger logger = LoggerFactory.getLogger(BannerController.class);

	private final static String CUSTOM_EXCEPTION = "custom_exception";

	@Autowired
	private BannerDAO bannerDAO;

	@RequestMapping(value = "banner/{bannerId}/imagen", method = RequestMethod.GET)
	public void showProductById(@PathVariable("bannerId") Integer bannerId, HttpServletRequest request,
			HttpServletResponse response, HttpSession httpSession) throws BannerException{

		try{
			 response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			 response.getOutputStream().write(bannerDAO.getBannerImage(bannerId));
			 response.getOutputStream().close();
		} catch (BannerException bException) {
			httpSession.setAttribute(CUSTOM_EXCEPTION, bException);
			throw bException;
		} catch(Exception e){
			BannerException bException = new BannerException(e,
					ProductException.LAYER_CONTROLLER, BannerException.ACTION_SELECT);
			logger.error("Ha ocurrido un error Banner Controller {}", e);
			httpSession.setAttribute(CUSTOM_EXCEPTION, bException);
			throw bException;
		}
	}

}
