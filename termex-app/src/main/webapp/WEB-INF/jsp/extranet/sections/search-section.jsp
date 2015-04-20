<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Breadcrum -->
<h1 class="page_title">${SEARCH_DESCRIPTION}</h1>

<div class="products_list">
	<c:forEach var="row" items="${terminals}" varStatus="loop">
		<div class="asinItem <c:if test="${loop.index % 3 == 0}">last</c:if>">
			  <div class="prodImage">
			  	<a data-lightbox="roadtrip" data-title="${row.proddDescription}" href="${pageContext.request.contextPath}/${row.id.idProd}/imagen.html">
					<img src="${pageContext.request.contextPath}/${row.id.idProd}/imagen.html" alt="" />
			  	</a>
			  	<h3><a href="${pageContext.request.contextPath}/${lang}/${row.id.idProd}/detalle.html">${row.proddDescription}</a></h3>
			  </div>
		</div>
	</c:forEach>
</div>
