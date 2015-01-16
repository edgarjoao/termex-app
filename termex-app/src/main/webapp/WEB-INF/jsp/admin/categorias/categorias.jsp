<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<table align="center" width="70%" cellpadding="2" cellspacing="1" border="0" bgcolor="#CCCCC0">			
			
	<tr>
		<td colspan="9" class="titulocolumna" align="center"> <b> Categorías </b> </td>
	</tr>			
	
	<tr>
		<td class="titulocolumna" align="center">
			<a href="${pageContext.request.contextPath}/admin/categorias/agregar_categoria.html">
				<img src="${pageContext.request.contextPath}/admin/images/nuevo.gif" border="0"/>
			</a>
		</td>
		<td class="titulocolumna" align="center">
			<a href="javascript:void(0);" class="ligas">
				Código
			</a>
		</td>
		<td class="titulocolumna" align="center">
			<a href="javascript:void(0);" class="ligas">
				Estatus
			</a>
		</td>
		<td class="titulocolumna" align="center">&nbsp;</td>
	</tr>
		
	<c:forEach items="${categoriesView}" var="row" varStatus="loop">
		<tr class="${loop.index % 2 == 0 ? 'columnadatoPar' : 'columnadatoNon'}">
			<td valign="top" align="center">
				<a href="${pageContext.request.contextPath}/admin/categorias/${row.categoryId}/editar_categoria.html">
					<img alt="Editar LOCAL" src="${pageContext.request.contextPath}/admin/images/modificar.gif" border="0"/>
				</a>
			</td>
			<td valign="top" align="center">
				${row.code}
			</td>
			<td valign="top" align="center">
				<c:choose>
					<c:when test="${row.status == 'A' }">
						Activo
					</c:when>
					<c:otherwise>
						Inactivo
					</c:otherwise>
				</c:choose>
			</td>							
			<td>
				<a href="#">
					<img alt="Borrar LOCAL" src="${pageContext.request.contextPath}/admin/images/eliminar.jpg" border="0" onclick="if( confirmDelete('${row.code}') )location.href='${pageContext.request.contextPath}/admin/categorias/eliminar_categoria.html?catId=${row.categoryId}'"; />
				</a>	
			</td>
		</tr>		
	</c:forEach>	
			
</table>