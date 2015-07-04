<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- Apple devices fullscreen -->
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<!-- Apple devices fullscreen -->
	<meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
	
	<title>${title}</title>
  
    <c:import url="/WEB-INF/jsp/common/css_js.jsp"></c:import>
  

</head>

<body >
   
	<!-- Top Menu Navigation -->
	<c:import url="/WEB-INF/jsp/common/top_navi_without_menu.jsp"></c:import>
	<!-- End Top Menu Navigation -->
	
	  <div class="container-fluid nav-fixed" id="content">
	 
	    <borneo:block name="content" />
		
	  </div>
		
	</body>
</html>

