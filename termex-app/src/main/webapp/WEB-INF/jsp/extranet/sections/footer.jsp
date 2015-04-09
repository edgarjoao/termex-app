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

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-61633696-1', 'auto');
  ga('send', 'pageview');
</script>