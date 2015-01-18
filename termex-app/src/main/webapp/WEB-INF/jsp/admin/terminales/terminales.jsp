<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<table align="center" width="70%" cellpadding="2" cellspacing="1" border="0" bgcolor="#CCCCC0">			
			
	<tr>
		<td colspan="9" class="titulocolumna" align="center"> <b> Terminales </b> </td>
	</tr>			
	
	<tr>
		<td class="titulocolumna" align="center">
			<a href="${pageContext.request.contextPath}/admin/terminales/agregar_terminal.html">
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
			<td class="titulocolumna" align="center">
			<a href="javascript:void(0);" class="ligas">
				Imagen
			</a>
		</td>
		<td class="titulocolumna" align="center">&nbsp;</td>
	</tr>
	
	<c:forEach items="${productViews}" var="row" varStatus="loop">
		<tr class="${loop.index % 2 == 0 ? 'columnadatoPar' : 'columnadatoNon'}">
			<td valign="top" align="center">
				<a href="${pageContext.request.contextPath}/admin/terminales/${row.categoryId}/editar_terminal.html">
					<img alt="Editar LOCAL" src="${pageContext.request.contextPath}/admin/images/modificar.gif" border="0"/>
				</a>
			</td>
			<td valign="top" align="center">
				${row.productCode}
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
			<td valign="top" align="center">
				<img alt="" src="${pageContext.request.contextPath}/admin/terminales/${row.productId}/imagen_terminal.html" width="104px" height="104px" border="0">
			</td>							
			<td>
				<a href="#">
					<img alt="Borrar Terminal" src="${pageContext.request.contextPath}/admin/images/eliminar.jpg" border="0" onclick="if( confirmDelete('${row.productCode}') )location.href='${pageContext.request.contextPath}/admin/terminales/eliminar_terminal.html?productId=${row.productId}'"; />
				</a>	
			</td>
		</tr>		
	</c:forEach>
			
</table>

<input id="activeTab" type="hidden" value="terminalesId" />