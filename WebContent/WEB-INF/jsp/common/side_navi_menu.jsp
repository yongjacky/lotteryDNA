<%@ include file="taglibs.jsp"%>
<div id="left" class="ui-sortable ui-resizable sidebar-fixed hasScroll">
	<security:authorize ifAllGranted="ROLE_ADMIN">
		<div class="subnav">
			<div class="subnav-title">
				<a href="#" class='toggle-subnav'><i class="fa fa-angle-down"></i><span><fmt:message
							key="menu.sys.admin" /></span></a>
			</div>
			<ul class="subnav-menu">
				<%@ include file="system.admin.menus.list.jsp"%>
			</ul>
		</div>



	</security:authorize>

	<%-- <security:authorize  ifAnyGranted="ROLE_OPR_ADMIN,ROLE_OPR_MANAGER">
	<div class="subnav">
		<div class="subnav-title">
			<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span><fmt:message
						key="menu.opr.admin" /></span></a>
		</div>
		<ul class="subnav-menu">
		    <%@ include file="operator.admin.menus.list.jsp"%>
		</ul>
	</div>
	<div class="subnav">
		<div class="subnav-title">
			<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span><fmt:message
						key="menu.opr.rpt" /></span></a>
		</div>
		<ul class="subnav-menu">
			
		</ul>
	</div>
	</security:authorize>  --%>
</div>