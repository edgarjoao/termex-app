<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="lang" uri="/WEB-INF/tld/langTag.tld" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="keywords" content='<spring:message code="meta.keywords.value" />' lang="<lang:languageVar />" />
<meta name="description" content='<spring:message code="meta.description.value" />'  lang="<lang:languageVar />" />
<meta name="Author" content='<spring:message code="meta.author.value" />'  lang="<lang:languageVar />" />
<title>TER-MEX - Terminales de México :: ${HEADER_MESSAGE}</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/nav-menus.css" rel="stylesheet" type="text/css" />
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stuHover.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flow.1.2.auto.js"></script>

<script>
  $(document).ready(function() {

	var latitude ="20.6305865";
	var longitude = "-103.332139";
	showMap(latitude, longitude);

	var map;

	function showMap(latitude,longitude) {

		var googleLatandLong = new google.maps.LatLng(latitude,longitude);

		var mapOptions = {
			zoom: 14,
			center: googleLatandLong,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};

		var contentString = '<div id="content">'+
		 					+''
		 					+''
		 					+''
		 					'</div>';


		var mapDiv = document.getElementById("map");
		map = new google.maps.Map(mapDiv, mapOptions);

		var title = "TER-MEX";
		addMarker(map, googleLatandLong, title, "");

	}

	function addMarker(map, latlong, title, content) {

		var markerOptions = {
			position: latlong,
			map: map,
			title: title,
			clickable: true
		};
		var marker = new google.maps.Marker(markerOptions);
	}

  });
  </script>
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
      <h1 class="page_title"><spring:message code="label.map" /> </h1>
      <div class="row end">&nbsp;</div>
      <h2 class="page_subtitle">
      	Tel. 36393030
		email: facturacion@ter-mex.com.mx
		<br />
		<br />
      	<div style="width:600px;height:400px" id="map"></div>
      </h2>
    </div>
  </div>
  <div class="footer">
	<tiles:insertAttribute name="footer" />
  </div>
</div>
</body>
</html>
