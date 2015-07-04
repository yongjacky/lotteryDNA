<%@ include file="../../common/taglibs.jsp"%>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/appVersionHistory/save"
	modelAttribute="appVersionHistory">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.appInfoId" /></label>
		<div class="col-xs-4">
			<form:select items="${appInfos}" itemLabel="appId" itemValue="id"
				path="appInfo.id" cssClass="chosen-select form-control"
				readonly="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.appOSPlatformId" /></label>
		<div class="col-xs-4">
			<form:select items="${appOSPlatforms}" itemLabel="name"
				itemValue="id" path="appOSPlatform.id"
				cssClass="chosen-select form-control" readonly="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.urlLink" /></label>
		<div class="col-xs-4">
			<form:input path="urlLink" cssClass="form-control " readonly="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.appVersion" /></label>
		<div class="col-xs-4">
			<form:input path="appVersion" cssClass="form-control "
				readonly="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.whatsNew" /></label>
		<div class="col-xs-4">
			<form:textarea rows="5" path="whatsNew" cssClass="form-control"
				readonly="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.defaultLangId" /></label>
		<div class="col-xs-4">
			<form:select items="${systemLangs}" itemLabel="name" itemValue="id"
				path="systemLang.id" cssClass="chosen-select form-control"
				readonly="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.otherLang" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="otherLang" class="icheck-me" data-skin="square"
					data-color="blue" readonly="true" />
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppVersionHistory.downloads" /></label>
		<div class="col-xs-4">
			<form:input path="downloads" cssClass="form-control" readonly="true" />
		</div>
	</div>

	<c:if test="${appVersionHistory.id != null}">
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
		<button type="button" class="btn"
			onclick="location.href='${ctx}/admin/appVersionHistory';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>