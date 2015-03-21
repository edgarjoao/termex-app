<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

 <div class="product_menu">
   <h2><span>Product Categories</span></h2>
   <ul id="prod_nav" class="clearfix">

	     <li class="top"><a href="javascript:void(0);" class="top_link"><span class="down">${nombreTerminal}</span></a>
	       <ul class="sub">
	         <li class="clearfix">
	            <c:forEach var="row" items="${categories}">
	            	<ul>
		           <c:if test="${row.categoryId == 4}">
		           		<li><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html">${row.description}</a></li>
		           </c:if>
		           <c:if test="${row.categoryId == 5}">
		           		<li><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html">${row.description}</a></li>
		           </c:if>
		           </ul>
		           <ul>
		           <c:if test="${row.categoryId == 6}">
		           		<li><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html">${row.description}</a></li>
		           </c:if>
		           <c:if test="${row.categoryId == 7}">
		           		<li><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html">${row.description}</a></li>
		           </c:if>
		           </ul>
		           </c:forEach>
	         </li>
	       </ul>
	     </li>
	     <c:forEach var="row" items="${categories}">
	      <c:if test="${row.categoryId == 1}">
          	<li class="top"><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html" class="top_link"><span>${row.description}</span></a></li>
          </c:if>
          <c:if test="${row.categoryId == 2}">
          	<li class="top"><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html" class="top_link"><span>${row.description}</span></a></li>
          </c:if>
          <c:if test="${row.categoryId == 3}">
          	<li class="top"><a href="${pageContext.request.contextPath}/${lang}/${row.categoryId}/terminales.html" class="top_link"><span>${row.description}</span></a></li>
          </c:if>
		</c:forEach>
   </ul>
 </div>

 <div class="box newsletter_box">
   <h2>TER-MEX</h2>
   <p><spring:message code="banner.left.message" /> </p>
   <img alt="" src="${pageContext.request.contextPath}/images/battery1.jpg" width="130" border="0">
 </div>
 <div class="payment_box">
        <h2><spring:message code="payment.options" /> </h2>
        <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/images/payment_options.png" width="172" height="71" alt="" /></a>
  </div>
