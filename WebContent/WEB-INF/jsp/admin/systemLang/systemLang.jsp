
<%@ include file="../../common/taglibs.jsp"%>
<borneo:override name="content">
	<div id="main">
		<div class="container-fluid" style="width:100%;">
			<div class="page-header">
				<div class="pull-left">
					<h1>
						<fmt:message key="SystemLang" />
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
								<fmt:message key="SystemLang.list" />

							</h3>
						</div>
						<div class="box-content nopadding">
							<table id="table1"
								class="table table-hover table-nomargin table-bordered dataTable">
								<thead>
									<tr class='thefilter'>
										<th><fmt:message key="SystemLang.code" /></th>
										<th><fmt:message key="SystemLang.name" /></th>
										<th><fmt:message key="SystemLang.defaultLang" /></th>
										<th><fmt:message key="modifiedDate" /></th>
										<th><fmt:message key="modifiedBy" /></th>

										<th></th>
									</tr>

								</thead>
								<tbody>
									<c:forEach var="item" varStatus="status"
										items="${page_list_object}">
										<tr>
											<td><c:out value='${item.code}' />&nbsp;</td>
											<td><c:out value='${item.name}' />&nbsp;</td>
											<td><c:out value='${item.defaultLang}' />&nbsp;</td>
											<td><c:out value='${item.modifiedDateString}' />&nbsp;</td>
											<td><c:out value='${item.modifiedBy}' />&nbsp;</td>

											<td><a href="${ctx}/admin/systemLang/${item.id}/edit">
													<button class="btn btn-inverse">
														<fmt:message key="edit" />
													</button>
											</a> <a href="${ctx}/admin/systemLang/${item.id}/delete"
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
								onclick="location.href='${ctx}/admin/systemLang/add';">
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp"%>