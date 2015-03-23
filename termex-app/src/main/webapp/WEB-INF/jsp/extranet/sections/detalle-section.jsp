<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>
<style>
.transition {
    -webkit-transform: scale(1.6);
    -moz-transform: scale(1.6);
    -o-transform: scale(1.6);
    transform: scale(1.6);
}
#content {
	-webkit-transition: all .4s ease-in-out;
	-moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-ms-transition: all .4s ease-in-out;
}

#content {
    width:75px;
    margin:25px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
    $('#content').hover(function() {
        $("#content").addClass('transition');

    }, function() {
        $("#content").removeClass('transition');
    });

    $("#content").click(function(){
		location.href = "${pageContext.request.contextPath}/catalogo_online.html";
    });
});
</script>

<h1 class="page_title">${productDetail.product.prodCode}</h1>
<div class="product_image">
	<div id="big_image_container">
		<a data-lightbox="image-1" href="${pageContext.request.contextPath}/${productDetail.id.idProd}/imagen.html" data-title="${productDetail.proddDescription}">
			<img src="${pageContext.request.contextPath}/${productDetail.id.idProd}/imagen.html" alt="" />
		</a>
	</div>
</div>

<div class="product_information">
  <div class="row end">&nbsp;</div>
  <p class="description"><spring:message code="label.product.detail.description" /> : <br /> ${productDetail.proddDescription}</p>
  <div class="product_options"> <a href="${pageContext.request.contextPath}/<lang:languageVar />/contactanos.html" class="add-to-basket"><spring:message code="label.contactus" /> </a>
    <h2 class="price"><spring:message code="label.product.detail.ask" /></h2>
  </div>

  <ul class="tabs">
    <li><a href="#tab1"><spring:message code="label.catalog.online" /></a></li>

  </ul>
  <div class="tab_container">
    <div id="tab1" class="tab_content">
    	  <img id="content" src="${pageContext.request.contextPath}/images/catalogo.jpg" />
      <p> <spring:message code="label.query.our" /> <strong><a href="${pageContext.request.contextPath}/catalogo_online.html"><spring:message code="label.catalog.online" /></a></strong>.</p>
    </div>
  </div>

</div>
<div class="row end">&nbsp;</div>

