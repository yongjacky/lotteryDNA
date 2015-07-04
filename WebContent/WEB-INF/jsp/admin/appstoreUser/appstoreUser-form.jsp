<%@ include file="../../common/taglibs.jsp"%>
<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/appstoreUser/save"
	modelAttribute="appstoreUser">
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.apiKey" /></label>
		<div class="col-xs-4">
			<form:input path="apiKey" cssClass="form-control "
				data-rule-required="true" data-rule-maxlength="50" />
		</div>
	</div>
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.loginId" /></label>
		<div class="col-xs-4">
			<form:input path="loginId" cssClass="form-control "
				data-rule-required="true" data-rule-maxlength="50" />
		</div>
	</div>
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.password" /></label>
		<div class="col-xs-4">
			<form:input path="password" id="password" name="password" cssClass="form-control"
				data-rule-maxlength="15" />
		</div>
	</div>
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.email" /></label>
		<div class="col-xs-4">
			<form:input path="email" cssClass="form-control "
				data-rule-required="true" data-rule-maxlength="50"
				data-rule-email="true" />
		</div>
	</div>
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.displayName" /></label>
		<div class="col-xs-4">
			<form:input path="displayName" cssClass="form-control "
				data-rule-required="true" data-rule-maxlength="50" />
		</div>
	</div>
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.loginType" /></label>
		<div class="col-xs-4">
			<form:input path="loginType" cssClass="form-control "
				data-rule-required="true" data-rule-maxlength="50" />
		</div>
	</div>
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="AppstoreUser.loginToken" /></label>
		<div class="col-xs-4">
			<form:input path="loginToken" cssClass="form-control "
				data-rule-required="true" data-rule-maxlength="50" />
		</div>
	</div>

	<div class="form-actions col-sm-offset-2 col-xs-4">

		<button type="submit" class="btn btn-primary">
			<fmt:message key="action.submit" />
		</button>
		<button type="button" class="btn"
			onclick="location.href='${ctx}/admin/appstoreUser';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>
<script>
	$(function() {
		var id = '${appstoreUser.id}';
		if(id!=null) {
			$('#password').prop('data-rule-required', false);
		}else{
			$('#password').prop('data-rule-required', true);
		}
		
	});
</script>