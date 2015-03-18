<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:url var="securityAction" value="/j_spring_security_check" />

<c:if test="${not empty param.login_error}">
	<br /><br />
	<div class="errorMessaging">
		Your login attempt was not successful, try again.<br/>
		Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />.
	</div>
</c:if>
<c:if test="${not empty notAuthorizedMessage}">
	<br /><br />
	<div class="errorMessaging">
		<fmt:message key="login.not.authorized.message1" /><br />
		<fmt:message key="login.not.authorized.message2" />
	</div>
	<% session.removeAttribute("notAuthorizedMessage"); %>
</c:if>

<form action="${securityAction}" id="login-form" method="post" >
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
					<input id="username" type="text" name="j_username" class="campo_texto" value="" size="42"/>
				</td>
			</tr>

			<tr>
				<td class="etiqueta">
					Contraseña
				</td>
				<td class="etiqueta_campo">
					<input type="password" name="j_password" class="campo_texto" value="" size="42"/>
				</td>
			</tr>

			<tr>
				<td colspan="2" class="tabla_footer_paginator">
					<input type="submit" value="Login" class="boton">
				</td>
			</tr>

	</table>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>