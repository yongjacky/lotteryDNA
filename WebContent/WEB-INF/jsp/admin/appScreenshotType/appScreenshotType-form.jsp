<%@ include file="../../common/taglibs.jsp"%>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/appScreenshotType/save"
	modelAttribute="appScreenshotType">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppScreenshotType.appInfoId" /></label>
		<div class="col-xs-4">
			<form:select items="${appInfos}" itemLabel="appName"
				data-rule-required="true" itemValue="id" path="appInfo.id"
				cssClass="chosen-select form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppScreenshotType.formfactorType" /></label>
		<div class="col-xs-4">
			<form:input path="formfactorType" cssClass="form-control "
				data-rule-required="ture" />
		</div>
	</div>

	<c:if test="${appScreenshotType.id != null}">
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
			onclick="location.href='${ctx}/admin/appScreenshotType';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>