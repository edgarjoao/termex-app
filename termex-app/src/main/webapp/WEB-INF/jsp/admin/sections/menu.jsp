<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="navigation">
	<div id="cssmenu">
		<ul>
		   <li class="active"><a href="${pageContext.request.contextPath}/admin/inicio.html"><span>Inicio</span></a></li>
		   <li><a href="${pageContext.request.contextPath}/admin/categorias/categorias.html"><span>Categorias</span></a></li>
		   <li><a href="productos.html"><span>Productos</span></a></li>
		   <li><a href="#"><span>Comentarios</span></a></li>
		   <li class="last"><a href="#"><span>Banner</span></a></li>
		</ul>
	</div>
  </div>