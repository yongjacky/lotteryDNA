<%@ include file="../../common/taglibs.jsp"%>
<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/systemLang/save"
	modelAttribute="systemLang">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="SystemLang.code" /></label>
		<div class="col-xs-4">
			<form:input path="code" cssClass="form-control "
				data-rule-required="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="SystemLang.name" /></label>
		<div class="col-xs-4">
			<form:input path="name" cssClass="form-control "
				data-rule-required="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="SystemLang.defaultLang" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="defaultLang" class="icheck-me"
					data-skin="square" data-color="green" />
				<label class="inline"><fmt:message key="enabled" /></label>
			</div>
		</div>


	</div>
	<div class="form-actions col-sm-offset-2 col-xs-4">

		<button type="submit" class="btn btn-primary"><fmt:message key="action.submit" /></button>
		<button type="button" class="btn" onclick="location.href='${ctx}/admin/systemLang';"><fmt:message key="cancel" /></button>
	</div>
</form:form>
