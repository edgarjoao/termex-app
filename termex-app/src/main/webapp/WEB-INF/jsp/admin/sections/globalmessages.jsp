<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:if test="${not empty CUSTOM_EXCEPTION}">
	<div class="errorMessaging">
		<h4>Error processing request</h4>
		Ha ocurrido un error <c:out value="${CUSTOM_EXCEPTION}" />
	</div>	
	<br />
</c:if>

<c:if test="${not empty SUCCESS_MESSAGE}">
	<div class="successMessaging">		
		<div class="alert-box success"><span></span><c:out value="${SUCCESS_MESSAGE}" /></div>
		<% session.removeAttribute("SUCCESS_MESSAGE");%>
	</div>	
	<br />
</c:if>

<br />
<br />