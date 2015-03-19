<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript">
$(document).ready(function(){
	$("#myController").jFlow({
		slides: "#slides",
		controller: ".jFlowControl", // must be class, use . sign
		slideWrapper : "#jFlowSlide", // must be id, use # sign
		selectedWrapper: "jFlowSelected",  // just pure text, no sign
		auto: true,		//auto change slide, default true
		width: "554px",
		height: "288px",
		duration: 600,
		prev: ".jFlowPrev", // must be class, use . sign
		next: ".jFlowNext" // must be class, use . sign
	});
});
</script>
<div class="jflow-content-slider">
	<div id="slides">
		<c:forEach items="${banners}" var="row">
		  <div class="slide-wrapper"><img src="${pageContext.request.contextPath}/banner/${row.id.idBan}/imagen.html" alt="" width="554" height="288"/></div>
	  	</c:forEach>
	</div>
	<div id="myController">
	  <div class="quick_nav">
	  	<span class="jFlowPrev"><img src="${pageContext.request.contextPath}/images/jFlowPrev-arrow.gif" width="20" height="18" alt="Prev" /></span>
	  	<c:forEach items="${banners}" var="row" varStatus="loop">
			<span class="jFlowControl">${loop.index + 1}</span>
	  	</c:forEach>
	  	<span class="jFlowNext"><img src="${pageContext.request.contextPath}/images/jFlowNext_arrow.gif" width="20" height="18" alt="Next" /></span>
	  </div>
	  <div class="collection_name">
	  	<!--  	<a href="02-Orange-03-Products-List.html">White Sofa Collection</a>-->
	  	</div>
	</div>
	<div class="clear"></div>
</div>

 <div class="products_box featured">
   <h2 class="box_title"><spring:message code="label.product.terminals" /></h2>
   <div class="products_content">
     <div class="top_gradient clearfix">
		<c:forEach var="row" items="${terminals_random}" varStatus="loop">
			<div class="asinItem <c:if test="${loop.index % 3 == 0}">last</c:if>">
				  <div class="prodImage">
					<a data-lightbox="roadtrip" data-title="${row.proddDescription}" href="${pageContext.request.contextPath}/${row.id.idProd}/imagen.html">
						<img src="${pageContext.request.contextPath}/${row.id.idProd}/imagen.html" alt="" />
					</a>
					<h3><a href="${pageContext.request.contextPath}/${lang}/${row.id.idProd}/detalle.html">${row.product.prodCode}</a></h3>
				  </div>
			</div>
			<c:if test="${loop.last}"><div class="row end">&nbsp;</div></c:if>
		</c:forEach>
	</div>
   </div>
 </div>