<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Breadcrum -->
<h1 class="page_title">${CATEGORY_DESCRIPTION}</h1>

<div class="products_list">
	<c:forEach var="row" items="${terminals}" varStatus="loop">
	 		<c:if test="${not loop.first and loop.index % 3 == 0}">
                </div><div class="row">
            </c:if>

			<div class="asinItem <c:if test="${loop.index % 3 == 0}">last</c:if>">
				  <div class="prodImage">
				  	<a href="${pageContext.request.contextPath}/${lang}/${row.id.idProd}/detalle.html">
						<img src="${pageContext.request.contextPath}/${row.id.idProd}/imagen.html" alt="" />
				  	</a>
				  	<h3><a href="${pageContext.request.contextPath}/${lang}/${row.id.idProd}/detalle.html">${row.product.prodCode}</a></h3>
				  </div>
			</div>
	</c:forEach>
</div>
