<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>

<ul class="clearfix">
	<li><a href="${pageContext.request.contextPath}/<lang:languageVar />/home.html"><spring:message code="label.home" /></a></li>
	<li>| <a href="${pageContext.request.contextPath}/<lang:languageVar />/mision.html"><spring:message code="label.mission" /></a></li>
	<li>| <a href="${pageContext.request.contextPath}/<lang:languageVar />/vision.html"><span><spring:message code="label.vision" /></a></li>
	<li>| <a href="${pageContext.request.contextPath}/<lang:languageVar />/objetivos.html"><span><spring:message code="label.objetives" /></a></li>
	<li> | <a href="${pageContext.request.contextPath}/<lang:languageVar />/contactanos.html"><spring:message code="label.contactus" /></a></li>
</ul>
<div>&copy; Copyright 2015 TER-MEX </div>