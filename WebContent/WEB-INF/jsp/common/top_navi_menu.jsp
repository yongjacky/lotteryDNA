<%@ include file="taglibs.jsp"%>


<div id="navigation" class="navbar-fixed-top">
	<div class="container-fluid">
		<a href="#" id="brand"><fmt:message key="1gov.appstore" /></a> <a
			href="#" class="toggle-nav" rel="tooltip" data-placement="bottom"
			title="Toggle navigation"><i class="icon-reorder"></i></a>
		<ul class='main-nav'>
			<li class='active'></li>
			<security:authorize ifAllGranted="ROLE_ADMIN">
				<li><a class="dropdown-toggle" href="#" data-toggle="dropdown">
						<span><fmt:message key="top.system.admin" /></span> <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<%@ include file="system.admin.menus.list.jsp"%>
					</ul></li>
			</security:authorize>

		</ul>
		<div class="user">
			<ul class="icon-nav">
				<li class='dropdown' id='siteLanguage'><a href="?lg=ms_MY"> <img
						src="${ctx}/img/demo/flags/my.gif" alt=""> <span>BM</span>
				</a></li>
				<li class='dropdown' id='siteLanguage'><a href="?lg=en_US"> <img
						src="${ctx}/img/demo/flags/us.gif" alt=""> <span>EN</span>
				</a></li>
			</ul>

			<div class="dropdown">
				<a href="#" class='dropdown-toggle' data-toggle="dropdown"><security:authentication
						property="name" /> <img src="img/demo/user-avatar.jpg" alt=""></a>
				<ul class="dropdown-menu pull-right">

					<li><a href="${ctx}/j_spring_security_logout"><fmt:message
								key="sign.out" /></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>