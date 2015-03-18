package com.termex.web.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

/**
 *
 * @author rioslore
 *
 */
public class TermexAccessDeniedHandler implements AccessDeniedHandler {

	private final Logger logger = LoggerFactory.getLogger(TermexAccessDeniedHandler.class);

	@Override
	public void handle(HttpServletRequest request,
			HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException,
			ServletException {

		logger.info("No tiene los suficientes permisos para accesar a este recurso ", accessDeniedException);

		response.sendRedirect("/admin/login.html");
	}

}
