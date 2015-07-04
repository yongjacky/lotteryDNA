<%@ include file="../../common/taglibs.jsp"%>

<script
	src="${pageContext.request.contextPath}/js/ckeditor.customized.basic.js"></script>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/faqItem/save"
	modelAttribute="faqItem">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqItem.question" /></label>
		<div class="col-xs-4">
			<form:input path="question" cssClass="form-control "
				data-rule-required="ture" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqItem.faqCateId" /></label>
		<div class="col-xs-4">
			<form:select items="${faqCates}" itemLabel="name"
				data-rule-required="true" itemValue="id" path="faqCate.id"
				cssClass="chosen-select form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqItem.enable" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="enable" class="icheck-me" data-skin="square"
					data-color="blue" />
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqItem.defaultLangId" /></label>
		<div class="col-xs-4">
			<form:select items="${systemLangs}" itemLabel="name"
				data-rule-required="true" itemValue="id" path="systemLang.id"
				cssClass="chosen-select form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqItem.otherLang" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="otherLang" class="icheck-me" data-skin="square"
					data-color="blue" />
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqItem.answer" /></label>
		<div class="col-xs-4">
			<form:textarea path="answer" cssClass="ckeditor form-control"
				data-rule-required="ture" />
		</div>
	</div>

	<c:if test="${faqItem.id != null}">
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
			onclick="location.href='${ctx}/admin/faqItem';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>