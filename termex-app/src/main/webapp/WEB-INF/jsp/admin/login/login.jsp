<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<table align="center" cellpadding="2" cellspacing="1" border="0" bgcolor="#CCCCC0">
		<tr>
			<td colspan="2" align="center" class="titulocolumna">
			   <b>Login</b>
			</td>			
		</tr>
		
		<tr>
			<td class="etiqueta">
				Usuario
			</td>
			<td class="etiqueta_campo">
				<input id="username" type="text" name="username" class="campo_texto" value="" size="42"/>
			</td>
		</tr>
		
		<tr>
			<td class="etiqueta">
				Contraseña
			</td>
			<td class="etiqueta_campo">
				<input type="password" name="code" class="campo_texto" value="" size="42"/>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" class="tabla_footer_paginator">
				<input type="submit" value="Login" class="boton">
			</td>		
		</tr>		
		
	</table>