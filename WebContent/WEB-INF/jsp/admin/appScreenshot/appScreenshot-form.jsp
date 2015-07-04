<%@ include file="../../common/taglibs.jsp"%>

<script type="text/javascript">
	$(function() {
		var imageFile = '${appScreenshot.image}';
		if (imageFile != null && imageFile.length > 0) {
			$("#thumbfile").attr("data-rule-required", false);
		}
	});
</script>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/appScreenshot/save"
	enctype="multipart/form-data" modelAttribute="appScreenshot">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppScreenshotType.appScreenshotTypeId" /></label>
		<div class="col-xs-4">
			<form:select items="${appScreenshotTypes}"
				itemLabel="formfactorType" data-rule-required="true"
				itemValue="id" path="appScreenshotType.id"
				cssClass="chosen-select form-control" />
		</div>
	</div>


	<c:if test="${appScreenshot.id!=null}">
		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="AppScreenshot.image" /></label>
			<div class="col-sm-10">
				<img
					src="${ctx}/admin/appScreenshot/getAppScreenshotImage/${appScreenshot.id}"
					style="width: 200px; height: 150px; margin-bottom: 4px" />
				<div>
					<span class="btn btn-default btn-file"> <span
						class="fileinput-new">Select image</span> <form:input
							id="thumbfile" path="thumbnailFile" type="file"
							data-rule-required="true" />
					</span>
				</div>
			</div>
		</div>
	</c:if>


	<c:if test="${appScreenshot.id==null}">
		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="AppScreenshot.image" /></label>
			<div class="col-sm-10">
				<div class="fileinput fileinput-new" data-provides="fileinput">
					<div class="fileinput-preview thumbnail" data-trigger="fileinput"
						style="width: 200px; height: 150px;"></div>
					<div>
						<span class="btn btn-default btn-file"> <span
							class="fileinput-new">Select image</span> <span
							class="fileinput-exists">Change</span> <form:input id="thumbfile"
								path="thumbnailFile" type="file" data-rule-required="true" />
						</span> <a href="#" class="btn btn-default fileinput-exists"
							data-dismiss="fileinput">Remove</a>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${appScreenshot.id != null}">
		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="createdBy" /></label>
			<div class="col-xs-4">
				<form:input path="createdBy" cssClass="form-control "
					readonly="true" />
			</div>
		</div>

		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="createdDate" /></label>
			<div class="col-xs-4">
				<form:input path="createdDateString" cssClass="form-control "
					readonly="true" />
			</div>
		</div>

		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="modifiedBy" /></label>
			<div class="col-xs-4">
				<form:input path="modifiedBy" cssClass="form-control "
					readonly="true" />
			</div>
		</div>

		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="modifiedDate" /></label>
			<div class="col-xs-4">
				<form:input path="modifiedDateString" cssClass="form-control "
					readonly="true" />
			</div>
		</div>
	</c:if>

	<div class="form-actions col-sm-offset-2 col-xs-4">

		<button type="submit" class="btn btn-primary">
			<fmt:message key="action.submit" />
		</button>
		<button type="button" class="btn"
			onclick="location.href='${ctx}/admin/appScreenshot';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>