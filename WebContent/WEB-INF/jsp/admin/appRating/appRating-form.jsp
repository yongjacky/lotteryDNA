<%@ include file="../../common/taglibs.jsp"%>
<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/appRating/save"
	modelAttribute="appRating">
	<div class="form-group">
		<label for="appInfoId" class="control-label col-sm-2"><fmt:message
				key="AppRating.appInfoId" /></label>
		<div class="col-xs-4">
			<form:select items="${appInfoList}" itemLabel="appName" data-rule-required="true"
                     itemValue="id" path="appInfo.id" cssClass="chosen-select form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="appstoreUserId" class="control-label col-sm-2"><fmt:message
				key="AppRating.appstoreUserId" /></label>
		<div class="col-xs-4">
			<form:input path="appstoreUser.id" id="appstoreUserId"
				name="appstoreUserId" cssClass="form-control "
				data-rule-required='true' />
		</div>
	</div>
	<div class="form-group">
		<label for="appVersion" class="control-label col-sm-2"><fmt:message
				key="AppRating.appVersion" /></label>
		<div class="col-xs-4">
			<form:input path="appVersion" id="appVersion" name="appVersion"
				cssClass="form-control " data-rule-required='true' />
		</div>
	</div>
	<div class="form-group">
		<label for="starLevel" class="control-label col-sm-2"><fmt:message
				key="AppRating.starLevel" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="starLevel" id="starLevel" name="starLevel" />
				class='icheck-me' data-skin="square" data-color="green" /> <label
					class="inline"><fmt:message key="enabled" /></label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="review" class="control-label col-sm-2"><fmt:message
				key="AppRating.review" /></label>
		<div class="col-xs-4">
			<form:input path="review" id="review" name="review"
				cssClass="form-control " data-rule-required='true' />
		</div>
	</div>
	<div class="form-actions col-sm-offset-2 col-xs-4">

		<button type="submit" class="btn btn-primary">
			<fmt:message key="action.submit" />
		</button>
		<button type="button" class="btn"
			onclick="location.href='${ctx}/admin/appRating';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>
