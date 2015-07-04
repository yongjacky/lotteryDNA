<%@ include file="../../common/taglibs.jsp"%>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/appDeveloper/save"
	modelAttribute="appDeveloper">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppDeveloper.sellerName" /></label>
		<div class="col-xs-4">
			<form:input path="sellerName" cssClass="form-control "
				data-rule-required="ture" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppDeveloper.agencyName" /></label>
		<div class="col-xs-4">
			<form:input path="agencyName" cssClass="form-control "
				data-rule-required="ture" />
		</div>
	</div>

	<c:if test="${appDeveloper.id != null}">
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
			onclick="location.href='${ctx}/admin/appDeveloper';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>