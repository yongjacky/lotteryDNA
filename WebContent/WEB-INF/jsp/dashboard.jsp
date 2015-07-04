<%@ include file="common/taglibs.jsp"%>

<borneo:override name="content">
<div id="main">
			<div class="container-fluid">
				<div class="page-header">
					<div class="pull-left">
						<h1><c:out value="${title }" /></h1>
					</div>
				</div>
			
			<div>
        <fmt:message key="button.locale"/>:
            <c:url var="englishLocaleUrl" value="/secure/dashboard.html">
                <c:param name="locale" value="" />
            </c:url>
            <c:url var="spanishLocaleUrl" value="/secure/dashboard.html">
                <c:param name="locale" value="zh_CN" />
</c:url>
            <a href='<c:out value="${englishLocaleUrl}"/>'><fmt:message key="locale.english"/></a>
            <a href='<c:out value="${spanishLocaleUrl}"/>'><fmt:message key="locale.spanish"/></a>
    </div>
			   
			   <!-- content -->
			   <div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-table"></i>
									Column filter/search
								</h3>
							</div>
							<div class="box-content nopadding">			
			    				<table class="table table-hover table-nomargin table-bordered dataTable-columnfilter dataTable" >
				  				<thead>
					  				<tr class='thefilter'>
										<th><fmt:message key="user.username" /></th>
										<th><fmt:message key="created.date" /></th>
										<th><fmt:message key="modified.date" /></th>
									</tr>
									<tr>	
										<th><fmt:message key="user.username" /></th>						
										<th><fmt:message key="created.date" /></th>
										<th><fmt:message key="modified.date" /></th>
									</tr>
		  						</thead>
				  				<tbody> 
				  					
					       			<c:forEach var="user" items="${ listData}" >
					     			<tr>
					     				<td><a href="${ctx}/secure/dashboard/<c:out value="${user.id}"/>/edit.html" ><c:out value="${user.username}" /></a></td>
					     				<td><c:out value="${user.createdDate}" /></td>
					     				<td><c:out value="${user.modifiedDate}" /></td>
			
					     			</tr>
					     			</c:forEach>
				
				 				</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			 
			
			</div>
</div>
</borneo:override>
<%@ include file="layout/flat_header_fixed_layout.jsp"%>