<%@ include file="taglibs.jsp"%>
<%
String mod=request.getParameter("module");
%>

<!--  -->
<div id="navigation" >
		<div class="container-fluid" class="navbar-fixed-top">
			<a href="#" id="brand">1Gov App Store</a>
			
			<div class="user">
			    <div class="dropdown">
					<a href="#" class='dropdown-toggle' data-toggle="dropdown">${userId}</a>
					<ul class="dropdown-menu pull-right">
						<li>
							<a href="${ctx}/secure/back/profile/edit.html">Edit profile</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/j_spring_security_logout">Sign out</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>