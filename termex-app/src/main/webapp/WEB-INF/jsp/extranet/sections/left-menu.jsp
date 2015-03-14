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
   <h2>Newsletter</h2>
   <p>Sign up for our weekly newsletter and stay up-to-date with the latest offers, and newest products.</p>
   <form action="02-Orange-01-Home-Page.html">
     <input name="email" type="text" tabindex="1" onblur="if (this.value==''){this.value='E-mail Address'};" onfocus="if(this.value=='E-mail Address'){this.value=''};" value="E-mail Address" />
     <div align="right">
       <input name="subscribe" type="submit" value="Subscribe" class="button" />
     </div>
   </form>
 </div>