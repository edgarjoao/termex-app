package com.termex.web.taglib;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.tags.form.AbstractHtmlElementTag;
import org.springframework.web.servlet.tags.form.TagWriter;
/**
 *
 * @author rioslore
 *
 */
public class LangTag extends AbstractHtmlElementTag {

	/**
	 *
	 */
	private static final long serialVersionUID = -5304914908465141932L;

	private final Logger logger = LoggerFactory.getLogger(LangTag.class);

	private static final String LANGUAGE_PARAMETER = "language";

	@Override
	protected int writeTagContent(TagWriter arg0) throws JspException {
		final HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();

		try {

			Map pathVariables = (Map) request
					.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);

			logger.debug("{}",pathVariables);

			String languagePathVariable = (String) pathVariables.get(LANGUAGE_PARAMETER);

			logger.debug("Language Parameter Value {}", languagePathVariable);

			pageContext.getOut().print(languagePathVariable);
		} catch (IOException e) {
			logger.error("Hubo un error al tratar de pintar la variable language");
		}

		return SKIP_PAGE;
	}

}
