<%@ include file="../../common/taglibs.jsp"%>


<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/apiAuth/save"
	 modelAttribute="apiAuth">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="ApiAuth.apiName" /></label>
		<div class="col-xs-4">
			<form:input path="apiName" cssClass="form-control "
				data-rule-required="ture" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="ApiAuth.authHeader" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:input path="authHeader" cssClass="form-control "
				data-rule-required="ture" />
			</div>
		</div>
	</div>
	
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="ApiAuth.authValue" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:input path="authValue" cssClass="form-control "
				data-rule-required="ture" />
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="ApiAuth.enable" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="enable" class="icheck-me" data-skin="square"
					data-color="blue" />
			</div>
		</div>
	</div>
	

	<div class="form-actions col-sm-offset-2 col-xs-4">

		<button type="submit" class="btn btn-primary">
			<fmt:message key="action.submit" />
		</button>
		<button type="button" class="btn"
			onclick="location.href='${ctx}/admin/apiAuth';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>