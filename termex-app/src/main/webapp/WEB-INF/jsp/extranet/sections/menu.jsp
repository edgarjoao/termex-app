<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>

<ul id="nav">
  <li class="top"><a href="${pageContext.request.contextPath}/<lang:languageVar />/home.html" class="top_link"><span><spring:message code="label.home" /> </span></a></li>
  <li class="top"><a href="${pageContext.request.contextPath}/<lang:languageVar />/mision.html" class="top_link"><span> <spring:message code="label.mission" /> </span></a></li>
  <li class="top"><a href="${pageContext.request.contextPath}/<lang:languageVar />/vision.html" class="top_link"><span><spring:message code="label.vision" /></span></a></li>
  <li class="top"><a href="${pageContext.request.contextPath}/<lang:languageVar />/objetivos.html" class="top_link"><span><spring:message code="label.objetives" /></span></a></li>
  <li class="top"><a href="${pageContext.request.contextPath}/<lang:languageVar />/contactanos.html" class="top_link"><span><spring:message code="label.contactus" /></span></a></li>
</ul>