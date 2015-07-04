<%@ include file="../../common/taglibs.jsp"%>

<script type="text/javascript">
	$(function() {
		var iconFile = '${faqCate.icon}';
		if (iconFile != null && iconFile.length > 0) {
			$("#thumbfile").attr("data-rule-required", false);
		}
	});
</script>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/faqCate/save"
	enctype="multipart/form-data" modelAttribute="faqCate">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqCate.name" /></label>
		<div class="col-xs-4">
			<form:input path="name" cssClass="form-control "
				data-rule-required="ture" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqCate.enable" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="enable" class="icheck-me" data-skin="square"
					data-color="blue" />
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqCate.defaultLangId" /></label>
		<div class="col-xs-4">
			<form:select items="${systemLangs}" itemLabel="name"
				data-rule-required="true" itemValue="id" path="systemLang.id"
				cssClass="chosen-select form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="FaqCate.otherLang" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="otherLang" class="icheck-me" data-skin="square"
					data-color="blue" />
			</div>
		</div>
	</div>

	<c:if test="${faqCate.id!=null}">
		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="FaqCate.icon" /></label>
			<div class="col-sm-10">
				<img src="${ctx}/admin/faqCate/getFaqCateIcon/${faqCate.id}"
					style="width: 200px; height: 150px; margin-bottom: 4px" />
				<div>
					<span class="btn btn-default btn-file"> <span
						class="fileinput-new">Select icon</span> <form:input
							id="thumbfile" path="thumbnailFile" type="file"
							data-rule-required="true" />
					</span>
				</div>
			</div>
		</div>
	</c:if>


	<c:if test="${faqCate.id==null}">
		<div class="form-group">
			<label for="textfield" class="control-label col-sm-2"><fmt:message
					key="FaqCate.icon" /></label>
			<div class="col-sm-10">
				<div class="fileinput fileinput-new" data-provides="fileinput">
					<div class="fileinput-preview thumbnail" data-trigger="fileinput"
						style="width: 200px; height: 150px;"></div>
					<div>
						<span class="btn btn-default btn-file"> <span
							class="fileinput-new">Select icon</span> <span
							class="fileinput-exists">Change</span> <form:input id="thumbfile"
								path="thumbnailFile" type="file" data-rule-required="true" />
						</span> <a href="#" class="btn btn-default fileinput-exists"
							data-dismiss="fileinput">Remove</a>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${faqCate.id != null}">
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
			onclick="location.href='${ctx}/admin/faqCate';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>