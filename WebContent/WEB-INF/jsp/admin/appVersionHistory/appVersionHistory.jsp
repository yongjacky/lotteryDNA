<%@ include file="../../common/taglibs.jsp"%>
<borneo:override name="content">

	<div id="main">
		<div class="container-fluid" style="width: 100%">
			<div class="page-header">
				<div class="pull-left">
					<h1>
						<fmt:message key="AppVersionHistory" />
					</h1>
				</div>
			</div>

			<!-- content -->
			<div class="row">
				<div class="col-sm-12">
					<div class="box box-color box-bordered">
						<div class="box-title">
							<h3>
								<i class="fa fa-table"></i>
								<fmt:message key="AppVersionHistory.list" />
							</h3>
						</div>
						<div class="box-content nopadding">
							<table id="table1"
								class="table table-hover table-nomargin dataTable table-bordered"
								width="100%">
								<thead>
									<tr class="thefilter">
										<th><fmt:message key="AppVersionHistory.appInfoId" /></th>
										<th><fmt:message key="AppVersionHistory.appOSPlatformId" /></th>
										<th><fmt:message key="AppVersionHistory.appVersion" /></th>
										<th><fmt:message key="AppVersionHistory.defaultLangId" /></th>
										<th><fmt:message key="AppVersionHistory.otherLang" /></th>
										<th><fmt:message key="AppVersionHistory.downloads" /></th>
										<th><fmt:message key="modifiedBy" /></th>
										<th><fmt:message key="modifiedDate" /></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" varStatus="status"
										items="${page_list_object}">
										<tr>
											<td><a
												href="${ctx}/admin/appVersionHistory/${item.id}/edit"> <c:out
														value='${item.appInfo.appId}' />
											</a></td>
											<td><c:out value='${item.appOSPlatform.name}' />&nbsp;</td>
											<td><c:out value='${item.appVersion}' />&nbsp;</td>
											<td><c:out value='${item.systemLang.name}' />&nbsp;</td>
											<td><c:out value='${item.otherLang}' />&nbsp;</td>
											<td><c:out value='${item.downloads}' />&nbsp;</td>
											<td><c:out value='${item.modifiedBy}' />&nbsp;</td>
											<td><c:out value='${item.modifiedDateString}' />&nbsp;</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="form-actions">
					<input type="submit" class='btn btn-primary'
						value="<fmt:message key="create.new" />"
						onclick="location.href='${ctx}/admin/appVersionHistory/add';">
				</div>
			</div>
		</div>
	</div>

</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp"%>