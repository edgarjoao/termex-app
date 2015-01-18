<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<form:form id="categoryView" name="categoryView" modelAttribute="categoryView" method="post" autocomplete="off">

	<table align="center" width="40%" cellpadding="2" cellspacing="1" border="0" bgcolor="#CCCCC0">
		<tr>
			<td colspan="2" align="center" class="titulocolumna">
			   <b>Agregar Categoria</b>
			</td>			
		</tr>
		
		<tr>
			<td class="etiqueta">
				Código
			</td>
			<td class="etiqueta_campo">				
				<form:input path="code" cssClass="campo_texto" size="42"/>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center" class="tabla_footer_left">
			   <b>Descripción Lenguage de la Categoría</b>
			</td>			
		</tr>
		
		<tr>
			<td class="etiqueta">
				Español
			</td>
			<td class="etiqueta_campo">
				<form:textarea path="categoryDetails[0].description" rows="3" cssClass="campo_texto" />
			</td>
		</tr>
		
		<tr>
			<td class="etiqueta">
				Inglés
			</td>
			<td class="etiqueta_campo">
				<form:textarea path="categoryDetails[1].description" rows="3" cssClass="campo_texto" />
			</td>
		</tr>
		
		<tr>
			<td class="etiqueta">
				Estatus
			</td>
			<td class="etiqueta_campo">				
				<form:select path="status" cssClass="campo_texto" cssStyle="width:180px">
					<form:option value="-1" label="Seleccione una opción"/>
					<form:option value="A" label="Activo"/>
					<form:option value="I" label="Inactivo"/>
				</form:select>
				
			</td>
		</tr>
		
		<tr>
			<td colspan="2" class="tabla_footer_paginator">
				<input type="submit" value="Editar" class="boton">
	               <input type="button" name="cancel" value="Cancelar" class="boton" >
			</td>		
		</tr>		
		
	</table>
	
	<form:hidden path="categoryId"/>
	<input type="hidden" name="categoryDetails[0].languageId" value="1">
	<input type="hidden" name="categoryDetails[1].languageId" value="2">
	<input id="activeTab" type="hidden" value="categoriasId" />
</form:form>