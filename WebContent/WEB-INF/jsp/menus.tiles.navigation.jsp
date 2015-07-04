<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>

<borneo:override name="content">
<div id="main">
			<div class="container-fluid">
				<div class="page-header">
					<div class="pull-left">
						<h1>Menus Tiles Navigation</h1>
					</div>
				</div>
			
			   <!-- content -->
			   <div class="row-fluid">
					<div class="span12">
					    <ul class="tiles">
					    	<li class="blue long">
								<a href="#"><span class='nopadding'><h5>Announcement</h5><p>Check the new Flat theme on themeforest. Incredible fast and easy to use.</p></span><span class='name'><span class="right">1min ago</span></span></a>
							</li>
							<c:forEach var="branch" items="${branchListData}" >
							  <li class="image">
							    <a href="${ctx}/secure/back/branch/${branch.branchId}/selectedBranch.html"><img alt="${branch.branchLogo}" src="${ctx}/secure/back/branch/<c:out value="${branch.branchId}"/>/logo.html" width="100" height="100"><span class='name'><c:out value="${branch.branchName}" /></span></a>
							  </li> 
							</c:forEach>
							<li class="blue">
								<a href="${ctx}/secure/back/corp.html"><span><i class="icon-cogs"></i></span><span class='name'><fmt:message key="title.system.admin" /></span></a>
							</li>
							<li class="orange">
								<a href="<%=request.getContextPath()%>/j_spring_security_logout""><span><i class="icon-signout"></i></span><span class='name'><fmt:message key="sign.out" /></span></a>
							</li>
					    </ul>
					</div>
				</div>	
				
			
			</div>
</div>
</borneo:override>
<%@ include file="layout/flat_header_fixed_layout.jsp"%>