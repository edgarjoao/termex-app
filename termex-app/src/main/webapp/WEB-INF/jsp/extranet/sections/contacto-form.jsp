<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<h1 class="page_title">Cont�ctanos</h1>
    <div>&nbsp;</div>
  <br />
  <c:if test="${not empty SUCCESS_MESSAGE}">
		<div class="successMessaging">
			<div class="alert-box success"><span></span><c:out value="${SUCCESS_MESSAGE}" /></div>
		</div>
		<br />
	</c:if>
  <form action="${pageContext.request.contextPath}/${language}/contactanos.html" method="post" autocomplete="off">
	<fieldset>
		<p><label for="nombre">Nombre:</label></p> <input type="text" value="" id="nombreId" style="border: solid 1px #dcdcdc;padding: 4px;background: #fafbfb;width:360px;" name="nombre">
		<p><label for="correo">Correo:</label></p> <input type="text" value="" id="correoId" style="border: solid 1px #dcdcdc;padding: 4px;background: #fafbfb;width:360px;" name="correo">
		<p><label for="comentarios">Mensaje:</label></p><textarea rows="10" name="comentarios" style="border: solid 1px #dcdcdc;padding: 4px;background: #fafbfb;width:360px;"></textarea>
	 	</fieldset>
	<br />
	<input type="submit" class="silver_btn" value="Enviar" name="save_for_later">
	</form>
<h2 class="page_subtitle"></h2>