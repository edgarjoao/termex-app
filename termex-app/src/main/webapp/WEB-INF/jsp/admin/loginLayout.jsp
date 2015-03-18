<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Terminales de México - Login</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-1.8.3.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/principal.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/menu.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/box.css" />

<script type="text/javascript">
(function ($) {
	$(document).ready(function(){
		$( "#username" ).focus();
	});
})(jQuery);
</script>
</head>
<body>
<!-- Begin Wrapper -->
<div id="wrapper">
  <!-- End Header -->
  <!-- Begin Naviagtion -->
  <div id="header">
  	<div id="logo_div" style="float: left; padding-left: 5%;">
		<img width="175" height="80" src="${pageContext.request.contextPath}/admin/images/termex-logo.png">
	</div>

	<div id="welcome_div" style="float: inherit; padding-top: 2%; padding-left: 35%">
		<h2>Administración del Sistema</h2>
	</div>
  </div>
  <!-- End Naviagtion -->
  <!-- Begin Content -->
  <div id="content">
		<tiles:insertAttribute name="login-box" />
  </div>
  <!-- End Content -->
  <!-- Begin Footer -->
  <tiles:insertAttribute name="footer" />
  <!-- End Footer -->
 </div>
<!-- End Wrapper -->
</body>
</html>