<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>

<h1 class="logo">
	<a href="${pageContext.request.contextPath}/<lang:languageVar />/home.html">
	<img src="${pageContext.request.contextPath}/images/termex-2.png" width="175" height="80" />
	</a>
</h1>
<div class="basket">
	<a href="${pageContext.request.contextPath}/es/home.html">
		<img src="${pageContext.request.contextPath}/images/mexico.png" alt="" /> <spring:message code="label.espanish" />
	</a>
	&nbsp;
	<a href="${pageContext.request.contextPath}/en/home.html">
		<img src="${pageContext.request.contextPath}/images/united-states.png" alt="" /> <spring:message code="label.english" />
	</a>
</div>

<div class="top_banner"><a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/images/top_banner-<lang:languageVar />.png" width="218" height="44" alt="" /></a></div>

<div id="search">
    <form id="searchform" name="searchform" action="${pageContext.request.contextPath}/<lang:languageVar />/buscar_productos.html" autocomplete="off" method="get">
	    <input name="query" id="searchId" type="text" tabindex="1" value="${queryTerm}" />
	    <input name="search" type="submit" value="" readonly="readonly" class="button" />
	</form>
</div>