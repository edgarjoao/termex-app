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
		height: "228px",
		duration: 600,
		prev: ".jFlowPrev", // must be class, use . sign
		next: ".jFlowNext" // must be class, use . sign
	});
});
</script>
<div class="jflow-content-slider">
	<div id="slides">
	  <div class="slide-wrapper"><img src="images/banner-01.jpg" alt="" width="554" height="288"/></div>
	  <div class="slide-wrapper"><img src="images/banner-02.jpg" alt="" width="554" height="288"/></div>
	  <div class="slide-wrapper"><img src="images/banner-03.jpg" alt="" width="554" height="288"/></div>
	  <div class="slide-wrapper"><img src="images/banner-04.jpg" alt="" width="554" height="288"/></div>
	</div>
	<div id="myController">
	  <div class="quick_nav"><span class="jFlowPrev"><img src="${pageContext.request.contextPath}/images/jFlowPrev-arrow.gif" width="20" height="18" alt="Prev" /></span> <span class="jFlowControl">1</span> <span class="jFlowControl">2</span> <span class="jFlowControl">3</span> <span class="jFlowControl">4</span> <span class="jFlowNext"><img src="${pageContext.request.contextPath}/images/jFlowNext_arrow.gif" width="20" height="18" alt="Next" /></span></div>
	  <div class="collection_name"><a href="02-Orange-03-Products-List.html">White Sofa Collection</a></div>
	</div>
	<div class="clear"></div>
</div>

 <div class="products_box featured">
   <h2 class="box_title"><a href="02-Orange-03-Products-List.html"><span>Browse Collections</span></a> Featured Collections</h2>
   <div class="products_content">
     <div class="top_gradient clearfix">
       <div class="asinItem">
         <div class="prodImage"><a href="02-Orange-04-Products-Details.html"><img src="images/terminales/terminal4.png" alt="" /></a></div>
         <h3><a href="02-Orange-04-Products-Details.html">Warwick Furniture Collection in White - Linon Furniture </a><strong></strong></h3>
         <div class="rating starts5">&nbsp;</div>
       </div>
       <div class="asinItem">
         <div class="prodImage"><a href="02-Orange-04-Products-Details.html"><img src="images/terminales/terminal5.png" alt="" /></a></div>
         <h3><a href="02-Orange-04-Products-Details.html">Eclipse Furniture Collection in Espresso - Nexera Furniture</a></h3>
         <div class="rating starts3">&nbsp;</div>
       </div>
       <div class="asinItem last">
         <div class="prodImage"><a href="02-Orange-04-Products-Details.html"><img src="images/terminales/terminal6.png" alt="" /></a></div>
         <h3><a href="02-Orange-04-Products-Details.html">Stonegate Collection - Powell Furniture </a><strong></strong></h3>
         <div class="rating starts0">&nbsp;</div>
       </div>
       <div class="row end">&nbsp;</div>
     </div>
   </div>
 </div>