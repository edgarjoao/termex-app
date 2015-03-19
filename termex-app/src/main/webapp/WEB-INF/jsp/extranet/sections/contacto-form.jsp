<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#nombreId").focus();

		$("#contactoForm").validate({
			rules: {
				nombre: "required",
				correo: "required",
				nombre: {
					required: true,
					minlength: 3
				},
				comentarios: {
					required: true,
					minlength: 5
				}
			},
			messages: {
				nombre: '<spring:message code="label.contact.name.msg" />',
				correo: '<spring:message code="label.contact.email.msg" />',
				comentarios: '<spring:message code="label.contact.message.msg" />'
			}
		});
	});
</script>

<h1 class="page_title"><spring:message code="label.contactus" /></h1>
    <div>&nbsp;</div>
  <br />
  <c:if test="${not empty SUCCESS_MESSAGE}">
		<div class="successMessaging">
			<div class="alert-box success"><span></span><c:out value="${SUCCESS_MESSAGE}" /></div>
		</div>
		<br />
	</c:if>
  <form action="${pageContext.request.contextPath}/<lang:languageVar />/contactanos.html" method="post" autocomplete="off" id="contactoForm">
	<fieldset>
		<p><label for="nombre"><spring:message code="label.contact.name" />:</label></p> <input type="text" value="" id="nombreId" style="border: solid 1px #dcdcdc;padding: 4px;background: #fafbfb;width:360px;" name="nombre">
		<p><label for="correo"><spring:message code="label.contact.email" />:</label></p> <input type="text" value="" id="correoId" style="border: solid 1px #dcdcdc;padding: 4px;background: #fafbfb;width:360px;" name="correo">
		<p><label for="comentarios"><spring:message code="label.contact.message" />:</label></p><textarea rows="10" name="comentarios" style="border: solid 1px #dcdcdc;padding: 4px;background: #fafbfb;width:360px;"></textarea>
	 	</fieldset>
	<br />
	<input type="submit" class="silver_btn" value="Enviar" name="save_for_later">
	</form>
<h2 class="page_subtitle"></h2>