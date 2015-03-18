<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <div id="header">
	<img width="175" height="80" src="${pageContext.request.contextPath}/admin/images/termex-logo.png">
	<div id="user_div">
		Bienvenido(a): <b> Administrador </b> | <a href="${pageContext.request.contextPath}/admin/logout.html">Salir</a>
	</div>
  </div>