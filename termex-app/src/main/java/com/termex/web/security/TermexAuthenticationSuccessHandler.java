package com.termex.web.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
/**
 *
 * @author rioslore
 *
 */
public class TermexAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	private final Logger logger = LoggerFactory.getLogger(TermexAuthenticationSuccessHandler.class);

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {

		if (logger.isDebugEnabled()) {
			logger.debug("onAuthenticationSuccess -entering");
		}

		response.sendRedirect(request.getContextPath() + "/admin/inicio.html");

		if (logger.isDebugEnabled()) {
			logger.debug("onAuthenticationSuccess -leaving");
		}

	}

}
