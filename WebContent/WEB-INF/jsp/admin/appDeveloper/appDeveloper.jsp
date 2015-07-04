<%@ include file="../../common/taglibs.jsp"%>
<borneo:override name="content">

	<div id="main">
		<div class="container-fluid" style="width: 100%">
			<div class="page-header">
				<div class="pull-left">
					<h1>
						<fmt:message key="AppDeveloper" />
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
								<fmt:message key="AppDeveloper.list" />
							</h3>
						</div>
						<div class="box-content nopadding">
							<table id="table1"
								class="table table-hover table-nomargin dataTable table-bordered"
								width="100%">
								<thead>
									<tr class="thefilter">
										<th><fmt:message key="AppDeveloper.sellerName" /></th>
										<th><fmt:message key="AppDeveloper.agencyName" /></th>
										<th><fmt:message key="createdBy" /></th>
										<th><fmt:message key="createdDate" /></th>
										<th><fmt:message key="modifiedBy" /></th>
										<th><fmt:message key="modifiedDate" /></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" varStatus="status"
										items="${page_list_object}">
										<tr>
											<td><a href="${ctx}/admin/appDeveloper/${item.id}/edit">
													<c:out value='${item.sellerName}' />
											</a></td>
											<td><c:out value='${item.agencyName}' />&nbsp;</td>
											<td><c:out value='${item.createdBy}' />&nbsp;</td>
											<td><c:out value='${item.createdDateString}' />&nbsp;</td>
											<td><c:out value='${item.modifiedBy}' />&nbsp;</td>
											<td><c:out value='${item.modifiedDateString}' />&nbsp;</td>
											<td><a
												href="${ctx}/admin/appDeveloper/${item.id}/delete"
												onclick="var bl=confirm('<fmt:message key="delete.confirm"/>'); if(bl){return true;} else {return false;}">
													<button class="btn btn-inverse">
														<fmt:message key="delete" />
													</button>
											</a></td>
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
						onclick="location.href='${ctx}/admin/appDeveloper/add';">
				</div>
			</div>
		</div>
	</div>

</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp"%>