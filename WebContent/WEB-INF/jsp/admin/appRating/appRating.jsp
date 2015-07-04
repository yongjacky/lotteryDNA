
<%@ include file="../../common/taglibs.jsp"%>
<borneo:override name="content">
	<div id="main">
		<div class="container-fluid" style="width:100%;">
			<div class="page-header">
				<div class="pull-left">
					<h1>
						<fmt:message key="AppRating" />
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
								<fmt:message key="AppRating.list" />

							</h3>
						</div>
						<div class="box-content nopadding">
							<table id="table1"
								class="table table-hover table-nomargin table-bordered dataTable">
								<thead>
									<tr class='thefilter'>
										<th><fmt:message key="AppRating.appInfoId" /></th>
										<th><fmt:message key="AppRating.appstoreUserId" /></th>
										<th><fmt:message key="AppRating.appVersion" /></th>
										<th><fmt:message key="AppRating.starLevel" /></th>
										<th><fmt:message key="AppRating.review" /></th>
										<th><fmt:message key="modifiedDate" /></th>
										<th><fmt:message key="modifiedBy" /></th>
										<th></th>
									</tr>

								</thead>
								<tbody>
									<c:forEach var="item" varStatus="status"
										items="${page_list_object}">
										<tr>
											<td><a href="${ctx}/admin/appRating/${item.id}/edit"><c:out value='${item.appInfoId}' /></a></td>
											<td><c:out value='${item.appstoreUserId}' /></td>
											<td><c:out value='${item.appVersion}' /></td>
											<td><c:out value='${item.starLevel}' /></td>
											<td><c:out value='${item.reviewInShort}' /></td>
											<td><c:out value='${item.modifiedDateString}' /></td>
											<td><c:out value='${item.modifiedBy}' /></td>
											<td><a href="${ctx}/admin/appRating/${item.id}/delete"
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

						<div class="form-actions">
							<input type="submit" class='btn btn-primary'
								value="<fmt:message key="create.new" />"
								onclick="location.href='${ctx}/admin/appRating/add';">
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp"%>