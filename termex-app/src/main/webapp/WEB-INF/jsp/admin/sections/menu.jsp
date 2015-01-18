<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="navigation">
	<div id="cssmenu">
		<ul>
		   <li id="inicioId"><a href="${pageContext.request.contextPath}/admin/inicio.html"><span>Inicio</span></a></li>
		   <li id="categoriasId"><a href="${pageContext.request.contextPath}/admin/categorias/categorias.html"><span>Categorias</span></a></li>
		   <li id="terminalesId"><a href="${pageContext.request.contextPath}/admin/terminales/terminales.html"><span>Terminales</span></a></li>
		   <li id="comentariosId" ><a href="#"><span>Comentarios</span></a></li>
		   <li class="last"><a href="#"><span>Banner</span></a></li>
		</ul>
	</div>
  </div>