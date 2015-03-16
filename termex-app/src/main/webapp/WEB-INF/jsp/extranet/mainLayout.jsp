<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>TERMEX - Terminales de México</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/nav-menus.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lightbox.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lightbox.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.autocomplete.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stuHover.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flow.1.2.auto.js"></script>

</head>
<body>

<div class="wrap" id="three_columns">
  <div id="head">
	<tiles:insertAttribute name="header" />
  </div>

  <div id="main_nav">
	<tiles:insertAttribute name="menu" />
  </div>

  <div class="content clearfix">
    <div class="left_column">
		<tiles:insertAttribute name="left-menu" />
    </div>
    <div class="main_content">
        <tiles:insertAttribute name="main-content" />
    </div><!-- end main content -->

    <div class="right_column">

      <div class="product_guide"> <!-- Go to Book Catalog -->
        <h2 class="box_title"><span>Product Guidelines</span></h2>
        <p>Please consider going over our <a href="${pageContext.request.contextPath}/catalogo_online.html">product guidelines</a> before you purchase any item from our store.</p>
      </div>

      <div class="store_locator"><!-- Go To Map -->
        <h2 class="box_title"><span>Store Locator</span></h2>
        <p>Use our Store Locator to find a store near you. <a href="02-Orange-03-Products-List.html">click here</a></p>
      </div>

      <div class="products_box">
        <h2 class="box_title">Best Sellers</h2>
        <div class="products_content clearfix">
          <div class="asinItem">
            <div class="prodImage"><a href="02-Orange-04-Products-Details.html"><img src="images/dummy_pixel.gif" alt="" /></a></div>
            <h3><a href="02-Orange-04-Products-Details.html">Cras convallis Lamp <strong>($30)</strong></a></h3>
          </div>
          <div class="asinItem">
            <div class="prodImage"><a href="02-Orange-04-Products-Details.html"><img src="images/dummy_pixel.gif" alt="" /></a></div>
            <h3><a href="02-Orange-04-Products-Details.html">Nam viverra metus eget est Chair <strong>($52)</strong></a></h3>
          </div>
          <div class="asinItem">
            <div class="prodImage"><a href="02-Orange-04-Products-Details.html"><img src="images/dummy_pixel.gif" alt="" /></a></div>
            <h3><a href="02-Orange-04-Products-Details.html">Office Desk <strong>($102)</strong></a></h3>
          </div>
          <div class="row end">&nbsp;</div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer">
	<tiles:insertAttribute name="footer" />
  </div>
</div>
</body>
</html>
