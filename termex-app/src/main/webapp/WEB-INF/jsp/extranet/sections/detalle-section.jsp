<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
  <div class="product_options"> <a href="javascript:void(0);" class="add-to-basket"><img src="${pageContext.request.contextPath}/images/add-to-basket_btn.png" width="102" height="23" alt="Add to Basket" /></a>
    <h2 class="price"><spring:message code="label.product.detail.ask" /></h2>
  </div>

  <ul class="tabs">
    <li><a href="#tab1">Product Guideline</a></li>

  </ul>
  <div class="tab_container">
    <div id="tab1" class="tab_content help_icon"><img src="${pageContext.request.contextPath}/images/product_guidelines-title.png" width="118" height="12" alt="" />
      <p> <spring:message code="label.query.our" /> <strong><a href="${pageContext.request.contextPath}/catalogo_online.html"><spring:message code="label.catalog.online" /></a></strong>.</p>
    </div>
  </div>

</div>
<div class="row end">&nbsp;</div>

