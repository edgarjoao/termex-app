<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>TER-MEX - Terminales de México :: ${HEADER_MESSAGE}</title>
<link href="${pageContext.request.contextPath}/css/style_<lang:languageVar />.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/nav-menus.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stuHover.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flow.1.2.auto.js"></script>
</head>
<body>
<div class="wrap" id="two_columns">
  <div id="head">
   	<tiles:insertAttribute name="header" />
  </div>
  <div id="main_nav">
   <tiles:insertAttribute name="menu" />
  </div>
  <div class="content clearfix">
    <div class="main_content">
      <h1 class="page_title">${HEADER_MESSAGE}</h1>
      <br />
      <div class="row end">&nbsp;</div>
      <h2 class="page_subtitle">${CONTENT_MESSAGE}</h2>
      <br />
    </div>
  </div>
  <div class="footer">
	<tiles:insertAttribute name="footer" />
  </div>
</div>
</body>
</html>
