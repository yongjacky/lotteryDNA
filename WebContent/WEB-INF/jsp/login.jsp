<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<%
    String contextPath = request.getContextPath();
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- Apple devices fullscreen -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- Apple devices fullscreen -->
<meta names="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />

<title><fmt:message key="appstore.title" /></title>

<!-- Bootstrap -->
<link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">

<!-- icheck -->
<link rel="stylesheet" href="${ctx}/css/plugins/icheck/all.css">
<!-- Theme CSS -->
<link rel="stylesheet" href="${ctx}/css/style.css">
<!-- Color CSS -->
<link rel="stylesheet" href="${ctx}/css/themes.css">


<!-- jQuery -->
<script src="${ctx}/js/jquery.min.js"></script>

<!-- Nice Scroll -->
<script src="${ctx}/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
<!-- Validation -->
<script src="${ctx}/js/plugins/validation/jquery.validate.min.js"></script>
<script src="${ctx}/js/plugins/validation/additional-methods.min.js"></script>
<!-- icheck -->
<script src="${ctx}/js/plugins/icheck/jquery.icheck.min.js"></script>
<!-- Bootstrap -->
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/eakroko.js"></script>

<!--[if lte IE 9]>
		<script src="js/plugins/placeholder/jquery.placeholder.min.js"></script>
		<script>
			$(document).ready(function() {
				$('input, textarea').placeholder();
			});
		</script>
	<![endif]-->

<c:set var="localeCode" value="${pageContext.response.locale}" />
<c:choose>
	<c:when test="${localeCode == 'ms_MY' }">
		<script src="${ctx}/js/default.validate.message.js"></script>
	</c:when>
	<c:otherwise>

	</c:otherwise>
</c:choose>

<!-- Favicon -->
<link rel="shortcut icon" href="${ctx}/img/favicon.ico" />
<!-- Apple devices Homescreen icon -->
<link rel="apple-touch-icon-precomposed"
	href="${ctx}/img/apple-touch-icon-precomposed.png" />

</head>

<body class="login theme-green" data-theme="theme-green">
	<div class="wrapper">
		<h1>
			<a href="#"><img src="${ctx}/img/logo-big.png" alt=""
				class='retina-ready' width="49" height="39">
			<fmt:message key="1gov.appstore" /></a>
		</h1>
		<div class="login-body">
			<h3>&nbsp;</h3>
			<%-- Language : <a href="?lg=ms_MY">Bahasa</a>|<a href="?lg=en_US">English</a>
			Current Locale : ${pageContext.response.locale} --%>
			<form action="<%=contextPath%>/admin/j_spring_security_check"
				method='POST' class='form-validate' id="test">
				<c:if test="${not empty param.error}">
					<div class="control-group">
						<span style="color: red;" id="errorSpan"> Your login
							attempt was not successful, try again.<br />
						<br /> Reason: <c:out
								value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />.
						</span>
					</div>
				</c:if>
				<c:if test="${not empty exception.message}">
					<div class="control-group">
						<span style="color: red;" id="errorSpan">
							${exception.message} </span>
					</div>
				</c:if>
				<div class="form-group">
					<div class="email controls">
						<input type="text" name='j_username'
							placeholder='<fmt:message key="placeholder.user.name" />'
							class='form-control' data-rule-required="true">
					</div>
				</div>
				<div class="form-group">
					<div class="pw controls">
						<input type="password" name="j_password"
							placeholder="<fmt:message key="placeholder.password" />"
							class='form-control' data-rule-required="true">
					</div>
				</div>
				<div class="submit">
					<input type="submit" value="<fmt:message key="sign.me.in" />"
						class='btn btn-primary'>
				</div>
			</form>
			<div class="forget">
				<a href="#"><span><fmt:message key="forget.password" /></span></a>
			</div>
		</div>
	</div>

</body>

</html>
