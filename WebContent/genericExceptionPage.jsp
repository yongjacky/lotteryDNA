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
	
	<title>ERROR</title>
  
    <c:import url="/WEB-INF/jsp/common/css_js.jsp"></c:import>
  

</head>

   <body class='error theme-green' data-theme="theme-green">
      <div class="wrapper">
		<div class="code">
		  <table border="0">
		      <td><span><fmt:message key="system.error" /></span></td>
		      <td><i class="icon-warning-sign"></i></td>
		  </table>
		</div>
		<div class="desc">${exception.message}</div>
		<div class="buttons">
			<div class="pull-left"><a href="javascript:goBack();" class="btn"><i class="icon-arrow-left"></i> Back</a></div>
		</div>
	  </div>
	</body>
</html>

<script>
function goBack()
  {
  window.history.back()
  }
</script>
